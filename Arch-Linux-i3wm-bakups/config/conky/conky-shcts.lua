conky.config = {
	background = true,
	update_interval = 1.0,
	
	cpu_avg_samples = 2,
	net_avg_samples = 2,
	temperature_unit = 'celsius',
	if_up_strictness = 'address',

	double_buffer = true,
	no_buffers = true,
	text_buffer_size = 2048,

	own_window = true,
	own_window_class = 'conky',
	own_window_type = 'override',
	own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',

	own_window_transparent = true,
	own_window_argb_value = 0,

	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	alignment = 'tl',
	gap_x = 1472,
	gap_y = 56,
	minimum_width = 423,
	minimum_height = 834,
	border_inner_margin = 0,
	border_outer_margin = 9,

	override_utf8_locale = true,
	use_xft = true,
	xftalpha = 0.8,
	uppercase = false,

	-- Defining fonts
	font = 'monospace:size=10',
	font1 = 'monospace:size=20',
	font2 = 'monospace:size=12',
	font3 = 'monospace:bold:size=9',
	font4 = 'monospace:bold:size=9',
	font5 = 'monospace:size=11',
	font6 = 'monospace:bold:size=11',

	-- Defining colors
	color1 = '#ffffff',
	color2 = '#ffffff',
	color3 = '#b0b0b0',
	color4 = '#ffffff',
	color5 = '#ffffff',
	color6 = '#b0b0b0',

	-- ${exec jq -r '.KEY' /home/rohit/.config/conky/shcts.json}

}


conky.text = [[
${image /usr/share/icons/i3wm-logo.png -p 10,0 -s 100x100	-f 5}${font2}${alignr}${color6}${alignc}
${font}
${alignr}${font1}${color1}${time %a %d-%m-%Y} ${font4}
${alignr}${font6}${color6}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -e} ${color}${font4}
${font}
${font5}${color5}+---------------------------------------------+
${font5}${color5}+--- ${font2}${color2}Keybindings ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open terminal [Alacritty] ${alignr}${font4}${color4}${exec jq -r '.terminal' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open browser [chrome] ${alignr}${font4}${color4}${exec jq -r '.browser' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open code-space [VS Code] ${alignr}${font4}${color4}${exec jq -r '.code_space' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open filemanager [thunar] ${alignr}${font4}${color4}${exec jq -r '.filemanager' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open power-menu [rofi] ${alignr}${font4}${color4}${exec jq -r '.power_menu' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}|  +-- ${font3}${color3}open scrcpy ${alignr}${font4}${color4}${exec jq -r '.scrcpy' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}open rpi-imager ${alignr}${font4}${color4}${exec jq -r '.rpi_imager' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}|  +-- ${font3}${color3}open app-menu [rofi] ${alignr}${font4}${color4}${exec jq -r '.app_menu' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}screenshot ${alignr}${font4}${color4}${exec jq -r '.screenshot' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}| ${alignr}${font5}${color5}|
# Space
${font5}${color5}+--- ${font2}${color2}Workspaces & Container ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}resize-window ${alignr}${font4}${color4}${exec jq -r '.resize_window' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}kill-focused ${alignr}${font4}${color4}${exec jq -r '.kill_focused' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}toggle-floating ${alignr}${font4}${color4}${exec jq -r '.toggle_floating' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}toggle-fullscreen ${alignr}${font4}${color4}${exec jq -r '.toggle_fullscreen' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}|  +-- ${font3}${color3}toggle WS ${alignr}${font4}${color4}${exec jq -r '.toggle_ws' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}switch to WS 1-9 ${alignr}${font4}${color4}${exec jq -r '.switch_to' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}send container to WS 1-9 ${alignr}${font4}${color4}${exec jq -r '.send_to' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}move container sidewise ${alignr}${font4}${color4}${exec jq -r '.move_to' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}change container focus ${alignr}${font4}${color4}${exec jq -r '.focus_to' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}| ${alignr}${font5}${color5}|
# Space
${font5}${color5}${color1}+--- ${font2}${color2}i3wm Functions ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}restart i3 ${alignr}${font4}${color4}${exec jq -r '.restart_i3' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
${font5}${color5}|  +-- ${font3}${color3}reload config file ${alignr}${font4}${color4}${exec jq -r '.reload_i3' /home/rohit/.config/conky/shcts.json} ${font5}${color5}|
# Space
${font5}${color5}+---------------------------------------------+
]];
