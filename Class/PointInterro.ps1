#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente.
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class PointInterro : Stuff {
       
    [String] Display(){
        $strg+="                        _`n"
        $strg+="       wggggMMMM0MM@@@@@@@MMMMMM0Mgggyy,____`n"
        $strg+="    __wmM#g#@MM@""`                    `"MMMMMMMMMMgy__`n"
        $strg+="  y0@OwDMMMMMMM                               ^QMMMMMMMMMM0g`n"
        $strg+="  #@g20MMMMMf                                 jMNEMMMMMMMM0`n"
        $strg+="   90#MMMMMMMg                             _jMM#0MMMMMMMM'`n"
        $strg+="        `"9MMMMMm,__                 __,yMZW0MM@M`n"
        $strg+="                   ```^~       __ygMMMM^^`n"
        $strg+="                          _wmMMME`n"
        $strg+="                       jgQ#j&MMMMMM0Am,`n"
        $strg+="                       9MM#0MMMMMMMMM0M`n"
        $strg+="                            ```````n"
        $strg+="`n"
        $strg+="                          _,wawyywy_`n"
        $strg+="                        MZ04WMMMNMMMM0`n"
        $strg+="                         9NMMMMMM@M`n"
        return $strg;
    }
}

$PointInterro = New-Object -type PointInterro
