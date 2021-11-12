function fish_prompt
	echo -n (set_color white) ' fish'
	echo -n (set_color $prompt_orange) ' ' (pwd)

    if set -q VIRTUAL_ENV
        echo -n (set_color yellow) ' ' (basename "$VIRTUAL_ENV")  
    end

	#echo -n (set_color blue) ''\n' ❯ '
	echo -n (set_color blue) ''\n' $ '

    set_color normal
end
