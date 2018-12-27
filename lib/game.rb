# => User score needs to be tracked at all times
user_score = 0
# => Track round number to track number of guesses - to include in success message - and show different character info for different rounds
round_number = 0

# random_chatacter = randomiser + API info

def welcome
  puts "When you play the game of thrones you either win or  you die. In this game you’ll either win or lose – significantly decreasing the stakes and potential harm to the user"
end

def options
  puts "Choose from the following options
        1. Quiz
        2. Help
        3. Quit"
end

def help
  puts "1. Rules: See how to play the game
        2. Help: Display this message again
        3. Quit: Exit the game"
      end

def quiz
  puts "You’re acting Hand of the Queen; rebellion and betrayal are rife in the Kingdom and a plot to overthrow the Queen is afoot. The rebel leader lurks in our midst – is it a long-time foe? Or dearest of friend? It’s your job to discover the identity of this traitor and bring them to justice. After all, treason is treason.”


  “You start with 20 points and can either take a guess at who the traitor is or reveal information about them. An incorrect guess will deduct 5 points, revealing information about the traitor deducts 2 points. Guess the correct answer and you get bonus points depending on how many guesses it took. Earn enough points to top the leaderboard!”

  “You can view this information and find more tips by typing ‘Help’ at any time.

  Now choose an option:
        1. Guess the character
        2. Reveal character information
        3. Show known information"
end




user_response1 = ''
welcome
options
user_response1 = gets.chomp
if user_response1 = 1
  quiz_rules
  quiz
