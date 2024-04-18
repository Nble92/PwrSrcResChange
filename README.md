README for resChangeV2.ps1

Overview
This PowerShell script is designed to automate display resolution changes based on the power source of the computer. Specifically, it checks whether the system is running on AC power (plugged in) and adjusts the display resolution accordingly.

Requirements
Windows Operating System: The script utilizes Windows-specific commands and is intended for use on Windows systems.
PowerShell: Ensure that PowerShell is installed and configured to execute scripts.
nircmd Utility: This script requires nircmd.exe, a command-line utility that allows you to control your monitor, adjust display settings, and more. Ensure nircmd.exe is available in the system path or in the same directory as the script.
Functionality
Event Log Query: The script starts by querying the System event log for the first event with an ID of 105, which typically relates to power changes.
XML Parsing: Converts the event data to XML format and extracts the AcOnline status, which indicates if the system is on AC power.
Resolution Adjustment:
If the system is on AC power (AcOnline = true), the script sets the display resolution to 3840x2160 with a 32-bit color depth.
If the system is not on AC power, it sets the display resolution to 1920x1200 with a 32-bit color depth.
Usage
To use this script:

Open PowerShell: Right-click on PowerShell and select "Run as Administrator" to ensure sufficient privileges.
Navigate to the Script Location: Use the cd command to change to the directory where resChangeV2.ps1 is located.
Execute the Script: Run the script by typing ./resChangeV2.ps1 and pressing Enter.
Note
It is recommended to verify the specific event ID (105) and the AcOnline data field for compatibility with your system setup, as these may vary based on system configuration and power management settings.
Ensure that script execution policies on your system are configured to allow the execution of PowerShell scripts (e.g., set by using Set-ExecutionPolicy).
Conclusion
This script automates the process of changing display resolutions based on the power source, enhancing productivity and optimizing power usage.

I will be updating this to automatically add in a Windows event scheduler entry that will have it respond to the hardware change.
