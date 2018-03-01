. .\Autoloader.ps1

function Main 
{
    
    While ($true) {
        [Int] $Hearts = $Player.Lives
        $ObjectArray = @(
            $Book, 
            $Truck, 
            $Chocolate,
            $Watch,
            $Guitar
        );

        $rand = Get-Random -Maximum $ObjectArray.Length -Minimum 0

        $Object = $ObjectArray[$rand]
        $Price = $Object.SetRandomPrice()

        do {
            if ($Hearts) {
                cls
                $Object.Display()
                [int] $Guess = Read-Host "Quel est le prix de cet objet ? "
                if ($Guess -eq $Price) {
                    cls
                    echo "Bravo ! C'est gagné !"
                    echo "Le prix est $Price$"
                    sleep 1
                    break
                } else {
                    if ($Guess -lt $Price) {
                        echo "C'est plus"
                        Sleep 1
                        cls
                        --$Hearts
                        Write-Host -ForegroundColor Red "Nombre de vies restantes $Hearts :" $Player.DisplayLives($Hearts)
                        Sleep 2
                        cls
                    } else {
                        echo "C'est moins"
                        Sleep 1
                        cls
                        --$Hearts
                        Write-Host -ForegroundColor Red "Nombre de vies restantes $Hearts :" $Player.DisplayLives($Hearts)
                        Sleep 2
                        cls
                    }
                }
            } else {
                echo "Quel dommage vous n'avez pas trouvé le prix exact ..."
                sleep 1
                exit 0
            }
        } until ($Guess -eq $Price)
    }
}

Main