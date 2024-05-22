conky.config = {
	background = true,
	update_interval = 0.001,
	
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
	gap_x = 523,
	gap_y = 900,
	minimum_width = 873,
	minimum_height = 130,
	border_inner_margin = 0,
	border_outer_margin = 9,

	override_utf8_locale = true,
	use_xft = true,
	xftalpha = 0.8,
	uppercase = false,

	-- Defining fonts
	font1 = 'monospace:size=12',
	font2 = 'monospace:bold:size=9',
	font3 = 'monospace:bold:size=10',
	font4 = 'monospace:bold:size=12',
	font5 = 'monospace:size=11',

	-- Defining colors
	color1 = '#ffffff',
	color2 = '#b0b0b0',
	color3 = '#1AB9DA',
	color4 = '#daca1a',
	color5 = '#ffffff',

	top_name_width = 30
}


conky.text = [[
${font5}${color5}+-----------------------------------------------------------------------------------------------+
${font5}${color5}+--- ${color1}${font1}Player ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Song:   ${font3}${color3}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -n} ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Artist: ${font3}${color3}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -a} ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Status: ${font3}${color3}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -s} ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Volume: ${font4}${color4}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -v} ${alignr}${font5}${color5}|
${font5}${color5}+-----------------------------------------------------------------------------------------------+
]];
