function fish_prompt
	set_color white
	echo -n '('
	set_color cyan
	echo -n ''
	set_color white
	echo -n '/'
	set_color blue
	echo -n (prompt_pwd)	
	set_color white
	echo -n ') > '
	set_color normal

end
