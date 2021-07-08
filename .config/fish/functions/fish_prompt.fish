function fish_prompt
	set_color blue
	echo -n ''
	set_color white
	echo -n " • "
	set_color AE853D
	echo -n ' '
	echo -n (pwd)
	set_color normal
	echo -n ''\n'> '
end
