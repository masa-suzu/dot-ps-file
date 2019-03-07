if(!(Test-Path(Split-Path $PROFILE -Parent))){
    $parent = Split-Path $PROFILE -Parent
    mkdir $parent
}
copy .\Microsoft.PowerShell_profile.ps1  $PROFILE