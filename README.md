#Password Checker
A simple PowerShell script that prompts the user to enter a password and checks if the password is at least 8 characters long.

##How to Use
Clone this repository or download the password_checker.ps1 file.
Open PowerShell or PowerShell ISE.
Navigate to the directory where the password_checker.ps1 file is located.
Run the script by typing .\password_checker.ps1 and pressing Enter.
Follow the prompts and enter the password you wish to check.
##Script Details
The script prompts the user to enter a password using the Read-Host cmdlet with the -AsSecureString parameter. The entered password is then converted to plain text using the [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($check_user_str)) command.

The script then checks the length of the password and if it is at least 8 characters long, it outputs "Password Passes" in green and displays the password in dark gray. If the password is less than 8 characters long, it outputs "Password Needs to be longer(Atleast 8 Characters)" in red.

The script uses a while loop with a $check variable to prompt the user to enter a password until a password that is at least 8 characters long is entered.

Note: This script does not store or transmit the entered password. The password is only displayed on the user's screen.



