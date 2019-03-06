# sound off
Set-PSReadlineOption -BellStyle None

# alias
Set-Alias c cls
Set-Alias d docker
Set-Alias dc docker-compose
Set-Alias g git
Set-Alias p powershell

function global:prompt () {
  $userinfo = [System.Security.Principal.WindowsIdentity]::GetCurrent()
  $curPath = CurrentDir  
  $userinfo.Name + " " + $curPath + "`n" + "$ "
}

# show current dir like ... 
# - ~/source/repos
# - C:\Users
function CurrentDir()
{
  $curPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
  if ($curPath.ToLower().StartsWith($Home.ToLower()))
  {
      $curPath = ("~" + $curPath.SubString($Home.Length)) -replace "\\", "/"
  }
  return  $curPath
}
