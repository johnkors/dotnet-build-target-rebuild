echo off

dotnet build ghost/ghost.csproj -v quiet
echo ************************************************************
echo All dlls, when passing no targets:
ls ghost/bin/debug/netcoreapp2.0/ | grep dll
echo *************************************************************



dotnet build ghost/ghost.csproj /t:rebuild -v quiet -c release
echo ############################################################
echo All dlls, when passing rebuild target:
ls ghost/bin/release/netcoreapp2.0 | grep dll
echo ############################################################
