function fish_right_prompt
	if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        set -l mode
        switch $fish_bind_mode
            case default
                set mode N
		set_color red
            case insert
		set_color  green	
                set mode I
            case replace_one
		set_color  green
                set mode R
            case replace
		set_color cyan
                set mode R
            case visual
		set_color magenta
                set mode V
        end
	echo "[$mode]" 
	end
	set_color -b normal
end
