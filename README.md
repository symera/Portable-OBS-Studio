# Portable-OBS-Studio

Before you start: Backup your profile, scenes and settings!

## What it does
It's a script written in AHK which prepares[1] the config files located in ``config\obs-studio\basic\scenes\*.json`` and launches portable OBS-Studio on Windows.  

[1]: Basically by replacing every RegExMatch containing ``"file":\s".*?/sources/"`` to ``"file": "../../sources/"``

## Instructions
1. Download latest OBS-Studio release from [here](https://github.com/jp9000/obs-studio/releases), choose the zip-archive instead of the installer
2. Extract the zip-archive
3. Create an empty file called ``portable_mode.txt``
4. Create a folder called ``sources`` and ``config``
5. Download [``OBS.exe``](https://github.com/symera/Portable-OBS-Studio/raw/master/OBS.exe) (or compile [``OBS.ahk``](https://github.com/symera/Portable-OBS-Studio/raw/master/OBS.ahk))
6. Your directory structure should look like this:  
```
   Portable-OBS-Studio (root folder)
   |- bin
   |- config
   |- data
   |- obs-plugins
   |- sources
   |- OBS.exe
   |- portable_mode.txt
```
- Put all your sources into the ``sources``-folder in order to let the script replace the absolute paths with relative ones
- If you already have a profile you can copy all contents from ``%AppData%\obs-studio`` to the ``config``-folder
- Go ahead and start ``OBS.exe``
