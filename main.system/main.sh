source vars.main.sh
while read -e -p "$(echo -ne "Type the command: ")" command; do
#module add-remove-connect-deconnect
if [[ $command = "help" ]]; then
    echo -e "${cyan}Commands:\n\tadd module\n\tremove module\n\tconnect module\n\tdisconnect module\n\tlist module\n\tclear\n\texit${tp}"
:
elif [[ $command = "add module" ]]; then
    bash $main_system_path/module.management/add.module.sh
:
elif [[ $command = "remove module" ]]; then
    bash $main_system_path/module.management/remove.module.sh
:
elif [[ $command = "connect module" ]]; then
    bash $main_system_path/module.management/connect.module.sh
:
elif [[ $command = "disconnect module" ]]; then
    bash $main_system_path/module.management/disconnect.module.sh
:
elif [[ $command = "list module" ]]; then
    bash $main_system_path/module.management/list.module.sh
:
elif [[ $command = "clear" ]]; then
    clear
:
elif [[ $command = "exit" ]]; then
    exit
:
#module add-remove-connect-deconnect
else
  #read connected module list and search for requsting command by user. after this if command is found run it.
  module_list=$(cat "$main_system_path/module.management/connected.module.list")
  for module in $module_list; do
    commands="$(ls "$module_path/$module/commands/")"
    [[ -f /home/$USER/development.mod ]] && echo -e "commands.var:$module\n$commands"
    if [[ $commands =~ "$command" ]]; then
       command_ext=$(echo "$commands" | grep "$command")
       [[ -f /home/$USER/development.mod ]] && echo "command_ext.var: $command_ext"
       [[ $command_ext =~ ".py" ]] && echo -e "${yellow}Running $module_path/${purple}$module${yellow}/commands/${green}$command.py${tp}" && python3 "$module_path/$module/commands/$command.py" && break
       [[ $command_ext =~ ".sh" ]] && echo -e "${yellow}Running $module_path/${purple}$module${yellow}/commands/${green}$command.sh${tp}" && bash "$module_path/$module/commands/$command.sh" && break
       [[ $command_ext =~ ".cpp" ]] && echo -e "${yellow}Running $module_path/${purple}$module${yellow}/commands/${green}$command.cpp${tp}" && run "$module_path/$module/commands/$command.cpp" && break
       [[ $command_ext =~ ".c" ]] && echo -e "${yellow}Running $module_path/${purple}$module${yellow}/commands/${green}$command.c${tp}" && run "$module_path/$module/commands/$command.c" && break
       [[ $command_ext =~ ".cs" ]] && echo -e "${yellow}Running $module_path/${purple}$module${yellow}/commands/${green}$command.cs${tp}" && run "$module_path/$module/commands/$command.cs" && break
      :
    else
      :
    fi
  done
:
fi
done
echo -e "${red}Last command exiting."
