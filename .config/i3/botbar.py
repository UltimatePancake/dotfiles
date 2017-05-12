from i3pystatus import Status

green = "#a1c659"
yellow = "#fda331"
red = "#fb0120"
blue = "#6fb3d2"

status = Status()

status.register("clock",
    format = "%a %F %T W%V"
)

status.register("battery",
    format = "{status} {consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
    alert = True,
    alert_percentage = 5,
    status = {
        "DIS": "↓",
        "CHR": "↑",
        "FULL": "=",
    },
    no_text_full = True,
    full_color = green,
    charging_color = yellow,
    critical_color = red
)

status.register("temp",
    lm_sensors_enabled = True,
    format = "{Package_id_0}°C {Core_0_bar}{Core_1_bar}",
    dynamic_color = True
)

status.register("swap",
    hide_if_empty = True,
    format = "swap: {used}/{total} MiB",
    color = green,
    warn_color = yellow,
    alert_color = red
)

status.register("mem",
    format = "mem: {used_mem}/{total_mem} MiB",
    color = green,
    warn_color = yellow,
    alert_color = red
)

status.register("cpu_usage",
    format = "{usage_all}",
    exclude_average = True,
    color = blue
)

status.register("network",
    interface = "enp3s0",
    format_up = "LAN {network_graph} {kbs}KB/s",
    format_down = "LAN ↓",
    recv_limit = 640,
    graph_style = "braille-snake",
    start_color = green,
    end_color = red,
    color_down = red
)

status.register("network",
    interface = "wlp2s0",
    format_up = "WIFI ({essid}) {network_graph} {kbs}KB/s",
    format_down = "WIFI ↓",
    recv_limit = 640,
    graph_style = "braille-snake",
    start_color = green,
    end_color = red,
    color_down = red
)

status.run()
