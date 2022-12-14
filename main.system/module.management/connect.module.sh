source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module name: ")" read_module_name
    if [[ -d "$module_path/module.$read_module_name" ]];then
        echo "module.$read_module_name" >> $main_system_path/module.management/connected.module.list
        echo -e "\t${purple}module.$read_module_name${green} is active.${tp}"
    :
    else
        echo -e "\t${red}Module not found: ${purple}module.$read_module_name${tp}"
    :
    fi
