// 2.1.1 Bonjour
console.log("Bonjour monde");
// 2.1.2 Salut
let prenom = prompt("Quel est ton prénom ?");
console.log(`Bonjour, ${prenom} !`);

// 2.1.2 Salut
let florian = prompt("Quel est ton prénom ?");
console.log(`Bonjour, ${florian} !`);
//----------------------------------------------------------
// 2.2.1 Calculs rapides
function factorielle(n) {
  if (n === 0 || n === 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}

let userInput = prompt("De quel nombre veux-tu calculer la factorielle ?");
let result = factorielle(parseInt(userInput));
console.log(`Le résultat est : ${result}`);

//----------------------------------------------------------

// 2.2.2 Pyramide de Mario
let etages = prompt("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?");
for (let i = 1; i <= etages; i++) {
  let espace = ' '.repeat(etages - i);
  let bloc = '#'.repeat(i);
  console.log(espace + bloc);
}
//----------------------------------------------------------
