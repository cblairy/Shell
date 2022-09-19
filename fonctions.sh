                        # AFFICHAGE UN TICKET DE CAISSE DE RESTAURANT

function ticket(){
    n=29  #n = le nombre de lignes du tickets, 29 etant le minimum pour un ticket vierge, nous l'incrementarons en fonction du nombre de lignes dans le ticket (ce qui fera un affichage dynamique, voir fin de la fonction ticket)
    tput clear
    tput sc 
    tput setaf 011
    echo "########################################" ; #apparence haut du ticket
    echo -n "#"
    tput sgr0
    echo ""
    printf "#\t     L'est a minet" 
    tput sgr0
    echo ""   
    echo "#"

                    #AFFICHAGE ENTREE
    tput cuf 2
    echo "------------------------------------"
    printf "  ENTREES : \n"
        case $choixEntree in #creation de plusieurs cas possibles en fonction du choix client
#        0)  echo "  Aucune entrée... dommage ;)"
#        if [ $choixEntree=1 ]; then 
#             ;;
        #    a=$(( 2*k + 1 ))
        1)  tput cuf 2 ;
            echo ${entree1[0]} "x"${n_entrees1} #affiche le plat choisi et combien
            tput cuf 33 #placement curseur
            var1=${entree1[1]} #affiche son prix en €
            prix_e1=`echo ${var1} | sed 's/€//'` #retire le € pour pouvoir multiplier et additionner les resultats
            a=$(( n_entrees1*prix_e1 )) 
            echo $a"€"
            n=$(($n+1)) ;; #incrémentation de 1 ligne pour le contour dynamique du ticket

        2)  tput cuf 2 ;
            echo ${entree2[0]} "x"${n_entrees2}
            tput cuf 33
            var2=${entree2[1]} 
            prix_e2=`echo ${var2} | sed 's/€//'`
            b=$(( n_entrees2*prix_e2 ))
            echo $b"€"
            n=$(($n+1)) ;;
        
        3)  tput cuf 2 ;
            echo ${entree3[0]} "x"${n_entrees3}
            tput cuf 33
            var3=${entree3[1]} 
            prix_e3=`echo ${var3} | sed 's/€//'`
            c=$(( n_entrees3*prix_e3 ))
            echo $c"€"
            n=$(($n+1)) ;; 

        4)  tput cuf 2 ;
            echo ${entree4[0]} "x"${n_entrees4}
            tput cuf 32
            var4=${entree4[1]} 
            prix_e4=`echo ${var4} | sed 's/€//'`
            d=$(( n_entrees4*prix_e4 ))
            echo $d"€"
            n=$(($n+1)) ;;  

        5)  tput cuf 2 ;
            echo ${entree5[0]} "x"${n_entrees5}
            tput cuf 33
            var5=${entree5[1]} 
            prix_e5=`echo ${var5} | sed 's/€//'`
            e=$(( n_entrees5*prix_e5 ))
            echo $e"€"
            n=$(($n+1)) ;; 

        6)  tput cuf 2 ;
            echo ${entree6[0]} "x"${n_entrees6}
            tput cuf 33
            var6=${entree6[1]} 
            prix_e6=`echo ${var6} | sed 's/€//'`
            f=$(( n_entrees6*prix_e6 ))
            echo $f"€"
            n=$(($n+1)) ;; 

        *) echo "  Aucune entrée... grrr grrrr !"
            a=0 ; b=0 ; c=0 ; d=0 ; e=0 ; f=0 ;;
        esac

    #PLATS
    tput cuf 2
    echo "------------------------------------"
    printf "  PLATS : \n"
        case $choixPlat in

        1)  tput cuf 2 ;
            echo ${plat1[0]} "x"${n_plats1}
            tput cuf 33
            varp1=${plat1[1]} 
            prix_p1=`echo ${varp1} | sed 's/€//'`
            aa=$(( n_plats1*prix_p1 ))
            echo $aa"€" 
            n=$(($n+1)) ;;

        2)  tput cuf 2 ;
            echo ${plat2[0]} "x"${n_plats2}
            tput cuf 33
            varp2=${plat2[1]} 
            prix_p2=`echo ${varp2} | sed 's/€//'`
            bb=$(( n_plats2*prix_p2 ))
            echo $bb"€"
            n=$(($n+1)) ;;
        
        3)  tput cuf 2 ;
            echo ${plat3[0]} "x"${n_plats3}
            tput cuf 33
            varp3=${plat3[1]} 
            prix_p3=`echo ${varp3} | sed 's/€//'`
            cc=$(( n_plats3*prix_p3 ))
            echo $cc"€"
            n=$(($n+1)) ;; 

        4)  tput cuf 2 ;
            echo ${plat4[0]} "x"${n_plats4}
            tput cuf 33
            varp4=${plat4[1]} 
            prix_p4=`echo ${varp4} | sed 's/€//'`
            dd=$(( n_plats4*prix_p4 ))
            echo $dd"€"
            n=$(($n+1)) ;;

        5)  tput cuf 2 ;
            echo ${plat5[0]} "x"${n_plats5}
            tput cuf 33
            varp5=${plat5[1]} 
            prix_p5=`echo ${varp5} | sed 's/€//'`
            ee=$(( n_plats5*prix_p5 ))
            echo $ee"€"
            n=$(($n+1)) ;; 

        6)  tput cuf 2 ;
            echo ${plat6[0]} "x"${n_plats6}
            tput cuf 33
            varp6=${plat6[1]} 
            prix_p6=`echo ${varp6} | sed 's/€//'`
            ff=$(( n_plats6*prix_p6 ))
            echo $ff"€"
            n=$(($n+1)) ;;

        7)  tput cuf 2 ;
            echo ${plat7[0]} "x"${n_plats7}
            tput cuf 33
            varp7=${plat7[1]} 
            prix_p7=`echo ${varp7} | sed 's/€//'`
            gg=$(( n_plats7*prix_p7 ))
            echo $gg"€"
            n=$(($n+1)) ;;

        8)  tput cuf 2 ;
            echo ${plat8[0]} "x"${n_plats8}
            tput cuf 33
            varp8=${plat8[1]} 
            prix_p8=`echo ${varp8} | sed 's/€//'`
            hh=$(( n_plats8*prix_p8 ))
            echo $hh"€"
            n=$(($n+1)) ;;

        *) echo "  Aucun plat... chat alors !" 
        aa=0 ; bb=0; cc=0; dd=0; ee=0; ff=0; gg=0; hh=0 ;;
        esac
    #DESSERTS
       tput cuf 2
    echo "------------------------------------"
    printf "  DESSERTS : \n"
        case $choixDessert in

        1)  tput cuf 2 ;
            echo ${dessert1[0]} "x"${n_desserts1}
            tput cuf 33
            vard1=${dessert1[1]} 
            prix_d1=`echo ${vard1} | sed 's/€//'`
            aaa=$(( n_desserts1*prix_d1 ))
            echo $aaa"€" ;;

        2)  tput cuf 2 ;
            echo ${dessert2[0]} "x"${n_desserts2}
            tput cuf 33
            vard2=${dessert2[1]} 
            prix_d2=`echo ${vard2} | sed 's/€//'`
            bbb=$(( n_desserts2*prix_d2 ))
            echo $bbb"€" ;;
        
        3)  tput cuf 2 ;
            echo ${dessert3[0]} "x"${n_desserts3}
            tput cuf 33
            vard3=${dessert3[1]} 
            prix_d3=`echo ${vard3} | sed 's/€//'`
            ccc=$(( n_desserts3*prix_d3 ))
            echo $ccc"€" ;; 

        4)  tput cuf 2 ;
            echo ${dessert4[0]} "x"${n_desserts4}
            tput cuf 33
            vard4=${dessert4[1]} 
            prix_d4=`echo ${vard4} | sed 's/€//'`
            ddd=$(( n_desserts4*prix_d4 ))
            echo $ddd"€" ;;

        *) echo "  Il n'y a que les chats de goutiere" 
        echo "  pour ne prendre aucun dessert..." 
        aaa=0; bbb=0; ccc=0; ddd=0 ;;
        esac

    #BOISSONS
           tput cuf 2
    echo "------------------------------------"
    printf "  BOISSONS : \n"
        case $choixBoisson in

        1)  tput cuf 2 ;
            echo ${boisson1[0]} "x"${n_boissons1}
            tput cuf 33
            varb1=${boisson1[1]} 
            prix_b1=`echo ${varb1} | sed 's/€//'`
            aaaa=$(( n_boissons1*prix_b1 ))
            echo $aaaa"€" ;;

        2)  tput cuf 2 ;
            echo ${boisson2[0]} "x"${n_boissons2}
            tput cuf 33
            varb2=${boisson2[1]} 
            prix_b2=`echo ${varb2} | sed 's/€//'`
            bbbb=$(( n_boissons2*prix_b2 ))
            echo $bbbb"€" ;;
        
        3)  tput cuf 2 ;
            echo ${boisson3[0]} "x"${n_boissons3}
            tput cuf 33
            varb3=${boisson3[1]} 
            prix_b3=`echo ${varb3} | sed 's/€//'`
            cccc=$(( n_boissons3*prix_b3 ))
            echo $cccc"€" ;; 

        4)  tput cuf 2 ;
            echo ${boisson4[0]} "x"${n_boissons4}
            tput cuf 33
            varb4=${boisson4[1]} 
            prix_b4=`echo ${varb4} | sed 's/€//'`
            dddd=$(( n_boissons4*prix_b4 ))
            echo $dddd"€" ;;

            *) echo "  Aucune boisson..."
            echo "  et ma coupelle de lait ? " 
            aaaa=0; bbbb=0; cccc=0; dddd=0 ;;
        esac

    #TOTAL PRIX
    tput cuf 2 
    echo "------------------------------------"
    tput cuf 2
    total=$(((a + b + c + d + e + f + aa + bb + cc + dd + ee + ff + gg + hh + aaa + bbb + ccc + ddd + aaaa + bbbb + cccc + dddd)*110/100))
    printf "  Total : $total€ (dont TVA 10%s) \n" % #impossible d'integrer % directement caractere invalide, utilisation commande printf + arg %
    #calcul et affichage du total
    #REMERCIEMENTS/COORDONNEES
    tput cuf 2 
    echo "------------------------------------"
    tput cuf 2 
    tput setaf 1
    echo "La petite blague du jour : "
    tput sgr0
    tput cuf 2 
    echo "Pourquoi Dieu aime t'il les chats ?"
    tput cuf 4
    echo "Parceque Dieu est par minou :D"
    tput rev
    tput setaf 227
    printf "\n\t\t MIAOU !\n\t  MERCI D'ETRE VENU  \n\t MANGER CHAT NOUS <3 \n\n\t"
    tput sgr0   
    tput setaf 010     
    echo " Copyright Coco_kiki."
    tput sgr0
    tput setaf 011

    # CREATION AFFICHAGE, CONTOUR DU TICKET
        for (( i=0; i<=n; i++ )) ; do #boucle sur chaque ligne du terminal
        echo -n "#" ;             #place le # en debut de ligne sans passer a la ligne suivante
        tput cup $i 39 ; echo "#" ; #défini l'emplacement du curseur sur x=39 (coté droit) et y=1 (incrementation pour chaque ligne)
    done
    echo "########################################" ; #apparence fin du ticket
    tput sgr0
    exit
}               #FIN DE LA FONCTION TICKET





function menu(){
tput rev
tput setaf 204
echo "BIENVENUE A L'EST A MINET !"
tput sgr0 ;

OPTIONS="ENTREES PLATS DESSERTS BOISSONS NONMERCI"
if [ "$choix" = "" ] ; then 
echo "Par quel mets voudriez vous commencer ? : "
else
echo "Voulez vous autre chose ? : " 
fi
select choix in $OPTIONS; do    #choix des plats

                    #choix dans les entrées
    if [ "$choix" = "ENTREES" ]; then 
        tput clear
        tput rev
        echo "Entrées :"
        tput sgr0 ;
        printf "\n${entree1[0]}:${entree1[1]}\n${entree2[0]}:${entree2[1]}\n${entree3[0]}:${entree3[1]}\n${entree4[0]}:${entree4[1]}\n${entree5[0]}:${entree5[1]}\n${entree6[0]}:${entree2[1]}\n\n"    #j'affiche le numero et le nom des entrées avec grep (depuis le fichier carte.txt) et je demande un numero en retour
        read -p "Chèr(e) client(e), veuillez noter le numero de l'entrée choisie : " choixEntree #variable choixENtree crée par l'utilisateur
        tput clear
        if [ "$choixEntree" -eq 1 ] ; then
        read -p "combien en voulez-vous? " n_entrees1 #input nombre entree client
        elif [ "$choixEntree" -eq 2 ] ; then
        read -p "combien en voulez-vous? " n_entrees2 #input nombre entree numero2 client
        elif [ "$choixEntree" -eq 3 ] ; then
        read -p "combien en voulez-vous? " n_entrees3
        elif [ "$choixEntree" -eq 4 ] ; then
        read -p "combien en voulez-vous? " n_entrees4
        elif [ "$choixEntree" -eq 5 ] ; then
        read -p "combien en voulez-vous? " n_entrees5
        elif [ "$choixEntree" -eq 6 ] ; then
        read -p "combien en voulez-vous? " n_entrees6
        fi
        tput clear
    fi
        
    

                    #choix dans les plats
    if [ "$choix" = "PLATS" ]; then 
        printf "${plat1[0]}:${plat1[1]}\n${plat2[0]}:${plat2[1]}\n${plat3[0]}:${plat3[1]}\n${plat4[0]}:${plat4[1]}\n${plat5[0]}:${plat5[1]}\n${plat6[0]}:${plat6[1]}\n${plat7[0]}:${plat7[1]}\n${plat8[0]}:${plat8[1]}\n"    #j'affiche le numero et le nom des entrées avec grep (depuis le fichier carte.txt) et je demande un numero en retour
    read -p "Chèr(e) client(e), veuillez noter le numero du plat choisi : " choixPlat #creation var commande_p1
        clear
        if [ "$choixPlat" -eq 1 ] ; then
        read -p "combien en voulez-vous? " n_plats1 #input nombre entree client
        elif [ "$choixPlat" -eq 2 ] ; then
        read -p "combien en voulez-vous? " n_plats2 #input nombre entree numero2 client
        elif [ "$choixPlat" -eq 3 ] ; then
        read -p "combien en voulez-vous? " n_plats3
        elif [ "$choixPlat" -eq 4 ] ; then
        read -p "combien en voulez-vous? " n_plats4
        elif [ "$choixPlat" -eq 5 ] ; then
        read -p "combien en voulez-vous? " n_plats5
        elif [ "$choixPlat" -eq 6 ] ; then
        read -p "combien en voulez-vous? " n_plats6
        elif [ "$choixPlat" -eq 7 ] ; then
        read -p "combien en voulez-vous? " n_plats7
        elif [ "$choixPlat" -eq 8 ] ; then
        read -p "combien en voulez-vous? " n_plats8
        fi
        tput clear
    fi
   
       

                    #choix dans les desserts
    if [ "$choix" = "DESSERTS" ]; then 
        printf "${dessert1[0]}:${dessert1[1]}\n${dessert2[0]}:${dessert2[1]}\n${dessert3[0]}:${dessert3[1]}\n${dessert4[0]}:${dessert4[1]}\n"    #j'affiche le numero et le nom des entrées avec grep (depuis le fichier carte.txt) et je demande un numero en retour
    #j'integre directement les desserts depuis le fichier avec la commande grep
    read -p "Chèr(e) client(e), veuillez noter le numero du dessert choisi : " choixDessert ; #creation var commande_d1
        clear
        if [ "$choixDessert" -eq 1 ] ; then
        read -p "combien en voulez-vous? " n_desserts1
        elif [ "$choixDessert" -eq 2 ] ; then
        read -p "combien en voulez-vous? " n_desserts2
        elif [ "$choixDessert" -eq 3 ] ; then
        read -p "combien en voulez-vous? " n_desserts3
        elif [ "$choixDessert" -eq 4 ] ; then
        read -p "combien en voulez-vous? " n_desserts4
        fi
        tpout clear
    fi


                    #choix dans les boissons
    if [ "$choix" = "BOISSONS" ]; then 
        printf "${boisson1[0]}:${boisson1[1]}\n${boisson2[0]}:${boisson2[1]}\n${boisson3[0]}:${boisson3[1]}\n${boisson4[0]}:${boisson4[1]}\n"    #j'affiche le numero et le nom des entrées avec grep (depuis le fichier carte.txt) et je demande un numero en retour
    #j'integre directement les boissons depuis le fichier avec la commande grep
    read -p "Chèr(e) client(e), veuillez noter le numero de la boisson choisie : " choixBoisson #creation var commande_b1
        clear
        if [ "$choixBoisson" -eq 1 ] ; then
        read -p "combien en voulez-vous? " n_boissons1
        elif [ "$choixBoisson" -eq 2 ] ; then
        read -p "combien en voulez-vous? " n_boissons2
        elif [ "$choixBoisson" -eq 3 ] ; then
        read -p "combien en voulez-vous? " n_boissons3
        elif [ "$choixBoisson" -eq 4 ] ; then
        read -p "combien en voulez-vous? " n_boissons4
        fi   
        tput clear
    fi
    
    if [ "$choix" = "NONMERCI" ]; then #affichage du ticket pas encore fonctionnel :/
    ticket
    fi
    
break 
done

menu #reaffichage du menu tant que break ne passe pas (choix NONMERCI --> affichage ticket)
}

