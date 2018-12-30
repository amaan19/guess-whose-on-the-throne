require 'rest-client'
require 'json'
require 'pry'

def got_info
  response = RestClient.get("https://anapioficeandfire.com/api/characters")
  response_hash = JSON.parse(response)
end
# => User score needs to be tracked at all times
$user_score = 10
# => Track round number to track number of guesses - to include in success message - and show different character info for different rounds
$round_number = 0

# random_chatacter = randomiser + API info
$random_character = "Eddard Stark"

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

# quiz methods
def guess_character
  random_character = "Ned Stark"
  user_guess = gets.chomp
  if user_guess == random_character
    win
  else puts "That's not the right answer! Try again"
    $user_score -= 2
    quiz
  end
end

def win
  $user_score += 10
  puts "That's the right answer! Your final score is #{$user_score}"
end

def character_info
  puts "What would you like to know?
  1. Marital status
  2. 1st appearance
  3. Dead or alive?"

  choice = gets.chomp

    choice == "1"
end

def known_information
  puts "This is what you know"
end

def quit
  puts "Goodbye"
end

def quiz
  puts "You’re acting Hand of the Queen; rebellion and betrayal are rife in the Kingdom and a plot to overthrow the Queen is afoot. The rebel leader lurks in our midst – is it a long-time foe? Or dearest of friend? It’s your job to discover the identity of this traitor and bring them to justice. After all, treason is treason.


  You start with 20 points and can either take a guess at who the traitor is or reveal information about them. An incorrect guess will deduct 5 points, revealing information about the traitor deducts 2 points. Guess the correct answer and you get bonus points depending on how many guesses it took. Earn enough points to top the leaderboard!

  You can view this information and find more tips by typing ‘Help’ at any time.

  Now choose an option:
        1. Guess the character
        2. Reveal character information
        3. Show score and known information
        4. Quit"

        user_response = gets.chomp

        while user_response != "4"
        if user_response == "1"
          guess_character
      elsif user_response == "2"
        character_info
      elsif user_response == "3"
        known_information
      elsif user_response == "4"
        quit
        break
      end
    end

end

binding.pry
wdw

# run method
# user_response1 = ''
# welcome
# options
# user_response1 = gets.chomp
# if user_response1 == 1
#   quiz
#   user_response2 = gets.chomp
