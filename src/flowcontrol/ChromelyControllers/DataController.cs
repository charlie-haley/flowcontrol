using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using Chromely;
using Chromely.Core;
using Chromely.Core.Configuration;
using Chromely.Core.Network;
using LibreHardwareMonitor.Hardware;
using ServerAppDemo.Infrastructure;
using ServerAppDemo.Models;

namespace ServerAppDemo.Controllers
{
    public class UpdateVisitor : IVisitor
    {
        public void VisitComputer(IComputer computer)
        {
            computer.Traverse(this);
        }
        public void VisitHardware(IHardware hardware)
        {
            hardware.Update();
            foreach (IHardware subHardware in hardware.SubHardware) subHardware.Accept(this);
        }
        public void VisitSensor(ISensor sensor) { }
        public void VisitParameter(IParameter parameter) { }
    }


    [ControllerProperty(Name = "DataController")]
    public class DataController : ChromelyController
    {
        private readonly IChromelyConfiguration _config;
        private readonly IChromelySerializerUtil _serializerUtil;
        public DataController(IChromelyConfiguration config, IChromelySerializerUtil serializerUtil)
        {
            _config = config;
            _serializerUtil = serializerUtil;

            RegisterRequest("/datacontroller/getdata", GetData);
            RegisterRequest("/datacontroller/postdata", SaveMovies);
            RegisterRequest("/datacontroller/postfanspeed", UpdateFanSpeed);
        }

        #region CommandAttributes

        [CommandAction(RouteKey = "/datacontroller/showdevtools")]
        public void ShowDevTools(IDictionary<string, string> queryParameters)
        {
            if (_config != null && !string.IsNullOrWhiteSpace(_config.DevToolsUrl))
            {
                BrowserLauncher.Open(_config.Platform, _config.DevToolsUrl);
            }
        }

        #endregion

        private IChromelyResponse GetData(IChromelyRequest request)
        {
            var response = SerialPortManager.Instance.Data;

            Computer computer = new Computer
            {
                IsCpuEnabled = true,
                IsGpuEnabled = true,
                IsMemoryEnabled = false,
                IsMotherboardEnabled = false,
                IsControllerEnabled = false,
                IsNetworkEnabled = false,
                IsStorageEnabled = false
            };

            computer.Open();
            computer.Accept(new UpdateVisitor());
            

            if(computer.Hardware.Any(x => x.HardwareType == HardwareType.GpuNvidia || x.HardwareType == HardwareType.GpuAmd))
            {
                var gpu = computer.Hardware.FirstOrDefault(x => x.HardwareType == HardwareType.GpuNvidia) ?? computer.Hardware.FirstOrDefault(x => x.HardwareType == HardwareType.GpuAmd);
                response.GpuTemp = gpu.Sensors.Where(x => x.Name == "GPU Core")
                                              .Where(x => x.SensorType == SensorType.Temperature).FirstOrDefault().Value
                                              ?.ToString("0");
                response.GpuClock = gpu.Sensors.Where(x => x.Name == "GPU Core")
                                              .Where(x => x.SensorType == SensorType.Clock).FirstOrDefault().Value
                                              ?.ToString("0");
            }
            if(computer.Hardware.Any(x => x.HardwareType == HardwareType.Cpu))
            {
                var cpu = computer.Hardware.FirstOrDefault(x => x.HardwareType == HardwareType.Cpu);
                response.CpuTemp = cpu.Sensors.Where(x => x.Name == "Core (Tctl/Tdie)")
                                              .Where(x => x.SensorType == SensorType.Temperature).FirstOrDefault().Value
                                              ?.ToString("0");
            }

            return new ChromelyResponse(request.Id)
            {
                Data = response
            };
        }

        private IChromelyResponse SaveMovies(IChromelyRequest request)
        {
            if (request == null)
            {
                throw new ArgumentNullException(nameof(request));
            }

            if (request.PostData == null)
            {
                throw new Exception("Post data is null or invalid.");
            }

            var response = new ChromelyResponse(request.Id);
            var postDataJson = _serializerUtil.ObjectToJson(request.PostData);

            var options = new JsonSerializerOptions();
            options.ReadCommentHandling = JsonCommentHandling.Skip;
            options.AllowTrailingCommas = true;
            var fan = JsonSerializer.Deserialize<Fan>(postDataJson, options);

            var cmd = $"X{fan.FanName}{fan.Auto}";
            SerialPortManager.Instance.Write(cmd);

            return response;
        }

        private IChromelyResponse UpdateFanSpeed(IChromelyRequest request)
        {
            if (request == null)
            {
                throw new ArgumentNullException(nameof(request));
            }

            if (request.PostData == null)
            {
                throw new Exception("Post data is null or invalid.");
            }

            var response = new ChromelyResponse(request.Id);
            var postDataJson = _serializerUtil.ObjectToJson(request.PostData);

            var options = new JsonSerializerOptions();
            options.ReadCommentHandling = JsonCommentHandling.Skip;
            options.AllowTrailingCommas = true;
            var fan = JsonSerializer.Deserialize<Fan>(postDataJson, options);

            //If auto is off update the fan speed
            if(fan.Auto == 0)
            {
                SerialPortManager.Instance.Write($"{fan.FanName}{fan.Speed}");
            }

            return response;
        }
    }
}
