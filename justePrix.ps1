<#
creer base de donn�e de 5 objets
associer des prix al�atoire par rapport � l'objet
demander le prix de l'objet � l'util
comparer le prix de l'objet avec le prix donn� par l'util 
#>

#creer tableau d'objet
$Objets = ("RER B","Guitare","Chaise","Horloge","Batterie")

#Choose un objet en random
$ChooseObject = Get-Random($Objets)

#lui donner un prix
switch($ChooseObject){
    "RER B"{ Get-Random -Minimum
        }
    "Guitare"{
        }
    "Chaise"{
        }
    "Horloge"{
        }
    "batterie"{
        }
    }
    