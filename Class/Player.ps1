#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente.
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Player : Stuff {
    
    [int]$Coeurs=3;


    [String] Display(){
        $strg='';
        for($i=0;$i -lt $this.Coeurs;$i++){
            $strg+=' <3 '
        }
        return $strg;
    }

    [string]Lose($NombreCoeur){
        for($i=0;$i -lt 11;$i++){
            $this.Display()
        }
        return $this.Display()
    }

}

$Player = New-Object -type Player
