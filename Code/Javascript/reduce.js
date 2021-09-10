// Variable declarations
const people = [
    {id: 1, name: "Kyle", age: 36},
    {id: 2, name: "Tina", age: 29},
    {id: 3, name: "Joe", age: 35},
];

const orders = [
    {id: 1, status: "pending"},
    {id: 2, status: "pending"},
    {id: 3, status: "cancelled"},
    {id: 4, status: "shipped"},
];

const folders = [
    "index.js",
    ["flatten.js", "map.js"],
    ["any.js", ["all.js", "none.js"], ["count.js", "reduce.js"]]
];

let result;
let currentExample;

// ~~~~~~~~~~~~~~~~ START Coding Examples ~~~~~~~~~~~~~~~~ //

// count
// currentExample = "count";
result = people.reduce((acc, person) => acc + 1, 0);

// sum ages
// currentExample = "sum ages";
result = people.reduce((acc, person) => acc += person.age, 0);

// array of names (map)
currentExample = "array of names (map)";
result = people.reduce((acc, person) => [...acc, person.name], []);

// convert to id => person lookup (dict)
// currentExample = "convert to id => person lookup (dict)";
result = people.reduce((acc, person) => {
    return {...acc, [person.id]: person};
}, {});

// max age
// currentExample = "max age";
result = people.reduce((acc, person) => {
    if (acc === null || acc < person.age) {
        return person.age;
    }
    else {
        return acc;
    }
}, null);

// find by name

// the presented solution only returns the first object with a hit...
// not the best solution
// currentExample = "find by name";
result = people.reduce((acc, person) => {
    if (acc !== null) return acc;
    if (person.name === "Tina") return person;
    return null;
}, null);

// all over 18
// currentExample = "all over 18";
result = people.reduce((acc, person) => {
    if (!acc) return false;
    return person.age > 18;
}, true);

// any over 18
// currentExample = "any over 30";
result = people.reduce((acc, person) => {
    if (acc) return true;
    return person.age > 30;
}, false);

// count occurences
// currentExample = "count occurences";
result = orders.reduce((acc, order) => {
    return {
        ...acc, 
        [order.status]: (acc[order.status] || 0) + 1
    };
}, {});

// flatten
currentExample = "flatten";
function flatten(acc, folder) {
    if (Array.isArray(folder)) {
        return folder.reduce(flatten, acc);
    }
    return [...acc, folder];
}

result = folders.reduce(flatten, []);

// create reduce ourselves
// currentExample = "create reduce ourselves";
function reduce(array, callback, initial) {
    let acc = initial;
    for (let i = 0; i < array.length; i++) {
        acc = callback(acc, array[i], i, array);
    }
    return acc;
}

result = reduce([1,2,3], (acc, num) => {
    console.log(acc);
    return acc + num}
    , 0);

// ~~~~~~~~~~~~~~~~ END Coding Examples ~~~~~~~~~~~~~~~~ //
// Console Logs
console.log(`The '${currentExample}' example returns: `);
console.log(result);