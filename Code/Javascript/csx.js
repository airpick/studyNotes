// ~~~~~~~~~~~~~~~~ CSX Examples ~~~~~~~~~~~~~~~~ //

// groupBy
const groupBy = (array, callback) => {
  return array.reduce((acc, value) => {
    let key = callback(value);
    !acc[key] ? acc[key] = [value] : acc[key].push(value);
    return acc;
  }, {});
}

// goodKeys
function goodKeys(object, callback) {
  const result = new Array();
  Object.keys(object).forEach(key => {
    if (callback(object[key])) result.push(key)
  });
  return result;
}

// const sunny = { mac: 'priest', dennis: 'calculator', charlie: 'birdlaw', dee: 'bird', frank: 'warthog' };
// function startsWithBird(str) { return str.slice(0, 4).toLowerCase() === 'bird'; };
// console.log(goodKeys(sunny, startsWithBird)); // should log: ['charlie', 'dee']

// factorial
const factorial = (num, product = 1) => num <= 0 ? product : factorial(num - 1, product * num);

// changeCase
const changeCase = char => {
  let regexp = /^[A-Z]/;
  return regexp.test(char) ? char.toLowerCase() : char.toUpperCase();
}