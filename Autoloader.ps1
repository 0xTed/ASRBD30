$Files = Get-ChildItem -path ("$PSScriptRoot\Class")

foreach ($f in $Files) {
    . ("$PSScriptRoot\Class\"+$f.Name)
}