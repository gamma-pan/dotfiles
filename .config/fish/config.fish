# VARIABLES
set -g EDITOR nvim
set -g fish_prompt_pwd_dir_length 0	

#PYTHON
if set -q VIRTUAL_ENV
and test -e $VIRTUAL_ENV/bin/activate.fish
    source $VIRTUAL_ENV/bin/activate.fish
end
