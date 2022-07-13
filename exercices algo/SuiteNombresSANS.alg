<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Ecrire un algorithme qui vous demande d'entrer une suite de nombre (il vous les demande un par un, l'utilisateur termine la phase de saisie en entrant la valeur zéro) et qui vous affiche ensuite le plus petit nombre, le plus grand nombre, la somme et la moyenne de la suite. SANS utiliser les fonctions ALGOBOX_SOMME, ALGOBOX_MOYENNE ALGOBOX_MINIMUM et ALGOBOX_MAXIMUM" courant="AFFICHER &quot;Le plus petit nombre est &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
        <item algoitem="Somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#Somme"/>
        <item algoitem="Moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#Moyenne"/>
        <item algoitem="NbChiffres EST_DU_TYPE NOMBRE" code="1#NOMBRE#NbChiffres"/>
        <item algoitem="PlusPetit EST_DU_TYPE NOMBRE" code="1#NOMBRE#PlusPetit"/>
        <item algoitem="PlusGrand EST_DU_TYPE NOMBRE" code="1#NOMBRE#PlusGrand"/>
        <item algoitem="chiffre EST_DU_TYPE NOMBRE" code="1#NOMBRE#chiffre"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="compteur PREND_LA_VALEUR 0" code="5#compteur#0#pasliste"/>
        <item algoitem="chiffre PREND_LA_VALEUR -1" code="5#chiffre#-1#pasliste"/>
        <item algoitem="PlusPetit PREND_LA_VALEUR 100000000" code="5#PlusPetit#100000000#pasliste"/>
        <item algoitem="PlusGrand PREND_LA_VALEUR 0" code="5#PlusGrand#0#pasliste"/>
        <item algoitem="TANT_QUE (chiffre != 0) FAIRE" code="15#chiffre != 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE chiffre" code="2#chiffre#pasliste"/>
            <item algoitem="tab[compteur] PREND_LA_VALEUR chiffre" code="5#tab#chiffre#compteur"/>
            <item algoitem="NbChiffres PREND_LA_VALEUR NbChiffres +1" code="5#NbChiffres#NbChiffres +1#pasliste"/>
            <item algoitem="compteur PREND_LA_VALEUR compteur+1" code="5#compteur#compteur+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;test&quot;" code="4#test#1"/>
        <item algoitem="//on enleve 1 car le compteur a un tour d avance avec le zero de validation" code="19#on enleve 1 car le compteur a un tour d avance avec le zero de validation"/>
        <item algoitem="NbChiffres PREND_LA_VALEUR NbChiffres -1" code="5#NbChiffres#NbChiffres -1#pasliste"/>
        <item algoitem="compteur PREND_LA_VALEUR compteur -1" code="5#compteur#compteur -1#pasliste"/>
        <item algoitem="//on enleve 1 de nouveau car le tableau commence a zero" code="19#on enleve 1 de nouveau car le tableau commence a zero"/>
        <item algoitem="POUR compteur ALLANT_DE 0 A NbChiffres-1" code="12#compteur#0#NbChiffres-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="Somme PREND_LA_VALEUR Somme + tab [compteur]" code="5#Somme#Somme + tab [compteur]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="Moyenne PREND_LA_VALEUR Somme / NbChiffres" code="5#Moyenne#Somme / NbChiffres#pasliste"/>
        <item algoitem="AFFICHER &quot;La somme de la liste est &quot;" code="4#La somme de la liste est #0"/>
        <item algoitem="AFFICHER Somme" code="3#Somme#1#pasliste"/>
        <item algoitem="AFFICHER &quot;La moyenne de la liste est &quot;" code="4#La moyenne de la liste est #0"/>
        <item algoitem="AFFICHER Moyenne" code="3#Moyenne#1#pasliste"/>
        <item algoitem="POUR compteur ALLANT_DE 0 A NbChiffres-1" code="12#compteur#0#NbChiffres-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (PlusPetit > tab [compteur]) ALORS" code="6#PlusPetit > tab [compteur]">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="PlusPetit PREND_LA_VALEUR tab [compteur]" code="5#PlusPetit#tab [compteur]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR compteur ALLANT_DE 0 A NbChiffres-1" code="12#compteur#0#NbChiffres-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (PlusGrand &lt; tab[compteur]) ALORS" code="6#PlusGrand &lt; tab[compteur]">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="PlusGrand PREND_LA_VALEUR tab[compteur]" code="5#PlusGrand#tab[compteur]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le plus petit nombre est &quot;" code="4#Le plus petit nombre est #0"/>
        <item algoitem="AFFICHER PlusPetit" code="3#PlusPetit#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Le plus grand nombre est &quot;" code="4#Le plus grand nombre est #0"/>
        <item algoitem="AFFICHER PlusGrand" code="3#PlusGrand#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
