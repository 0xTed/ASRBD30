#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente.
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Ile:Stuff {
       
    [String] Display(){
        $strg+="                        _`n"
        $strg+="                       /_'. _`n"
        $strg+="                     _   \ / '-.`n"
        $strg+="                    < ``-.;),--'`n"
        $strg+="                     '--.</()`--.`n"
        $strg+="                       / |/-/`'._\`n"
        $strg+="                       |/ |=|`n"
        $strg+="                          |_|`n"
        $strg+="                     ~`   |-| ~~      ~`n"
        $strg+="                 ~~  ~~ __|=|__   ~~`n"
        $strg+="               ~~   .-'`  |_|  ``""-._   ~~`n"
        $strg+="                ~~.'      |=|    O    '-.  ~`n"
        $strg+="                  |      `"""`  <|\      \   ~`n"
        $strg+="              ~   \              |\      | ~~`n"
        $strg+="               jgs '-.__.--._    |/   .-'`n"
        $strg+="                        ~~   `--...-'`    ~~`n"
        $strg+="                ~~         ~          ~`n"
        $strg+="                       ~~         ~~     ~`n"
        return $strg;
    }
}

$Ile = New-Object -type Ile
