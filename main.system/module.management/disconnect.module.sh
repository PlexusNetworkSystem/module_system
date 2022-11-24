source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module name: ")" read_module_name
    if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "module.$read_module_name" ]];then
        echo "module.$read_module_name is being Unconnected."
        new=$(cat "$main_system_path/module.management/connected.module.list" | sed -r "s#module.$read_module_name##g")
        echo -e "$new" > $main_system_path/module.management/connected.module.list
        if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "module.$read_module_name" ]]; then
            echo -e "Process is failed."
          :
        else
            echo -e "Module has been successfully unconnected"
          :
        fi
    :
    else
        echo -e "Module unfound: $read_module_path"
    :
    fi
