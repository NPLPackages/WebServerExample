rm log.txt

rem update package dependencies
git submodule init && git submodule update
git submodule foreach git pull origin master

rem start webserver in folder and port
npl -d root="WebServerExample/" port="8099" bootstrapper="script/apps/WebServer/WebServer.lua" 
