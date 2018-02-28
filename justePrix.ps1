<#
creer base de donnée de 5 objets
associer des prix aléatoire par rapport à l'objet
demander le prix de l'objet à l'util
comparer le prix de l'objet avec le prix donné par l'util 
#>

#creer tableau d'objet
$Objets = ("un RER B","une Guitare","une Chaise","une Horloge","une Batterie")

#Creer une classe d'objet
class ObjetJP {
    [string]$Name
    [long]$Price
    [string]$ASCIIArt
    }
$ObjetJP = New-Object ObjetJP

#Créer une classe utilisateur
class UserJP {
    [String]$Name
    [int]$Life = 5
    }
$UserJP = New-Object UserJP

#créer function de jeu
. .\FuncjustePrix.ps1
#Choose un objet en random
$ChooseObject = Get-Random($Objets)
    #je renseigne le nom de l'objet
    $ObjetJP.Name = $ChooseObject

#lui donner un prix et un ASCII
switch($ChooseObject){
    "un RER B"{ 
        [int]$MiniPrice = 15000
        [int]$MaxiPrice = 150000
        $PriceObject = Get-Random -Minimum $MiniPrice -Maximum $MaxiPrice
        $ASCIIObject = "
        
                                                 /'   `\
                                                Y.     .Y
                                      _______    \`. .'/
                       ,-------------'=======`"--""""-""""---.
                 __,=+'-------------------------------------|p
              .-/__|_]_]  :`"/:""""""""""""""""""""""""""""""|'
           ,-'__________[];/_;_____________________RER B____|
         ,`".../_|___________________________________________|
        (_>        ,-------.                     ,-------.  |
         `-._____.'(_)`='(_)\_7___7___7___7__7_.'(_)`='(_)\_/ tchou tchou_ nous seront en retard

"}
    "une Guitare"{ 
        [int]$MiniPrice = 100
        [int]$MaxiPrice = 5000
        $PriceObject = Get-Random -Minimum $MiniPrice -Maximum $MaxiPrice
        $ASCIIObject = "
        
     _
    / 7
   /_(
   |_|
   |_|
   |_|
   |_| /\
 /\|=|/ /
 \ |_| /
  ) _  \
 / |_|  \
/  -=-o /
\  /~\_/  -Row
 \/

        "}
    "une Chaise"{ 
        [int]$MiniPrice = 10
        [int]$MaxiPrice = 100
        $PriceObject = Get-Random -Minimum $MiniPrice -Maximum $MaxiPrice
        $ASCIIObject = "
        
   i______i
   I______I
   I      I
   I______I
  /      /I
 (______( I
 I I    I I
 I      I

        "} 
    "une Horloge"{ 
        [int]$MiniPrice = 500
        [int]$MaxiPrice = 2000
        $PriceObject = Get-Random -Minimum $MiniPrice -Maximum $MaxiPrice
        $ASCIIObject = "
        
                             O
                            (_)
                          _ )_( _
                        /`_) H (_`\
                      .' (  { }  ) '.
                    _/ /` '-'='-' `\ \_
                   [_.'   _,...,_   '._]
                    |   .:`"`````":.   |
                    |__//_________\\__|
                     | .-----------. |
                     | |  .-""`"-.  | |
                     | | /    /  \ | |
                     | ||-   <   -|| |
                     | | \    \  / | |
                     | |[`'-...-'`]| |
                     | | ;-.___.-; | |
                     | | |  |||  | | |
                     | | |  |||  | | |
                     | | |  |||  | | |
                     | | |  |||  | | |
                     | | |  |||  | | |
                     | | | _|||_ | | |
                     | | | >===< | | |
                     | | | |___| | | |
                     | | |  |||  | | |
                     | | |  ;-;  | | |
                     | | | (   ) | | |
                     | | |  '-'  | | |
                     | | '-------' | |
                jgs _| '-----------' |_
                   [= === === ==== == =]
                   [__--__--___--__--__]
                  /__-___-___-___-___-__\
                 `"""""""""""""""""""""""`

        "}
    "une Batterie"{ 
        [int]$MiniPrice = 500
        [int]$MaxiPrice = 5000
        $PriceObject = Get-Random -Minimum $MiniPrice -Maximum $MaxiPrice
        $ASCIIObject = "
        
 .-.,      ,--. ,--.
`/|~\     \__/T`--'     .
x |`' __   ,-~^~-.___ ==I==
  |  |--| /       \__}  |
  |  |  |{   /~\   }    |
 /|\ \__/ \  \_/  /|   /|\
/ | \|  | /`~-_-~'X.\ //| \
"}
    }

    #Je renseigne le prix de l'objet
    $ObjetJP.Price = $PriceObject
    $ObjetJP.ASCIIArt = $ASCIIObject

#Demander le nom de l'utilisateur
$UserName = Read-Host "Quel est ton nom ?"
$UserJP.name = $UserName

#Affichage de l'enigme et lancement de la fucntion
Write-host "L'objet d'aujourd'hui est $($ObjetJP.name)"
write-host $ObjetJP.ASCIIArt
FuncJustePrix

