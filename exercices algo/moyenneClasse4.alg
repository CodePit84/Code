<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Faire un algorithme qui permet de calculer la moyenne des notes des étudiants d'une classe. Le nombre d'étudiants n'est pas connu d'avance. On saisi donc des notes et on mets -1 pour terminer la saisie. Les notes doivent être comprises entre 0 et 20. Utilisez une fonction qui prend une liste de notes et qui retourne la moyenne." courant="compteur PREND_LA_VALEUR 0"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#notes" algoitem="notes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Saisir notes (-1 pour terminer la saisie)#1" algoitem="AFFICHER &quot;Saisir notes (-1 pour terminer la saisie)&quot;"/>
        <item code="15#notes != -1" algoitem="TANT_QUE (notes != -1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#notes&lt;1 OU notes>20" algoitem="SI (notes&lt;1 OU notes>20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Saisir une note de 0 à 20 !#1" algoitem="AFFICHER &quot;Saisir une note de 0 à 20 !&quot;"/>
                <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
                <item code="5#notes#0#pasliste" algoitem="notes PREND_LA_VALEUR 0"/>
                <item code="5#compteur#0#pasliste" algoitem="compteur PREND_LA_VALEUR 0"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="2#notes#pasliste" algoitem="LIRE notes"/>
            <item code="5#somme#somme+notes#pasliste" algoitem="somme PREND_LA_VALEUR somme+notes"/>
            <item code="5#compteur#compteur+1#pasliste" algoitem="compteur PREND_LA_VALEUR compteur+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#somme#somme+1#pasliste" algoitem="somme PREND_LA_VALEUR somme+1"/>
        <item code="5#compteur#compteur-1#pasliste" algoitem="compteur PREND_LA_VALEUR compteur-1"/>
        <item code="4#Somme des notes : #0" algoitem="AFFICHER &quot;Somme des notes : &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="4#Nb de notes : #0" algoitem="AFFICHER &quot;Nb de notes : &quot;"/>
        <item code="3#compteur#1#pasliste" algoitem="AFFICHER compteur"/>
        <item code="4#Moyenne de la classe :#0" algoitem="AFFICHER &quot;Moyenne de la classe :&quot;"/>
        <item code="5#moyenne#somme/compteur#pasliste" algoitem="moyenne PREND_LA_VALEUR somme/compteur"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
