function fish_greeting
  echo "                 " It’s (set_color bryellow; date +%T; set_color normal) and the (set_color bryellow; echo fish; set_color normal) is dead
  echo (set_color brred; echo "                    Welcome to the burning basement"; set_color normal)
  catimg -w 150 ~/.config/isaac.png
end
