set SEVENZIP_HOME="C:\Program Files\7-Zip"
set PYINSTALLER_HOME="C:\pyinstaller-SNAPSHOT"
set JAP_REMOTE_SSH_PYTHON_VERSION=3.0.0
set JAP_REMOTE_SSH_PYTHON_WINDOWS_VERSION=3.0.0
if exist MAKE rmdir MAKE /s /q
mkdir MAKE
cd MAKE
rem JAP_REMOTE_SSH_PYTHON
mkdir JAP_REMOTE_SSH_PYTHON-%JAP_REMOTE_SSH_PYTHON_VERSION%
cd JAP_REMOTE_SSH_PYTHON-%JAP_REMOTE_SSH_PYTHON_VERSION%
copy ..\..\JAP_REMOTE_SSH.bat JAP_REMOTE_SSH.bat
copy ..\..\JAP_REMOTE_SSH.json JAP_REMOTE_SSH.json
copy ..\..\JAP_REMOTE_SSH.py JAP_REMOTE_SSH.py
copy ..\..\H.txt H.txt
copy ..\..\KP.bat KP.bat
copy ..\..\KP.pem KP.pem
copy ..\..\README.txt README.txt
mkdir JAP
cd JAP
copy ..\..\..\JAP\__init__.py __init__.py
copy ..\..\..\JAP\JAP_LOCAL.py JAP_LOCAL.py
copy ..\..\..\JAP\JAP_REMOTE_SSH.py JAP_REMOTE_SSH.py
cd ..
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_SSH_PYTHON-%JAP_REMOTE_SSH_PYTHON_VERSION%.zip JAP_REMOTE_SSH_PYTHON-%JAP_REMOTE_SSH_PYTHON_VERSION%
rem JAP_REMOTE_SSH_PYTHON_WINDOWS
mkdir PYINSTALLER
cd PYINSTALLER
python %PYINSTALLER_HOME%\pyinstaller.py -c -F ..\JAP_REMOTE_SSH_PYTHON-%JAP_REMOTE_SSH_PYTHON_VERSION%\JAP_REMOTE_SSH.py
cd ..
mkdir JAP_REMOTE_SSH_PYTHON_WINDOWS-%JAP_REMOTE_SSH_PYTHON_WINDOWS_VERSION%
cd JAP_REMOTE_SSH_PYTHON_WINDOWS-%JAP_REMOTE_SSH_PYTHON_WINDOWS_VERSION%
copy ..\PYINSTALLER\dist\JAP_REMOTE_SSH.exe JAP_REMOTE_SSH.exe
copy ..\..\JAP_REMOTE_SSH_PYTHON_WINDOWS\JAP_REMOTE_SSH.bat JAP_REMOTE_SSH.bat
copy ..\..\JAP_REMOTE_SSH_PYTHON_WINDOWS\README.txt README.txt
copy ..\..\JAP_REMOTE_SSH.json JAP_REMOTE_SSH.json
copy ..\..\H.txt H.txt
copy ..\..\KP.bat KP.bat
copy ..\..\KP.pem KP.pem
cd ..
%SEVENZIP_HOME%\7z.exe a -tzip JAP_REMOTE_SSH_PYTHON_WINDOWS-%JAP_REMOTE_SSH_PYTHON_WINDOWS_VERSION%.zip JAP_REMOTE_SSH_PYTHON_WINDOWS-%JAP_REMOTE_SSH_PYTHON_WINDOWS_VERSION%
cd ..