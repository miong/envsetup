function cheatsheet -d "Show bindings as a cheatsheet"
  for binding in (bind)
    set mapping (echo $binding | sed -E -e "s?bind (--[^ ]+ )*(.*)?\2?g" | sed -E -e "s?-M [^ ]+ ??g" | string split ' ')
    set keys $mapping[1]
    set func $mapping[2]
    if [ $keys = "-k" ]
      set keys "<$mapping[2]>"
      set func $mapping[3]
    else
      set keys (echo $keys | sed -E -e "s?\\\c?<Ctrl>?g" -e "s?\\\e?<Alt>?g" -e "s?'??g") 
    end
    echo "$keys : $func"
  end
end
