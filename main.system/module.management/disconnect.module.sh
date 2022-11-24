source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module name: ")" read_module_name
    if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "module.$read_module_name" ]];then
        new=$(cat "$main_system_path/module.management/connected.module.list" | sed -r "s#module.$read_module_name##g")
        echo -e "$new" > $main_system_path/module.management/connected.module.list
        if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "module.$read_module_name" ]]; then
            echo -e "Process is failed."
          :
        else
            echo -e "\t${green}Module has been successfully disconnected${tp}"
          :
        fi
    :
    else
        echo -e "\t${red}Module not found: $read_module_path${tp}"
    :
    fi
