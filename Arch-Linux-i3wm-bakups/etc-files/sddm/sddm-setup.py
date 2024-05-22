import os, subprocess as sp, json


mainDir = os.path.dirname(os.path.realpath(__file__))
system_settings_file = "/home/rohit/.config/system-config.json"
sddm_themes_dir = "/usr/share/sddm/themes/"


def get_sddm_data():
    sddm_data_raw = open(os.path.join(mainDir, "sddm.conf"), "r").readlines()

    if (not os.path.exists(os.path.join(mainDir, "sddm.conf.bak"))) and (not devMood):
        open(os.path.join(mainDir, "sddm.conf.bak"), "w").writelines(sddm_data_raw)

    return [i.replace("\n", "") for i in sddm_data_raw]


def get_sddm_theme_data(theme_name: str):
    sddm_theme_data_raw = open(os.path.join(sddm_themes_dir, theme_name, "theme.conf"), "r").readlines()

    if (not os.path.exists(os.path.join(sddm_themes_dir, theme_name, "theme.conf.bak"))) and (not devMood):
        open(os.path.join(sddm_themes_dir, theme_name, "theme.conf.bak"), "w").writelines(sddm_theme_data_raw)

    return [i.replace("\n", "") for i in sddm_theme_data_raw]


def get_sddm_settngs():
    global devMood

    with open(system_settings_file) as f:
        system_settings = dict(json.load(f))
        devMood = system_settings["SystemSettings"]["DevMood"]
        return system_settings["sddmSettings"]


def get_updated_data(data: list, settings: dict):
    for i in range(len(data)):
        line = data[i]
        for k, v in settings.items():
            k += '='
            if (k == line[0:len(k)]):
                r = f"{k + v}\n"
                data[i] = r

    return data


def update_data(data: list, target_path: str, theme_name: str = False):
    for i in range(len(data)):
        if not (data[i].find("\n") > 0):
            data[i] += "\n"

    if not devMood:
        with open(target_path, "w") as f:
            f.writelines(data)

    else:
        print(f"Ready to write the data at {target_path} as:\n\033[1m{data}\033[0m\n")


def main():
    ############################
    ###         SDDM         ###
    ############################
    sddm_settings = {i: j for i, j in get_sddm_settngs().items() if i != "ThemeSettings"}
    sddm_config_file_path = os.path.join(mainDir, "sddm.conf")
    sddm_data = get_sddm_data()
    updated_sddm_data = get_updated_data(sddm_data, sddm_settings)

    update_data(updated_sddm_data, sddm_config_file_path)


    ############################
    ###      SDDM THEME      ###
    ############################
    available_sddm_themes = os.listdir(sddm_themes_dir)
    theme_name = sddm_settings["Current"]
    theme_found = True

    if theme_name not in available_sddm_themes:
        theme_found = False

    if theme_found:
        print(f"Applying \033[1m{theme_name}\033[0m theme.")
        sddm_theme_settings = get_sddm_settngs()["ThemeSettings"]
        sddm_theme_config_file_path = os.path.join(sddm_themes_dir, theme_name, "theme.conf")
        sddm_theme_data = get_sddm_theme_data(theme_name)
        updated_theme_data = get_updated_data(sddm_theme_data, sddm_theme_settings)

        update_data(updated_theme_data, sddm_theme_config_file_path, theme_name)


if __name__ == "__main__":
    main()