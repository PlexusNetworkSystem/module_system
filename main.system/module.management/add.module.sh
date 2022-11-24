source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module path: ")" read_module_path
    if [[ -d $read_module_path ]];then
        module_dir_name="$(ls $read_module_path | grep name | sed -r 's#.name##g')"
        cp -r "$read_module_path" "$module_path/$module_dir_name"
        [[ -d "$module_path/$module_dir_name" ]] && echo -e "\t${green}Module is added successfully${tp}"
        ! [[ -d "$module_path/$module_dir_name" ]] && echo -e "\t${red}Module addition is unsuccessfully${tp}"
    :
    else
        [[ -d $read_module_path ]]  && echo -e "\t${red}Module not found: $read_module_path"
    :
    fi
