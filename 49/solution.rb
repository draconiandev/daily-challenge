# Version 1

car = wins = 0
many = 10000000

many.times do
    choice1 = rand(3)
    host_opts = [0, 1, 2] - [choice1, car]
    choice2 = [0, 1, 2] - [choice1, host_opts.first]
    wins += 1 if choice2 == [car] 
end
 
puts "#{(wins * 100) / many}%"

# Version 2

def createDoors
    doors = [false, false, false]
    doors[rand(3)] = true
    doors
end

def openADoorThatHasADonkey(doors, userChoice)
    ([0, 1, 2] - [userChoice, doors.index(true)]).first
end

def changeUserChoice(choices)
    ([0, 1, 2] - choices).first
end

def play
    doors = createDoors()
    userChoice1 = rand(3)
    hostChoice = openADoorThatHasADonkey(doors, userChoice1)
    userChoice2 = changeUserChoice([userChoice1, hostChoice])
    doors.index(true) == userChoice2
end

games, wins = 10000000, 0
games.times { wins += 1 if play() }
print 100*wins/games, " %"