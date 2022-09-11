#Bromite
    Bromite=$(curl -s https://api.github.com/repos/bromite/bromite/releases/latest | grep "browser_download_url" | grep arm64_ChromePublic.apk | cut -d : -f 2-3 | tr -d \"  )
    wget $Bromite

#Magisk
    wget https://raw.githubusercontent.com/topjohnwu/magisk-files/canary/app-debug.apk

#F-Droid
    wget https://f-droid.org/F-Droid.apk

#termux
    wget https://f-droid.org/repo/com.termux_118.apk
    wget https://f-droid.org/repo/com.termux.widget_13.apk
    wget https://f-droid.org/repo/com.termux.api_51.apk

#SElinuxModeChanger
    wget https://github.com/MrBIMC/SELinuxModeChanger/releases/download/11.0/app-release-v11.apk

#Foxmmm
    Foxmmm=$(curl -s https://api.github.com/repos/Fox2Code/FoxMagiskModuleManager/releases/latest | grep "browser_download_url" | cut -d : -f 2-3 | tr -d \")
    wget $Foxmmm

#LSPosed
    LSPosed=$(curl -s https://api.github.com/repos/LSPosed/LSPosed/releases/latest | grep "browser_download_url" | grep "zygisk" | cut -d : -f 2-3 | tr -d \")
    wget $LSPosed

#Shamiko
    Shamiko=$(curl -s https://api.github.com/repos/LSPosed/LSPosed.github.io/releases/latest | grep "browser_download_url" | grep "Shamiko" | cut -d : -f 2-3 | tr -d \")
    wget $Shamiko

adb install ./*apk
adb push ./*zip /sdcard/Download/
