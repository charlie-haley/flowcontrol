package cmd

import (
	"fmt"
	"log"
	"strings"

	"github.com/spf13/cobra"
	"github.com/tarm/serial"
)

var (
	toggle bool
)

// setCmd represents the set command
var setCmd = &cobra.Command{
	Use:     "set",
	Aliases: []string{"g"},
	Short:   "Set the state of a given fan.",
	Long:    `Set the state of a given fan.`,
	Run: func(cmd *cobra.Command, args []string) {
		if args[0] == "a" || args[0] == "b" {
			auto, err := cmd.Flags().GetBool("auto")
			serialCmd := fmt.Sprintf("X%v%v\n", strings.ToUpper(args[0]), toint(auto))
			setState(serialCmd)

			speed, errS := cmd.Flags().GetString("speed")
			serialCmd = fmt.Sprintf("%v%v\n", strings.ToUpper(args[0]), speed)
			setState(serialCmd)

			if err == nil && errS == nil {
				print("Success!\n")
			}

			return
		}

		print("Must select a fan and the value you'd like to update, e.g \n")
		print("flowctl set [fan] --auto=false -s 100\n")
	},
}

func setState(input string) {
	c := &serial.Config{Name: "COM13", Baud: 9600}
	s, err := serial.OpenPort(c)

	n, err := s.Write([]byte(input))
	if err != nil {
		log.Fatal(err)
		log.Fatal(n)
	}
	s.Close()
}

//Is there a nicer way to do this?
func toint(boolean bool) int {
	if boolean {
		return 1
	} else {
		return 0
	}
}

func init() {
	rootCmd.AddCommand(setCmd)
	setCmd.Flags().BoolP("auto", "a", true, "Auto mode for fan")
	setCmd.Flags().StringP("speed", "s", "true", "Fan speed")
}
