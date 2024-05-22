conky.config = {
	background = true,
	update_interval = 1,

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
	gap_x = 22,
	gap_y = 56,
	minimum_width = 423,
	minimum_height = 967,
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
	font3 = 'monospace:size=10',
	font4 = 'monospace:bold:size=9',
	font5 = 'monospace:bold:size=9',
	font6 = 'monospace:size=11',
	font7 = 'monospace:bold:size=11',
	font8 = 'monospace:bold:size=9',
	font9 = 'monospace:bold:size=9',

	-- Defining colors
	color1 = "#ffffff",
	color2 = '#ffffff',
	color3 = '#ffffff',
	color4 = '#b0b0b0',
	color5 = '#ffffff',
	color6 = '#ffffff',
	color7 = '#b0b0b0',
	color8 = '#b00000',
	color9 = '#da1a1a',
}


conky.text = [[
${image /usr/share/icons/arch-linux-logo.png -p 10,0 -s 100x100	-f 5}${font2}${alignr}${color6}${alignc}
${font}
${alignr}${font1}${color1}${time %r} ${font5}
${alignr}${font7}${color7}${exec /usr/bin/python3 /home/rohit/.config/conky/assist.py -t}  ${font5}
${font}
${font6}${color6}+---------------------------------------------+
${font6}${color6}+--- ${color2}${font2}System ${alignr}${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}OS ${alignr}${font5}${color5}${execi 130000 awk -F= '/DESCRIPTION=/{print $2}' /etc/lsb-release} ${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}Kernel ${alignr}${font5}${color5}${kernel} ${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}User ${alignr}${font5}${color5}${execi 11003 whoami} ${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}Uptime ${alignr}${font5}${color5}${uptime_short} ${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}Entropy ${alignr}${font5}${color5}${entropy_perc}% (${entropy_avail}/${entropy_poolsize}) ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color4}${font4}Total pkgs. ${alignr}${font5}${color5}${execi 1 echo $(($(yay -Q | wc -l)-(yay -Qtdq | wc -l)))} pkgs ${font6}${color6}|
${font6}${color6}|  +-- ${color8}${font8}Unrequired pkgs. ${alignr}${font9}${color9}${execi 1 yay -Qtdq |  wc -l} pkgs ${font6}${color6}|
${font6}${color6}|  +-- ${color8}${font8}Tmp. Files ${alignr}${font9}${color9}${execi 1 /usr/bin/ls -A /tmp | wc -l} files ${font6}${color6}|
# Space
${font6}${color6}| ${alignr}${font6}${color6}|
# Space
${font6}${color6}+--- ${color2}${font2}Status ${alignr}${font6}${color6}|
${font6}${color6}|  +-- ${color3}${font3}CPU ${alignr}${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Usage ${alignr}${font5}${color5}${cpu cpu0}% ${freq_g}GHz ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}LoadAvg ${alignr}${font5}${color5}${loadavg} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Temp ${alignr}${font5}${color5}${execi 10 sensors | grep 'Core 0' | awk {'print $3'}} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}RAM ${alignr}${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Total ${alignr}${font5}${color5}${memmax} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}In Use ${alignr}${font5}${color5}${mem} (${memperc}%) ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Free ${alignr}${font5}${color5}${memfree} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Up to ${alignr}${font5}${color5}${memeasyfree} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}Swap ${alignr}${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Total ${alignr}${font5}${color5}${swapmax} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Used ${alignr}${font5}${color5}${swap} ${swapperc}% ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Free ${alignr}${font5}${color5}${swapfree} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}Storage ${alignr}${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Total ${alignr}${font5}${color5}${fs_size /} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Used ${alignr}${font5}${color5}${fs_used /} (${fs_used_perc}%) ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}Free ${alignr}${font5}${color5}${fs_free /} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}Disk I/O ${alignr}${font6}${color6}|
${font6}${color6}|    +-- ${color4}${font4}Read ${alignr}${font5}${color5}${diskio_read} ${font6}${color6}|
${font6}${color6}|    +-- ${color4}${font4}Write ${alignr}${font5}${color5}${diskio_write} ${font6}${color6}|
# Space
${font6}${color6}| ${alignr}${font6}${color6}|
# Space
${font6}${color6}+--- ${color2}${font2}Processes ${alignr}${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}Total ${alignr}${font5}${color5}${processes} ${font6}${color6}|
${font6}${color6}|  +-- ${color4}${font4}Running ${alignr}${font5}${color5}${running_processes} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}CPU Usage ${alignr}${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}${top name 1} ${alignr}${font5}${color5}${top cpu 1}${top mem 1} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}${top name 2} ${alignr}${font5}${color5}${top cpu 2}${top mem 2} ${font6}${color6}|
${font6}${color6}|  | +-- ${color4}${font4}${top name 3} ${alignr}${font5}${color5}${top cpu 3}${top mem 3} ${font6}${color6}|
# Space
${font6}${color6}|  +-- ${color3}${font3}Memory Usage ${alignr}${font6}${color6}|
${font6}${color6}|    +-- ${color4}${font4}${top_mem name 1} ${alignr}${font5}${color5}${top_mem cpu 1}${top_mem mem 1} ${font6}${color6}|
${font6}${color6}|    +-- ${color4}${font4}${top_mem name 2} ${alignr}${font5}${color5}${top_mem cpu 2}${top_mem mem 2} ${font6}${color6}|
${font6}${color6}|    +-- ${color4}${font4}${top_mem name 3} ${alignr}${font5}${color5}${top_mem cpu 3}${top_mem mem 3} ${font6}${color6}|
# Space
${font6}${color6}+---------------------------------------------+
]];
