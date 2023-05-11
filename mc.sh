mkdir minecraft
cd minecraft
curDir=$(pwd)
wget -O jdk20.tar.gz https://download.java.net/java/GA/jdk20.0.1/b4887098932d415489976708ad6d1a4b/9/GPL/openjdk-20.0.1_linux-x64_bin.tar.gz
mkdir jdk
tar -zxf jdk20.tar.gz --strip-components=1 --directory ./jdk
wget -O launcher.jar https://tlaun.ch/jar

rm -rf ~/.minecraft
mkdir ~/.minecraft ~/.minecraft/mods
wget -O mods.tar.gz https://github.com/jogang0304/simplyOptimizedMods/raw/main/1.19.4/mods.tar.gz
tar -zxf mods.tar.gz --directory ~/.minecraft/mods

startScript="#!/bin/bash
./jdk/bin/java -jar ./launcher.jar"
echo "$startScript" > ./start.sh
chmod +x ./start.sh

rm -rf jdk20.tar.gz
rm -rf mods.tar.gz

./jdk/bin/java -jar ./launcher.jar
