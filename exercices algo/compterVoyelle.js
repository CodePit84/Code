function compterVoyelle()
{
  //init
  let nbVoyelles=0;
  // les voyelles sont :
  // const voyelles=["a", "e", "i", "o", "u", "y"];
  
  // Entrée des données
  //let phrase = "ceci est ma phrase";
  let phrase = document.getElementById("phrase").value;
  
  // On sépare les caratères dans un tableau
  let lettres = phrase.split('');
  console.log(lettres)
  console.log("Nb de caracteres :"+phrase.length)
  
  // Boucle Pour pour vérifier les éléments un par un
  for (var i = 0; i<phrase.length; i++) {
    //Nous mettons tout en minuscule pour vérifier meme les voyelles ecrites en MAJ
    let minus = lettres[i].toLowerCase();
    console.log(minus)
      if (minus==="a"||minus==="e"||minus==="i"||minus==="o"||minus==="u"||minus==="y") {
        nbVoyelles++;
      }
  }
console.log("nbVoyelles " + nbVoyelles)
document.getElementById("nbVoyelles").innerHTML = nbVoyelles;
}