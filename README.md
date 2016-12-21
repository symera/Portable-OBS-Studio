# Portable-OBS-Studio

Before you start: Backup your profile, scenes and settings!

## What it does
It's a script written in AHK which prepares[1] the config files located in ``config\obs-studio\basic\scenes\*.json`` and launches portable OBS-Studio on Windows.  

[1]: Basically by replacing every RegExMatch containing ``"file":\s".*?/sources/"`` to ``"file": "../../sources/"``

## Instructions
1. Download latest OBS-Studio release from [here](https://github.com/jp9000/obs-studio/releases), choose the zip-archive instead of the installer
2. Extract the zip-archive
3. Create an empty file called ``portable_mode.txt``
4. Create an folder called ``sources``
5. Download ``OBS.exe`` (or compile ``OBS.ahk``)
6. Your directory structure should look like this:  

```
Portable-OBS-Studio (root folder)
|- bin
|- data
|- obs-plugins
|- sources
|- OBS.exe
|- portable_mode.txt
```
7. Put all your sources into the *sources*-folder in order to let the script replace the absolute paths to relative ones
8. Go ahead and start ``OBS.exe``
