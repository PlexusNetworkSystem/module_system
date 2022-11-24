source ../../vars.main.sh
[[ $1 = "-help" ]] && echo "Usage: Usage" && exit
read -e -p "$(echo -ne "Type the module path: ")" read_module_path
    if [[ -d $read_module_path ]];then
        module_dir_name="$(ls $read_module_path | grep name | sed -r 's#.name##g')"
        cp -r "$read_module_path" "$module_path/$module_dir_name"
        [[ -d "$module_path/$module_dir_name" ]] && echo -e "   Module is added successfully"
        ! [[ -d "$module_path/$module_dir_name" ]] && echo -e " Module addition is unsuccessfully"
    :
    else
        [[ -d $read_module_path ]]  && echo -e "Module unfound: $read_module_path"
    :
    fi
