// 1
var computerChoice = Int.random(in: 1...10)
var myChoice = 5
var x = computerChoice - myChoice


if x == 0 {
    print("Bingo!")
} else if x > 0 {
    print("Up")
} else {
    print("Down")
}

// 2
var computerChoice = Int.random(in: 1...10)
var myChoice = 5
var x: Int = computerChoice - myChoice


switch x {
case _ where x == 0:
    print("Bingo!")
case _ where x > 0:
    print("Up")
case _ where x < 0:
    print("down")
default:
    break
}

// 3
var computer = Int.random(in: 1...10)
var me = 5

if computer > me {
    print("up")
} else if computer < me {
    print("down")
} else {
    print("Bingo")
}
