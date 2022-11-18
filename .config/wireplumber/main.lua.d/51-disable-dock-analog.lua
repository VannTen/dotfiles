rule = {
  matches = {
    {
      { "device.serial", "equals", "Lenovo_ThinkPad_Thunderbolt_3_Dock_USB_Audio_000000000000" },
    },
  },
  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules,rule)
