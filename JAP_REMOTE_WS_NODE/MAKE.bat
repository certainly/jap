set SEVENZIP_HOME="C:\Program Files\7-Zip"
set JAP_REMOTE_WS_NODE_VERSION=3.0.0
set JAP_REMOTE_WS_NODE_MODULUS_VERSION=3.0.0
set JAP_REMOTE_WS_NODE_NODEJITSU_VERSION=3.0.0
set JAP_REMOTE_WS_NODE_OPENSHIFT_VERSION=3.0.0
if exist MAKE rmdir MAKE /s /q
mkdir MAKE
cd MAKE
rem JAP_REMOTE_WS_NODE
mkdir JAP_REMOTE_WS_NODE-%JAP_REMOTE_WS_NODE_VERSION%
cd JAP_REMOTE_WS_NODE-%JAP_REMOTE_WS_NODE_VERSION%
copy ..\..\JAP_REMOTE_WS.bat JAP_REMOTE_WS.bat
copy ..\..\JAP_REMOTE_WS.js JAP_REMOTE_WS.js
copy ..\..\JAP_REMOTE_WS.json JAP_REMOTE_WS.json
copy ..\..\C.bat C.bat
copy ..\..\C.ini C.ini
copy ..\..\C.pem C.pem
copy ..\..\CA.bat CA.bat
copy ..\..\CA.ini CA.ini
copy ..\..\CA.pem CA.pem
copy ..\..\CA.srl CA.srl
copy ..\..\CAK.pem CAK.pem
copy ..\..\CK.pem CK.pem
copy ..\..\CR.pem CR.pem
copy ..\..\NM.bat NM.bat
copy ..\..\README.txt README.txt
mkdir JAP
cd JAP
copy ..\..\..\JAP\JAP_REMOTE_WS.js JAP_REMOTE_WS.js
cd ..
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_WS_NODE-%JAP_REMOTE_WS_NODE_VERSION%.zip JAP_REMOTE_WS_NODE-%JAP_REMOTE_WS_NODE_VERSION%
rem JAP_REMOTE_WS_NODE_MODULUS
mkdir JAP_REMOTE_WS_NODE_MODULUS-%JAP_REMOTE_WS_NODE_MODULUS_VERSION%
cd JAP_REMOTE_WS_NODE_MODULUS-%JAP_REMOTE_WS_NODE_MODULUS_VERSION%
copy ..\..\JAP_REMOTE_WS_NODE_MODULUS\JAP_REMOTE_WS.json JAP_REMOTE_WS.json
copy ..\..\JAP_REMOTE_WS_NODE_MODULUS\package.json package.json
copy ..\..\JAP_REMOTE_WS_NODE_MODULUS\README.txt README.txt
copy ..\..\JAP_REMOTE_WS_NODE_MODULUS\server.js server.js
mkdir JAP
cd JAP
copy ..\..\..\JAP\JAP_REMOTE_WS.js JAP_REMOTE_WS.js
cd ..
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_WS_NODE_MODULUS-%JAP_REMOTE_WS_NODE_MODULUS_VERSION%.zip JAP_REMOTE_WS_NODE_MODULUS-%JAP_REMOTE_WS_NODE_MODULUS_VERSION%
rem JAP_REMOTE_WS_NODE_NODEJITSU
mkdir JAP_REMOTE_WS_NODE_NODEJITSU-%JAP_REMOTE_WS_NODE_NODEJITSU_VERSION%
cd JAP_REMOTE_WS_NODE_NODEJITSU-%JAP_REMOTE_WS_NODE_NODEJITSU_VERSION%
copy ..\..\JAP_REMOTE_WS_NODE_NODEJITSU\JAP_REMOTE_WS.json JAP_REMOTE_WS.json
copy ..\..\JAP_REMOTE_WS_NODE_NODEJITSU\package.json package.json
copy ..\..\JAP_REMOTE_WS_NODE_NODEJITSU\README.txt README.txt
copy ..\..\JAP_REMOTE_WS_NODE_NODEJITSU\server.js server.js
mkdir JAP
cd JAP
copy ..\..\..\JAP\JAP_REMOTE_WS.js JAP_REMOTE_WS.js
cd ..
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_WS_NODE_NODEJITSU-%JAP_REMOTE_WS_NODE_NODEJITSU_VERSION%.zip JAP_REMOTE_WS_NODE_NODEJITSU-%JAP_REMOTE_WS_NODE_NODEJITSU_VERSION%
rem JAP_REMOTE_WS_NODE_OPENSHIFT
mkdir JAP_REMOTE_WS_NODE_OPENSHIFT-%JAP_REMOTE_WS_NODE_OPENSHIFT_VERSION%
cd JAP_REMOTE_WS_NODE_OPENSHIFT-%JAP_REMOTE_WS_NODE_OPENSHIFT_VERSION%
copy ..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\JAP_REMOTE_WS.json JAP_REMOTE_WS.json
copy ..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\package.json package.json
copy ..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\README.txt README.txt
copy ..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\server.js server.js
mkdir JAP
cd JAP
copy ..\..\..\JAP\JAP_REMOTE_WS.js JAP_REMOTE_WS.js
cd ..
mkdir .openshift
cd .openshift
mkdir action_hooks
cd action_hooks
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\build build
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\deploy deploy
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\post_deploy post_deploy
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\pre_build pre_build
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\start start
copy ..\..\..\..\JAP_REMOTE_WS_NODE_OPENSHIFT\.openshift\action_hooks\stop stop
cd ..
cd ..
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_WS_NODE_OPENSHIFT-%JAP_REMOTE_WS_NODE_OPENSHIFT_VERSION%.zip JAP_REMOTE_WS_NODE_OPENSHIFT-%JAP_REMOTE_WS_NODE_OPENSHIFT_VERSION%
cd ..