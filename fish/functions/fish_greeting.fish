# function fish_greeting
#   echo "FISH"
# end

function fish_greeting
  set_color magenta
  echo -n "fish  "
  echo (date "+%m/%d/%y")
end
