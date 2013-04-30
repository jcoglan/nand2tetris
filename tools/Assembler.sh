#!/bin/sh
cd `dirname $0`
java -classpath "${CLASSPATH}:bin/classes:bin/lib/Hack.jar:bin/lib/HackGUI.jar:bin/lib/Compilers.jar:bin/lib/AssemblerGUI.jar:bin/lib/TranslatorsGUI.jar" HackAssemblerMain $1
