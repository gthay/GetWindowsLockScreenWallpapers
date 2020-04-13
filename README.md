# GetWindowsLockScreenWallpapers
You want to have different windows desktop backgrounds like in the default lock screen on windows?


It's the best if you create a task in the task scheduler which starts the Powershell Script automatically on system startup.
Execute it once and go to the windows desktop background settings. There you have to set the background todiashoww and search for the folder “Windows Lock Screen Picture” in your pictures.


## Error Handling
If this script doesn't start, you have to open a Powershell windows as administrator and have to execute this command: Set-ExecutionPolicy RemoteSigned

 

