import os, subprocess as sp, sys, time


inf = {
    "audio_name": "playerctl metadata title",
    "audio_artist": "playerctl metadata artist",
    "audio_status": "playerctl status",
    "audio_volume": "pamixer --get-volume",
    "audio_mute": "pamixer --get-mute"
}
max_len = 92


def get_audio_info():
    info = {}

    try:
        info = {i: sp.check_output(j, shell=True).decode().replace('\n', '') for i,j in inf.items() if i != 'audio_mute'}

    except sp.CalledProcessError:
        info["audio_name"] = "Nothing is being played"
        info["audio_artist"] = "Player not found"
        info["audio_status"] = "Player not found"
        info["audio_volume"] = sp.check_output(inf["audio_volume"], shell=True).decode().replace('\n', '')

    if info["audio_name"] == "No players found":
        info["audio_name"] = "Nothing is being played"
        info["audio_artist"] = "Player not found"
        info["audio_status"] = "Player not found"

    if info["audio_status"] == "Stopped":
        info["audio_status"] = "Player not found"

    if (sp.check_output(inf["audio_mute"], shell=True).decode().replace('\n', '') == "true"):
        info["audio_volume"] = "MUTED"

    else:
        if int(info["audio_volume"]) == 0:
            info["audio_volume"] = "MUTED"

        else:
            info["audio_volume"] = str(info["audio_volume"]) + "%"

    if len(info["audio_name"]) > max_len:
        info["audio_name"] = info["audio_name"][:max_len - 3] + "..."

    return info


def get_flag():
    try:
        ret = sys.argv[1]

    except IndexError:
        ret = '-h'

    return ret


def return_help():
    py3_path = sp.check_output("which python3", shell=True).decode().replace('\n', '')
    man = f"Usage: {py3_path} {__file__} [OPTION]"
    Options = """
\033[1mOptions:\033[0m

    -h                    show this help message and exit
    -t                    Linux Time
    -n                    Audio Name
    -a                    Audio Artist
    -s                    Audio Status
    -v                    Audio Volume
    -e                    Not Decided Yet
    """

    return man + Options


def main():
    audio_info = get_audio_info()
    opts = {
        "-h": return_help(),
        "-t": int(time.time()),
        "-n": audio_info["audio_name"],
        "-a": audio_info["audio_artist"],
        "-s": audio_info["audio_status"],
        "-v": audio_info["audio_volume"],
        "-e": ""
    }

    flag = get_flag()

    if flag not in list(opts.keys()):
        print(return_help())
        exit()

    print(opts[flag])


if __name__ == "__main__":
    main()
