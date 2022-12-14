source /opt/Plexus.Network.Apps/module_system/main.system/vars.main.sh
modules="$(ls $module_path)"
modules=($modules)
#module connection control.
for module_name in "${modules[@]}"; do
  if [[ $(cat "$main_system_path/module.management/connected.module.list") =~ "$module_name" ]]; then
      echo -e "\t${purple}$module_name: ${green}Connected${tp}"
    :
  else
      echo -e "\t${purple}$module_name: ${red}Disconnected${tp}"
    :
  fi
done
