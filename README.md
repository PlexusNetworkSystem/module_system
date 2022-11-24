# module_system
It is an application developing style, That is work likely space station modules.
# Installation
```
wget https://github.com/PlexusNetworkSystem/module_system/archive/refs/heads/main.zip
sudo mkdir /opt/Plexus.Network.Apps/
sudo chmod 777 /opt/Plexus.Network.Apps/
mv main.zip /opt/Plexus.Network.Apps/
cd /opt/Plexus.Network.Apps/
unzip main.zip /opt/Plexus.Network.Apps/
sudo rm -f main.zip
cd /home/$USER
echo done
```

# Creating modules
first create a diractory and set the name module.<module_name_what_you_want></br>
└──ex: ```mkdir /home/$USER/module.alfa```</br>
after createition the module, create module identify file.</br>
└──ex: ```touch /home/$USER/module.alfa/module.alfa.name```</br>
Now we need the commands, for this, create diractory with name "commands" in module</br>
└──ex: ```mkdir /home/$USER/module.alfa/commands```</br>
&emsp;└──desc: Module commands is need a be file. </br>
&emsp;└──ex: hello world.sh</br>
&emsp;&ensp;&ensp;&ensp;└──hello world.cpp</br>
&emsp;&ensp;&ensp;&ensp;└──hello world.c </br>
&emsp;&ensp;&ensp;&ensp;└──hello world.cs</br>
&emsp;&ensp;&ensp;&ensp;└──hello world.py</br>
</br>
All done,Now you are have a module</br>

# Usage
Type this commands to a terminal
```
cd /opt/Plexus.Network.Apps/module_system
bash main.system/main.sh
```
