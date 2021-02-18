using System.Text.Json.Serialization;

namespace ServerAppDemo.Models
{
    public class SerialResponse
    {
        [JsonPropertyName("fan_a")]
        public Fan FanA { get; set; }

        [JsonPropertyName("fan_b")]
        public Fan FanB { get; set; }

        [JsonPropertyName("temp_water")]
        public int WaterTemp { get; set; }
    }
}