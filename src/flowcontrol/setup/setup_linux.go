// +build linux

package setup


import (
	"syscall"
	"os/exec"
)

func SetupCmd(cmd *exec.Cmd) {
    cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
}