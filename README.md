# wlan_switch
A Powershell script to switch between two wireless lan networks.

Run this script to switch between two wireless networks.

1. Download the "wlanSwitchSSID.ps1" script file anywhere on your PC.
2. Open the script file and add the names of the two Wlan networks.
3. Default values for the two networks is given as "Wlan_1" and "Wlan_2".
4. Change these to the ones that you wish to switch between.
5. Make sure to include the double-quotes ("") around the names of the Wlan networks.

To create a Click-to-Run file
1. Download the "wlan_SwitchSSID.ps1" file into any directory on your PC.
2. In the same directory, right-click and create a shortcut.
3. Click "Browse..." and navigate to where the Windows Powershell application is installed. In a Windows 10 operating system, it is "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe".
4. Click "Next".
5. You can give any name to the shortcut. For example, "wlanSwitchSSID".
6. Click "Finish".
7. Right-click on the newly created shortcut and go to "Properties".
8. Go to the "Shortcut" tab. In the "Target" field, place the cursor at the end of the target path. Give a white space and paste the file path of the "wlanSwitchSSID.ps1" powershell script file that you downloaded. In your case, this powershell script file is in the same directory as the shortcut you are creating. NOTE: Make sure to enclose the path in double-quotes as the names of the directories in the path may have white spaces.
9. Click "Ok".
10. Now, double-click the shortcut and the powershell script will run and close automatically. Your PC will connect automatically to the other wireless network that you wanted to.

NOTE: THE 10th STEP WORKS ONLY IF BOTH THE WIRELESS NETWORKS ARE UP AND RUNNING AND YOUR PC HAS CONNECTED TO THEM BEFORE. THAT IS, YOUR PC SHOULD REMEMBER THE PASSWORDS FOR THE WIRELESS NETWORKS.
