Import-Module PSReadline
Set-PSReadlineOption -EditMode Emacs
$script:_FirstPrompt = $true

function Prompt {
    if ($script:_FirstPrompt) {
        $script:_FirstPrompt = $false
    } else {
        Write-Host ""
    }
    Write-Host ([char]27 + "[1;38;2;136;192;208m" + "$PWD" + [char]27 + "[0m")
    return 'PS> '
}


("gl", "gc","gp","rm","curl") | ForEach-Object {
    $alias = Get-Alias $_ -ErrorAction SilentlyContinue
    if ($alias) {
        Remove-Item ("Alias:" + $_) -Force
    }
}
$env:Path = $env:path + ";$env:USERPROFILE\scoop\apps\git\current\usr\bin"
$env:LESS = "-FRi"

function ga { git add $args }
function gc { git commit $args }
function gd { git diff $args }
function gl { git pull $args }
function gp { git push $args }
function gs { git status $args }

function rm {
    param(
        [string[]]$Path,
        [switch]$r
    )

    if ($r) {
        Remove-Item $Path -Recurse -Force
    } else {
        Remove-Item $Path
    }
}
