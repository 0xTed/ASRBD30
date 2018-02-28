Function FuncJustePrix{
    
    Do{   
        #Poser la question à l'utilisateur
        do{
            $AnswerUser = Read-Host "
            #------------------------------------------------------------------#
            #     Alors $($UserJP.Name) ! Quel est le prix de cet objet ?      #
            #     (Son prix est compris entre $MiniPrice € et $MaxiPrice €)    #
            #------------------------------------------------------------------#"
            #DEBBUGUNG LINE#
            Write-Host $ObjetJP.Price
            #Check si il à rentré un chiffre

              if ($AnswerUser -notmatch '^\d+$'){
                  Write-Host "
                  #------------------------------------------------------------------#
                  #           Tu n'as pas rentré un chiffre, recomence               #
                  #------------------------------------------------------------------#"
                 }
              else{
                 $AnswerUser = [long]$AnswerUser
                 }
        }while ($AnswerUser -notmatch '^\d+$')

        if ($AnswerUser -lt $ObjetJP.Price){
            Write-Host "
            #------------------------------------------------------------------#
            #              C'est plus grand, tu perd une vie                   #
            #------------------------------------------------------------------#"
            $UserJP.Life--
            $UserJP.Life
        }
        elseif ($AnswerUser -gt $ObjetJP.Price){
            Write-Host "
            #------------------------------------------------------------------#
            #             C'est plus petit, tu perd une vie                    #
            #------------------------------------------------------------------#"
            $UserJP.Life--
            $UserJP.Life
        }
        elseif ($AnswerUser -eq $ObjetJP.Price){
            Read-Host "
            #------------------------------------------------------------------#
            #                      C'est ça ! Gagné !                          #
            #           Appuie sur Entré pour ferme le programme               #
            #------------------------------------------------------------------#"
            Exit 0
        }
        else {
            Write-Host "
            #------------------------------------------------------------------#
            #          Tu n'as pas rentré de chiffre, recomence                #
            #------------------------------------------------------------------#"
        }
    }While ($UserJP.Life -gt 0)

    Read-Host "
    #------------------------------------------------------------------#
    #                           Tu as perdu !                          #
    #              Appuie sur Entrée pour fermer le jeu                #
    #------------------------------------------------------------------#"
    Exit 0

}