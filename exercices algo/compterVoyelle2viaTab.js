function compterVoyelle()
{
  // Recuperation des DATAS
  // les voyelles sont toujours :
  const voyelles=["a", "e", "i", "o", "u", "y"];
  
  // Entrée des données par l'utilisateur
  // let phrase = "Yoni";
  let phrase = document.getElementById("phrase").value;
  // Mise en minuscule de la phrase entree par l utilisateur
  phrase = phrase.toLowerCase();
  
  // On separe les carateres dans un tableau
  let lettres = phrase.split('');
  console.log(lettres)
  console.log("Nb de caracteres :"+phrase.length)
  
  // on retourne l'ensemble des éléments commun au 2 tableaux (voyelles et lettres)
  //let lettres = ["c", "e", "c", "i"];
  //console.log(lettres.filter(e => voyelles.includes(e)));
  let pareil = lettres.filter(e => voyelles.includes(e));
  let nbVoyelles = pareil.length;
  console.log(pareil)
  console.log(nbVoyelles)
 
  // Affichage  
  console.log("nbVoyelles " + nbVoyelles)
  document.getElementById("nbVoyelles").innerHTML = nbVoyelles;
}