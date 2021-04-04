using System;
using System.Collections.Generic;
using System.Linq;
using LibreHardwareMonitor.Hardware;

namespace flowcontrol_monitor
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
    class Program
    {
        static void Main(string[] args)
        {
            var response = new List<string>();
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
                response.Add(gpu.Sensors.Where(x => x.Name == "GPU Core")
                                              .Where(x => x.SensorType == SensorType.Temperature).FirstOrDefault().Value
                                              ?.ToString("0"));
                response.Add(gpu.Sensors.Where(x => x.Name == "GPU Core")
                                              .Where(x => x.SensorType == SensorType.Clock).FirstOrDefault().Value
                                              ?.ToString("0"));
            }
            if(computer.Hardware.Any(x => x.HardwareType == HardwareType.Cpu))
            {
                var cpu = computer.Hardware.FirstOrDefault(x => x.HardwareType == HardwareType.Cpu);
                response.Add(cpu.Sensors.Where(x => x.Name == "Core (Tctl/Tdie)")
                                              .Where(x => x.SensorType == SensorType.Temperature).FirstOrDefault().Value
                                              ?.ToString("0"));
            }
            Console.WriteLine(string.Join(",",response));
        }
    }
}
