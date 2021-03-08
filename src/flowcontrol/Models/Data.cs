using System.Collections.Generic;

namespace ServerAppDemo.Models
{
    public class Data
    {
        public string GpuTemp { get; set; }
        public string CpuTemp { get; set; }
        public string WaterTemp { get; set; }
        public string GpuClock { get; set; }
        public List<Fan> Fans { get; set; }
    }
}