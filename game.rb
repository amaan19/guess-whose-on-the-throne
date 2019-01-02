require 'rest-client'
require 'json'
require 'pry'

# TEST DATA
# => User score needs to be tracked at all times
$user_score = 10
# => Track round number to track number of guesses - to include in success message - and show different character info for different rounds
$round_number = 0
$random_character = "Walder"

$known_info = []

def welcome
  puts "When you play the game of thrones you either win or you die. In this game you’ll either win or lose – significantly decreasing the stakes and potential harm to the user"

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
  user_guess = gets.chomp
  if user_guess == $random_character
    win
  else $score -= 5
    puts "That's not the right answer! You've lost 5 points making your score #{$score}. Try again."

  end
  $game.round += 1
  quiz_choices
end

def win
  $score += 10
  puts "That's the right answer! Your final score is #{$score}"
end

def character_info
  puts "What would you like to know?
  1. Marital status
  2. 1st appearance
  3. Dead or alive?"

  choice = gets.chomp

  if choice == "1"
  marital_status

elsif choice == "2"

  first_appearance
elsif choice == "3"
  dead_or_alive
  end
quiz_choices
end

def known_information
  $known_info.uniq.each {|info|
    puts "#{info}"
  }
  puts "Your current score is #{$score}."
  sleep(3)
  quiz_choices
end

def quiz
  puts "You’re acting Hand of the Queen; rebellion and betrayal are rife in the Kingdom and a plot to overthrow the Queen is afoot. The rebel leader lurks in our midst – is it a long-time foe? Or dearest of friend? It’s your job to discover the identity of this traitor and bring them to justice. After all, treason is treason.

  You start with 20 points and can either take a guess at who the traitor is or reveal information about them. An incorrect guess will deduct 5 points, revealing information about the traitor deducts 2 points. Guess the correct answer and you get bonus points depending on how many guesses it took. Earn enough points to top the leaderboard!

  You can view this information and find more tips by typing ‘Help’ at any time."

  $character = Character.find(1..2000)
  $game = Game.new
  $score = Score.new


end

def quiz_choices
  puts "Now choose an option:
        1. Guess the character
        2. Reveal character information
        3. Show score and known character information
        4. Quit"

        user_response = gets.chomp

        until user_response == "4"
        if user_response == "1"
          guess_character
      elsif user_response == "2"
        character_info
      elsif user_response == "3"
        known_information
    end
    puts "Goodbye!"
    break
  end
end



quiz_choices




# run method
# user_response1 = ''
# welcome
# options
# user_response1 = gets.chomp
# if user_response1 == 1
#   quiz
#   user_response2 = gets.chomp
