function fish_prompt
	set_color white
	echo -n ' fish'
	set_color $prompt_orange
	echo -n '   '
	echo -n (pwd)
	set_color normal
	echo -n ''\n' ❯ '
end
