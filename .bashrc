# Powerline
if [ -f `which powerline-daemon` ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
		. /Users/ysingh/.pyenv/versions/3.5.1/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi