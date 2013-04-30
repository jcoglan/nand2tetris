@echo off
cd %0\..
java -classpath "%CLASSPATH%;bin/classes;bin/lib/Hack.jar;bin/lib/Compilers.jar" Hack.Compiler.JackCompiler %1
