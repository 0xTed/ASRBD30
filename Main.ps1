cls
. ("$PSScriptRoot\Autoloader.ps1")

$ObjectArray = @(
    $LogoFairyTail,
    $Ile,
    $PointInterro
);

$Rand = Get-Random -Maximum $ObjectArray.Length -Minimum 0

$Object = $ObjectArray[$Rand]
$Price = $Object.SetRandomPrice()


$Object.Display()
Write-Host "";Write-Host "";Write-Host "";
do{
    $Price
    $Player.Display()
    Write-Host "";
    [int] $Devine = Read-Host "Le prix Svp ? "
    if($Devine -lt $Price){
        echo "C'est plus"
        $Player.Coeurs -= 1
    }else{
        if($Devine -ne $Price){
            echo "C'est moins"
            $Player.Coeurs -= 1
        } 
    }

    if($Player.Coeurs -eq 0){
        echo "Perdu !!!";
        break;
        $Win=$false
    }
    
} until ($Devine -eq $Price)


if($Player.Coeurs -gt 0){
    echo "GG !!! ^^"
}