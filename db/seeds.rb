# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# snippet seeds 
Snippet.create(content: "const hello = () => {\n  console.log('Hello World')\n}")
Snippet.create(content: "const person = {\n name: 'Barney',\n age: 21,\n occupation: 'student'\n}")
Snippet.create(content: "getData = () => {\n  fetch('data.json')\n  .then(resp => resp.json())\n  .then(data => console.log(data))\n}")
Snippet.create(content: "const array = [1, 2, 3, 4]\nconst four = array.length")
Snippet.create(content: "function biggestNum(num1, num2){\n  return num1 > num2 ? num1 : num2\n}")
Snippet.create(content: "const array = ['Dog', 'Cat', 'Sheep', 'Horse']\nconst dog = array.filter(animal => animal === 'Dog')")
Snippet.create(content: "const nums = [14, 5, 9, 3, 11]\nconst sortedNums = nums.sort((a, b) => a - b)")
Snippet.create(content: "const addTwo = (nums) => {\n  return nums.map(num => num + 2)\n}")
Snippet.create(content: "const addNums = (num1, num2) => {\n  return num1 + num2\n}")