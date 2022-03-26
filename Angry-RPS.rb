#Hello ask for name
puts "Greetings. What is your name?"
name = gets.chomp
#chooses name for user 
insult = ["Idiot", "Dumbass", "Simpleton", "Stupid"].sample
#make like cpu is thinking
"#{name}...".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
sleep(2)
#make like cpu is thinking
"That doesn't suit you.".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
#pause for effect
sleep(2) 
#acknowledges users new name
puts "\nI'd rather call you #{insult}." 
#pause for effect
sleep(2)
#What the game is/does the user want to play
puts "Would you like to play rock, paper, scissors, #{insult}? [y/n]"
# yes/no/invalid
answer=gets.chomp.downcase
if answer == 'n'
#cpu gets upset
"That makes me angry \n".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
sleep(0.5)
"I just wanted to play a game \n".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
sleep(0.5)
"I won't forget this".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
elsif  answer == 'y'
puts "Me too #{insult}! First to 3."    
#startingscore
computerScore = 0
userScore = 0
#end of game (could go to any number)
until computerScore == 3 || userScore == 3
puts "Rock, paper or scissors?"
user = gets.chomp.downcase
computer = ["rock", "paper", "scissors"].sample
#user winner
if (user == "rock" && computer == "scissors") || (user == "scissors" && computer == "paper") || (user == "paper" && computer == "rock")
"You won #{insult}. You must be cheating!\n".each_char {|c| putc c ; sleep 0.05; $stdout.flush } 
userScore += 1
#tie
elsif (user == "rock" && computer == "rock") || (user == "paper" && computer == "paper") || (user == "scissors" && computer == "scissors")
puts "Draw! Let's try again #{insult}!"
#cpu winner
else computerScore += 1
puts "You lose #{insult}!"   
end
#who chose what
puts "#{insult} chose: #{user}"
puts "Computer chose: #{computer}"
end
#end of game
puts userScore > computerScore ? ("#{insult} is the winner\n" "You probably cheated..."):("HAHAHA" "\nI AM THE WINNNER!")
end
