// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("secretWord", () => {
  it("takes in a string and returns a string with a coded message", () => {
    expect(secretWord(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
    expect(secretWord(secretCodeWord2)).toEqual("G0bbl3dyg00k")
    expect(secretWord(secretCodeWord3)).toEqual("3cc3ntr1c")
  })
})

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"


// Pseudo code:
// input: a string
// output: a string with vowels replaced by specific numbers
// create a function that takes in a string
// split the string into an array of letters
// so that .map can itterate through a conditional statement (in this case, Guard Clauses)
// that checks for each vowel and replaces with it a number
// or returns the letter if it is not one of the selected vowels
// join it back together

// b) Create the function that makes the test pass.
function secretWord (string) {
    let secretFormula = string.split("").map((letter) => {
        if (letter.toLowerCase() === 'a') {
            return 4
        } 
        if (letter.toLowerCase() === 'e') {
            return 3
        } 
        if (letter.toLowerCase() === 'i') {
            return 1
        } 
        if (letter.toLowerCase() === 'o') {
            return 0
        }
        return letter
    }
    ).join("")
    return secretFormula
}


// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("fullHouse", () => {
    it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
      expect(fullHouse(hand1)).toEqual(true)
      expect(fullHouse(hand2)).toEqual(false)
      expect(fullHouse(hand3)).toEqual(false)
      expect(fullHouse(hand4)).toEqual(true)
    })
})

const hand1 = [5, 5, 5, 3, 3] // Expected output: true
const hand2 = [5, 5, 3, 3, 4] // Expected output: false
const hand3 = [5, 5, 5, 5, 4] // Expected output: false
const hand4 = [7, 2, 7, 2, 7] // Expected output: true

// b) Create the function that makes the test pass.

// Pseudo code:
// Input: An array(hand of cards)
// Output: true or false (Is it a Full House?)
// Create a function taking in an array (hand of cards)
// create an object
// use .reduce() method to iterate over each element in the array and find and accumilate each matching element
// create an equation checking to see if the previous card has been revealed, if so, +1 to it's count
// return the update and repeat until .reduce() has iterated through entire array
// use Object.values() method to pull a the object's key's values in an array
// using .includes() method check to see if 2 and 3 are included in that array

// (JavaScript Syntax for .reduce) 
// array.reduce(function(total(required), currentValue(required), currentIndex(optional), arr(optional)), initialValue(optional)) 
// Wish I could say I understand this fully, but I struggle to imagine how to make the currentIndex and arr useful. Thankfully, it's not a complex enough problem to make use of them.

function fullHouse(hand) {
    const pairs = hand.reduce((accumilator, card) => {
    // variable = array.reduce(function(total, currentValue) => {
        // console.log(accumilator) // remains an empty {}(the initial value) until first return, then { '5': 1 }
        // console.log(card) // the current element iterated through the array
        accumilator[card] = (accumilator[card] || null) + 1
        // accumilator[card] += 1 // JavaScript not friendly enough like Ruby to figure things out
        // console.log(accumilator) // { '5': 1 }... (Holds the 'card' / '5' (keys) and the number of times it was called 1 (value))
        return accumilator // Update and stores the accumilator in the reduce method
     }, {})// {} the accumilator's initial value. {} places it inside an object.) 
    // return pairs // { '3': 2, '5': 3 }
    // console.log(typeof pairs) // object
    // return Object.values(pairs) // [ 2, 3 ]
    return Object.values(pairs).includes(2) && Object.values(pairs).includes(3)
}
