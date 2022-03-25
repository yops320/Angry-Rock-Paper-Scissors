puts "Greetings. What is your name?"
name = gets.chomp
insult = ["Idiot", "Dumbass", "Simpleton", "Stupid"].sample
#What the game is/does the user want to play
puts "#{name}. I'd rather call you #{insult}. Would you like to play rock, paper, scissors #{insult}? [y/n]"
# yes/no/invalid
answer=gets.chomp.downcase
if answer == 'n'
puts "That makes me angry"
    elsif  answer == 'y'
    puts "Me too #{insult}!"
#scores
computerScore = 0
userScore = 0
#end of game (could go to any number)
until computerScore == 1 || userScore == 1
    puts "Rock, paper or scissors?"
    user = gets.chomp.downcase
    computer = ["rock", "paper", "scissors"].sample
    #user wins
    if (user == "rock" && computer == "scissors") || (user == "scissors" && computer == "paper") || (user == "paper" && computer == "rock")
        puts "You won #{insult}!"
        userScore += 1
    #draws
    elsif (user == "rock" && computer == "rock") || (user == "paper" && computer == "paper") || (user == "scissors" && computer == "scissors")
        puts "Draw! Let's try again #{insult}!"
    #computer wins
    else computerScore += 1
        puts "You lose #{insult}."   
    end
    #Choices
    puts "#{insult} chose: #{user}"
    puts "Computer chose: #{computer}"
end
    #Winner
    puts userScore > computerScore ? ("#{insult} WINS!"):("HAHAHA I WIN!")
end
