const entrepreneurs = [
  { first: 'Steve', last: 'Jobs', year: 1955 },
  { first: 'Oprah', last: 'Winfrey', year: 1954 },
  { first: 'Bill', last: 'Gates', year: 1955 },
  { first: 'Sheryl', last: 'Sandberg', year: 1969 },
  { first: 'Mark', last: 'Zuckerberg', year: 1984 },
  { first: 'Beyonce', last: 'Knowles', year: 1981 },
  { first: 'Jeff', last: 'Bezos', year: 1964 },
  { first: 'Diane', last: 'Hendricks', year: 1947 },
  { first: 'Elon', last: 'Musk', year: 1971 },
  { first: 'Marissa', last: 'Mayer', year: 1975 },
  { first: 'Walt', last: 'Disney', year: 1901 },
  { first: 'Larry', last: 'Page', year: 1973 },
  { first: 'Jack', last: 'Dorsey', year: 1976 },
  { first: 'Evan', last: 'Spiegel', year: 1990 },
  { first: 'Brian', last: 'Chesky', year: 1981 },
  { first: 'Travis', last: 'Kalanick', year: 1976 },
  { first: 'Marc', last: 'Andreessen', year: 1971 },
  { first: 'Peter', last: 'Thiel', year: 1967 }
];

// Filtre dans cette liste les entrepreneurs qui sont nés dans les années 70 ;
let entrepreneursAnnees70 = entrepreneurs.filter(e => e.year >= 1970 && e.year < 1980);
console.log("Entrepreneurs nés dans les années 70 :");
console.log(entrepreneursAnnees70);

// Sors une array qui contient le prénom et le nom des entrepreneurs ;
let entrepreneursNoms = entrepreneurs.map(e => ({ first: e.first, last: e.last }));
console.log("Array avec prénom et nom des entrepreneurs :");
console.log(entrepreneursNoms);

// Quel âge aurait chaque inventeur aujourd'hui ?
let ageAujourdhui = entrepreneurs.map(e => ({ nom: `${e.first} ${e.last}`, age: new Date().getFullYear() - e.year }));
console.log("Âge des entrepreneurs aujourd'hui :");
console.log(ageAujourdhui);

// Trie les entrepreneurs par ordre alphabétique du nom de famille.
let entrepreneursTries = entrepreneurs.sort((a, b) => a.last.localeCompare(b.last));
console.log("Entrepreneurs triés par ordre alphabétique :");
console.log(entrepreneursTries);

//-----------------------------------------------------------------------------------------------------