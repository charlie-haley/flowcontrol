package cmd

import (
	"bufio"
	"encoding/json"
	"fmt"
	"log"

	"github.com/spf13/cobra"
	"github.com/spf13/viper"
	"github.com/tarm/serial"
)

//State TODO: Move to another file
type State struct {
	FanA      Fan `json:"fan_a"`
	FanB      Fan `json:"fan_b"`
	WaterTemp int `json:"temp_water"`
}

//Fan struct
type Fan struct {
	Speed int
	Auto  int
}

// getCmd represents the get command
var getCmd = &cobra.Command{
	Use:     "get",
	Aliases: []string{"g"},
	Short:   "Return the current state of the fan controller",
	Long:    `Return the current state of the fan controller.`,
	Run: func(cmd *cobra.Command, args []string) {
		state := getState()

		print("FAN     AUTO    SPEED\n")
		print(fmt.Sprintf("%v       %t     %v \n", "A", tobool(state.FanA.Auto), state.FanA.Speed))
		print(fmt.Sprintf("%v       %t     %v \n", "B", tobool(state.FanB.Auto), state.FanB.Speed))
		print("\n")
		print("SENSOR     TEMP(C)\n")
		print(fmt.Sprintf("%v       %v\n", "Water", state.WaterTemp))
	},
}

var getTempCmd = &cobra.Command{
	Use:     "temp",
	Aliases: []string{"sensors", "t"},
	Short:   "Return a list of sensor data",
	Long:    `Return a list of sensor data.`,
	Run: func(cmd *cobra.Command, args []string) {
		state := getState()

		print("SENSOR     TEMP(C)\n")
		print(fmt.Sprintf("%v       %v\n", "Water", state.WaterTemp))
	},
}

var getFanCmd = &cobra.Command{
	Use:     "fans",
	Aliases: []string{"fan", "f"},
	Short:   "Return a list of fan data",
	Long:    `Return a list of fan data.`,
	Run: func(cmd *cobra.Command, args []string) {
		state := getState()

		print("FAN     AUTO    SPEED\n")
		print(fmt.Sprintf("%v       %t     %v \n", "A", tobool(state.FanA.Auto), state.FanA.Speed))
		print(fmt.Sprintf("%v       %t     %v \n", "B", tobool(state.FanB.Auto), state.FanB.Speed))
	},
}

func getState() State {
	var State State

	config := getConfig()
	// print(config.port)
	// print("\n")
	c := &serial.Config{Name: config.port, Baud: 9600}

	s, err := serial.OpenPort(c)
	if err != nil {
		log.Fatal(err)
	}
	text := ""
	scanner := bufio.NewScanner(s)
	for scanner.Scan() {
		text = scanner.Text()
		//Ensure json response is well formed before displaying
		if text[0] == '{' {
			json.Unmarshal([]byte(text), &State)
			return State
		}
	}
	if scanner.Err() != nil {
		log.Fatal(err)
	}
	return State
}

//Is there a nicer way to do this?
func tobool(integer int) bool {
	if integer == 1 {
		return true
	} else {
		return false
	}
}

//Configuration - Needs moving to another struct file
type Configuration struct {
	port string
}

func getConfig() Configuration {
	var configuration Configuration

	err := viper.Unmarshal(&configuration)
	if err != nil {
		fmt.Printf("Unable to decode into struct, %v", err)
	}

	return configuration
}

func init() {
	rootCmd.AddCommand(getCmd)
	getCmd.AddCommand(getTempCmd)
	getCmd.AddCommand(getFanCmd)
}
