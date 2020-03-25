mkdir ../OpenCL
cd ../OpenCL

mkdir lib ; mkdir include ; cd lib ; mkdir x64 ; cd .. ; cd include ; mkdir CL ; cd ../../

mv TestCL/OpenCL/lib\Release/OpenCL.lib OpenCL/lib/x64
mv TestCL/OpenCL/lib/Release/OpenCL.dll OpenCL/lib/x64

mv TestCL/OpenCL/OpenCL-ICD-Loader/inc/CL/*.h OpenCL/include/CL

cd OpenCL

$Env:path+=";"
$Env:path+=(Get-Item -Path ".\").FullName
$Env:path+="\lib\x64"

$env:path.split(';')
