source /home/abra/Templates/module_system/main.system/vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module name: ")" read_module_name
    if [[ -d "$module_path/module.$read_module_name" ]];then
        echo "module.$read_module_name" >> $main_system_path/module.management/connected.module.list
        echo "module.beta is active."
    :
    else
        echo -e "Module unfound: $read_module_path"
    :
    fi
