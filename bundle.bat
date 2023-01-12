rem requires luabundler and node.js to be installed
rem npm install --location=global luabundler
luabundler bundle src/main.lua^
 -p "%CD%/src/?.lua"^
 --lua=5.1^
 -o rglib.lua
