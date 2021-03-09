using System.Text.Json.Serialization;

namespace ServerAppDemo.Models
{
    public class Fan
    {
        public string FanName { get; set; }
        [JsonPropertyName("speed")]
        public int Speed { get; set; }
        [JsonPropertyName("auto")]
        public int Auto { get; set; }
    }
}