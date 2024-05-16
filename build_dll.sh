make clean
make libquickjs.dll CONFIG_WIN32=y CONFIG_M32=y
pexports.exe libquickjs.dll | grep -v '\.'  > libquickjs.def
echo "LIBRARY libquickjs.dll" | cat - libquickjs.def > temp && mv temp libquickjs.def

dlltool -d libquickjs.def -l libquickjs.lib -k