// TODO: define the 'birthday' String constant
let birthday = "Birthday"
// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    return "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}

print(buildSign(for: birthday, name: "Otto"))
// => "Happy Birthday Otto!"

print(buildSign(for: anniversary, name: "Valentina"))
// => "Happy Anniversary Valentina!"

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations \(name)\(exclamation)\nClass of \(year)"
}

print (graduationFor(name: "Padma", year: 2020))
// => "Congratulations Padma!\nClass of 2020"

func costOf(sign: String) -> Int {
  let basePrice = 20
  let numberOfCharacters = sign.count
  return basePrice + (numberOfCharacters * 2)
}

print(costOf(sign: "Happy Birthday Grandma!"))
// => 66
