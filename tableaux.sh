#IFS=':' read -r -a entree <<< " `grep ^"1-" carte.txt`  `grep ^"2-" carte.txt` `grep ^"3-" carte.txt` `grep ^"4-" carte.txt` `grep ^"5-" carte.txt` `grep ^"6-" carte.txt` x";
#echo ${entree[1]}

#IFS='/' read -ra plat <<< " `grep ^"7-" carte.txt`  `grep ^"8-" carte.txt` `grep ^"9-" carte.txt` `grep ^"10-" carte.txt` `grep ^"11-" carte.txt` `grep ^"12-" carte.txt` `grep ^"13-" carte.txt` `grep ^"14-" carte.txt` ";
#echo ${plat[@]}

#IFS='/' read -ra dessert <<< " `grep ^"15-" carte.txt`  `grep ^"16-" carte.txt` `grep ^"17-" carte.txt` `grep ^"18-" carte.txt` ";
#echo ${dessert[@]}

#IFS='/' read -ra boisson <<< " `grep ^"19-" carte.txt`  `grep ^"20-" carte.txt` `grep ^"21-" carte.txt` `grep ^"22-" carte.txt` ";
#echo ${boisson[@]}

#n_pt=( )
#choixclient=( )

#declare -A n_total_manger=( [ ${entree[0]} ]="{$n_pt[0]}" [ ${entree[1]} ]="{$n_pt[1]}" [ ${entree[2]} ]="{$n_pt[2]}" [ ${entree[3]} ]="{$n_pt[3]}" [ ${entree[4]} ]="{$n_pt[4]}" [ ${entree[5]} ]="${n_pt[5]}" [ ${plat[6]} ]="${n_pt[6]}" [ ${plat[7]} ]="${n_pt[7]}" [ ${plat[8]} ]="${n_pt[8]}" [ ${plat[9]} ]="${n_pt[9]}" [ ${plat[10]} ]="${n_pt[10]}" [ ${plat[11]} ]="${n_pt[11]}" [ ${plat[12]} ]="${n_pt[12]}" [ ${plat[13]} ]="${n_pt[13]}" [ ${plat[14]} ]="${n_pt[14]}" [ ${dessert[15]} ]="${n_pt[15]}" [ ${dessert[16]} ]="${n_pt[16]}" [ ${dessert[17]} ]="${n_pt[17]}" [ ${dessert[18]} ]="${n_pt[18]}" [ ${boisson[19]} ]="${n_pt[19]}" [ ${boisson[20]} ]="${n_pt[20]}" [ ${boisson[21]} ]="${n_pt[21]}" [ ${boisson[22]} ]="${n_pt[22]}" )
#echo ${n_total_manger[@]}
#tableau associatif en mode : 1- croupion de morue = "nombre de plat choisis"

#echo ${prix_e1}
#echo $var1

IFS=':' read -r -a entree1 <<< " `grep ^"1-" carte.txt` "
IFS=':' read -r -a entree2 <<< " `grep ^"2-" carte.txt` "
IFS=':' read -r -a entree3 <<< " `grep ^"3-" carte.txt` "
IFS=':' read -r -a entree4 <<< " `grep ^"4-" carte.txt` "
IFS=':' read -r -a entree5 <<< " `grep ^"5-" carte.txt` "
IFS=':' read -r -a entree6 <<< " `grep ^"6-" carte.txt` "
IFS=':' read -r -a plat1 <<< " `grep ^"1- sal" carte.txt` "
IFS=':' read -r -a plat2 <<< " `grep ^"2- ag" carte.txt` "          #Creation de 22 tableaux, 1 par plat
IFS=':' read -r -a plat3 <<< " `grep ^"3- chat" carte.txt` "        #index 0 = nom ; index 1 = prix
IFS=':' read -r -a plat4 <<< " `grep ^"4- pelar" carte.txt` "       #IFS coupe le string en deux au niveau du : et place chaque partie dans un tableau
IFS=':' read -r -a plat5 <<< " `grep ^"5- las" carte.txt` "         # ex =  coucou : ça va ? 
IFS=':' read -r -a plat6 <<< " `grep ^"6- sa" carte.txt` "
IFS=':' read -r -a plat7 <<< " `grep ^"7- soupe" carte.txt` "           #arr[0]="coucou" ; arr[1]="ca va ?"
IFS=':' read -r -a plat8 <<< " `grep ^"8- beurre" carte.txt` "
IFS=':' read -r -a dessert1 <<< " `grep ^"1- chat l" carte.txt` "
IFS=':' read -r -a dessert2 <<< " `grep ^"2- tiramisu" carte.txt` "
IFS=':' read -r -a dessert3 <<< " `grep ^"3- beurette" carte.txt` "
IFS=':' read -r -a dessert4 <<< " `grep ^"4- chips" carte.txt` "
IFS=':' read -r -a boisson1 <<< " `grep ^"1- coca" carte.txt` "
IFS=':' read -r -a boisson2 <<< " `grep ^"2- smoothie" carte.txt` "
IFS=':' read -r -a boisson3 <<< " `grep ^"3- ice" carte.txt` "
IFS=':' read -r -a boisson4 <<< " `grep ^"4- shooter" carte.txt` "


#var1=${entree1[1]} 
#prix_e1=`echo ${var1} | sed 's/€//'`
#echo ${prix_e1}


 
