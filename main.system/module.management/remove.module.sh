source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
read -e -p "$(echo -ne "Type the module name: ")" read_module_name
modules="$(ls $module_path)"
modules=($modules)
#module connection control.
! [[ "${modules[@]}" =~ "module.$read_module_name" ]] && echo -e "Unadded module.(module.$read_module_name)" && exit
  if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "$read_module_name" ]]; then
      echo -e "\t${red}$read_module_name: Connected.\n\t${yellow}You need to disconnect first."
    :
  else
      echo -e "\t${green}$read_module_name: Unconnected. Removing...${tp}"
      rm -r "$module_path/module.$read_module_name"
    :
  fi
