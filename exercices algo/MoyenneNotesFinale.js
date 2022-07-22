// Dabord en dur, les notes
//const notes = [12, 13, 14];
//console.log (notes)
//let notes = 0;
//let moyenne = 0;
function calculMoyenne(){
    let notes = new Array();
    console.log(notes);
    let i = 0;
    //let note = 0;
    let ajout = '';
    // Saisie des notes
    let note = Number(prompt("saisir une note ou -1 pour terminer la saisie"));
    console.log(note);
    // Tant que note est different de -1 
      while (note != -1) {
        // Si la note n'est pas comprise entre -1 et 20 afficher une erreur
        if (note < -1 || note > 20) {
          alert ("la note doit etre comprise entre 0 et 20");
          note = Number(prompt("saisir une note ou -1 pour terminer la saisie"));
        // sinon ajouter la saisie dans un tableau (à la suite)
        } else {
          //let notes[i]=note;
          ajout = notes.push(note);
          console.log(note);
          console.log(notes);
          //note = Number(window.prompt("saisir une note ou -1 pour terminer la saisie"));
          note = Number(prompt("saisir une note ou -1 pour terminer la saisie"));
          }
      }
    console.log("END");
  
    //On fait la somme du tableau
    let somme = 0;
    for (let i=0; i<notes.length; i++){
      somme += notes[i];
      console.log("somme: " + somme)
    }
  
    // On fait la moyenne
    let moyenne = somme / notes.length;
    console.log("moyenne: " + moyenne);
    document.getElementById("moyenne").innerHTML=moyenne;
  }