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

# Creating the modules
first create a diractory and set the name module.<module_name_what_you_want>
└──ex: ```mkdir /home/$USER/module.alfa```

after createition the module, create module identify file.
└──ex: ```touch /home/$USER/module.alfa/module.alfa.name```

Now we need the commands, for this create diractory with name "commands" in module
└──ex: ```mkdir /home/$USER/module.alfa/commands```
&emsp;└──desc: Module commands is need a be file. 
&emsp;└──ex: hello world.sh
&emsp;&ensp;hello world.cpp
&emsp;&ensp;hello world.c 
&emsp;&ensp;hello world.cs
&emsp;&ensp;hello world.py

All done you have a module