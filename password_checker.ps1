$check = $true
While ($check){
    write-host "Please enter password" -ForegroundColor Yellow
    $check_user_str = Read-Host -AsSecureString
    $check_comp = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($check_user_str))
    if ($check_user_str.Length -ge 7){
        Write-Host "Password Passes" -ForegroundColor Green
        Write-Host $check_comp -ForegroundColor DarkGray -BackgroundColor Darkgray
        $check = $false
    }else{
        Write-Host "Password Needs to be longer(Atleast 8 Characters)" -ForegroundColor Red
    }
}
