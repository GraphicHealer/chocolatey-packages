﻿$packageName = 'cdrtfe'
$fileType = 'exe'
$iniFile = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\install.ini"
$silentArgs = "/VERYSILENT /LOADINF=`"$iniFile`""
$url = '{{DownloadUrl}}'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url