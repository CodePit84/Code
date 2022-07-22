// On crée un tableau de 10 chiffres randoms
// floor pour arrondir et random*10 pour avoir un entier car random ne fait que donne un chiffre aleatoire entre 0 et 1
function trouveNb() {
    // jeu d'essai (pour les tests)
    // valeur a entrer : nbArechercher = 7    ; valeur a obtenir : indice 3,   valeur obtenue : ?
    // valeur a entrer : nbArechercher = 3    ; valeur a obtenir : indice 1,indice 4,   valeur obtenue : ?
    // bornes : 5,10
    // n'existe pas : 11
    // const tab=  [5,3,12,7,3,10];
  const tab=new Array();
  console.log("Affiche mon tableau généré : ")
    for (let i=0; i<10; i++){
      tab[i]=Math.floor(Math.random()*10);
      console.log(tab[i])
    }
  
    // On demande à l'utilisateur de rentrer un chiffre, ici en dur
    //const input=7;
    //console.log("saisir nombre : ", input)
    // recuperation datas
    let input = document.getElementById("nbArechercher").value;
    console.log(input);nbArechercher
  
    // On cherche si ce nombre apparait dans le tableau et a quel rang
   
    // [5,3,12,7,3,10]; nbArechercher=3    Resultat : indice 0,indice 3,
    let chaine ="";
    let trouve = false; // boolean flag (drapeau)
    
    for (let i=0; i<10; i++) {
      if (input == tab[i]) {
        trouve = true;
        console.log("Le chiffre", tab[i], "est placé au rang", i, "du tableau")
        //console.log(input)
        // Affichage du rang ou a été trouvé le chiffre
        // let chaine = 'indice 0,';
        // let chaine =  'indice 0,indice 3,';
        chaine =  chaine + 'position ' + (i+1) + ',';
        console.log(chaine);
      }
    }
    if (trouve) {
       // on connait tous les indices, on peut afficher le resultat
      document.getElementById("resultat").innerHTML = chaine;
    }  else {
       // Affichage que le chiffre n'a pas été trouvé 
      document.getElementById("resultat").innerHTML = 0 + " pas de résultat";
      console.log(0);
    }
    console.log("END");  
  }