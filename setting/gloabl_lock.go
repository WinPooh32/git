// Copyright 2024 The Gitea Authors. All rights reserved.
// SPDX-License-Identifier: MIT

package setting

import (
	"github.com/WinPooh32/git/log"
)

// GlobalLock represents configuration of global lock
var GlobalLock = struct {
	ServiceType    string
	ServiceConnStr string
}{
	ServiceType: "memory",
}

func loadGlobalLockFrom(rootCfg ConfigProvider) {
	sec := rootCfg.Section("global_lock")
	GlobalLock.ServiceType = sec.Key("SERVICE_TYPE").MustString("memory")
	switch GlobalLock.ServiceType {
	case "memory":
	default:
		log.Fatal("Unknown sync lock service type: %s", GlobalLock.ServiceType)
	}
}
