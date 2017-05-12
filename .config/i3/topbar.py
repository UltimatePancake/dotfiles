from i3pystatus import Status

status = Status()

status.register("redshift",
    redshift_parameters = ["-l 14.628434:-90.522713"]
)

status.register("backlight",
    format = "{percentage}"
)

#status.register("alsa")

status.register("alsa",
    card = 0,
    mixer = "Master"
)

status.register("alsa",
    card = 1,
    mixer = "PCM"
)

status.register("mpd",
    format = "[{artist} - {title} -- {song_elapsed}|{song_length}]"
)

status.register("window_title")

status.run()
