function phraseAlenvers()
{
  // recuperation datas
  let mots = document.getElementById("textarea").value;
  console.log(mots);
  // traitement
  let s = mots.split(' ').reverse().join(' ');
  console.log(s);
  // affichage
  document.getElementById("reversePhrase").innerHTML = s;
}

