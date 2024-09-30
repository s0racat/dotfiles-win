$files = Get-ChildItem *.reg
foreach($file in $files){sudo reg import $file}

