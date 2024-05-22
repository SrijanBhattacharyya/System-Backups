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
	gap_y = 900,
	minimum_width = 423,
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
	font4 = 'monospace:bold:size=10',
	font5 = 'monospace:size=11',

	-- Defining colors
	color1 = '#ffffff',
	color2 = '#b0b0b0',
	color3 = '#ffffff',
	color4 = '#1AB9DA',
	color5 = '#ffffff',

}


conky.text = [[
${font5}${color5}+---------------------------------------------+
${font5}${color5}+--- ${color1}${font1}Config Info ${alignr}${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Creator ${alignr}${font3}${color3}${exec jq -r '.creator' /home/rohit/.config/config-details.json} ${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Config Version ${alignr}${font3}${color3}${exec jq -r '.version' /home/rohit/.config/config-details.json} ${font5}${color5}|
${font5}${color5}|  +-- ${color2}${font2}Git Link ${alignr}${font5}${color5}|
${font5}${color5}| ${alignr}${font4}${color4}${exec jq -r '.gitlink' /home/rohit/.config/config-details.json} ${font5}${color5}|
${font5}${color5}+---------------------------------------------+
]]
