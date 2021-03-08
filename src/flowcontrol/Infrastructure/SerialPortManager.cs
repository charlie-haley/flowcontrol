using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text.Json;
using ServerAppDemo.Models;

namespace ServerAppDemo.Infrastructure
{
    public class SerialPortManager
    {
        private static readonly Lazy<SerialPortManager> lazy =
            new Lazy<SerialPortManager>(() => new SerialPortManager());

        public static SerialPortManager Instance { get { return lazy.Value; } }
        private SerialPort _serialPort;

        public Data Data { get; set; } 
        public SerialPortManager()
        {
            _serialPort = new SerialPort("COM13", 9600);
            _serialPort.DtrEnable = true;
            _serialPort.ReceivedBytesThreshold = 10;
            _serialPort.WriteTimeout = 5000;
            _serialPort.Handshake = Handshake.None;
            _serialPort.DataReceived += OnDataReceived;

            Data = new Data();
        }

        public void Write(string cmd)
        {
            _serialPort.Write(cmd);
        }

        public void Dispose()
        {
            _serialPort.Close();
            _serialPort.Dispose();
        }

        public void Open()
        {
            if(!_serialPort.IsOpen)
            {
                _serialPort.Open();
            }
        }

        public bool IsOpen()
        {
            return _serialPort.IsOpen;
        }

        private void OnDataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            var sp = (SerialPort)sender;
            var data = sp.ReadLine();
            var teststr = data.Replace("\r", string.Empty);
            try
            {
                var serialResponseObj = JsonSerializer.Deserialize<SerialResponse>(teststr);
                Data.WaterTemp = serialResponseObj.WaterTemp.ToString();
                Data.Fans = new List<Fan>();
                //Needs tidying, logic around fan names and how that pieces into the arduino needs more though
                //Limitations with the CPU timer might mean a new microcontroller may be needed
                serialResponseObj.FanA.FanName = "A";
                serialResponseObj.FanB.FanName = "B";
                Data.Fans.Add(serialResponseObj.FanA);
                Data.Fans.Add(serialResponseObj.FanB);
            }
            catch(Exception)
            {
                //most likely badly formed json
            }
        }
    }
}