<#
creer base de donnée de 5 objets
associer des prix aléatoire par rapport à l'objet
demander le prix de l'objet à l'util
comparer le prix de l'objet avec le prix donné par l'util 
#>

#creer tableau d'objet
$Objets = ("RER B","Guitare","Chaise","Horloge","Batterie")

#Creer une classe d'objet
class ObjetJP {
    [string]$Name
    [int]$Price
    }
$ObjetJP = New-Object ObjetJP

#Choose un objet en random
$ChooseObject = Get-Random($Objets)
    #je renseigne le nom de l'objet
    $ObjetJP.Name = $ChooseObject

#lui donner un prix
switch($ChooseObject){
    "RER B"{ $PriceObject = Get-Random -Minimum 15000 -Maximum 150000
        }
    "Guitare"{ $PriceObject = Get-Random -Minimum 100 -Maximum 5000
        }
    "Chaise"{ $PriceObject = Get-Random -Minimum 10 -Maximum 100
        } 
    "Horloge"{ $PriceObject = Get-Random -Minimum 500 -Maximum 2000
        }
    "batterie"{ $PriceObject = Get-Random -Minimum 500 -Maximum 5000
        }
    }
    #Je renseigne le prix de l'objet
    $ObjetJP.Price = $PriceObject

#DEBBUGING LINE
$ObjetJP