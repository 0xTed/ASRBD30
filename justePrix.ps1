<#
creer base de donnée de 5 objets
associer des prix aléatoire par rapport à l'objet
demander le prix de l'objet à l'util
comparer le prix de l'objet avec le prix donné par l'util 
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
    