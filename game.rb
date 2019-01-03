require 'rest-client'
require 'json'
require 'pry'

# TEST DATA
# => User score needs to be tracked at all times
$pool = ["Eddard Stark", "Arya Stark", "Bronn", "Brienne of Tarth"]
# => Track round number to track number of guesses - to include in success message - and show different character info for different rounds
$round_number = 0
$random_character = "Walder"

$known_info = []

def generate_characters_to_guess
  Character.all.select {|character| }

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

def selecting_characters
  character_list = GameCharacter.new
  $characters = $pool.shuffle.map {|character| Character.find_by(name: character)}
  $characters.new.each {|character| character_list.character_id = }

def guess_character
  "Who is it?"
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
  puts "Guess the charcters! You have to guess the Game of Thrones characters."

  "Each round consists of either guessing the character or revealing information about them. The more rounds it takes for you to guess the characters, the fewer points you earn. Your rounds reset after you guess the character.

  You will guess a maxiumum of 8 characters, guess them all to maximise your points!

  However, if you guess the wrong character 5 times, it's game over!

  You can view this information by typing ‘Help’ at any time."


  $characters = $pool.shuffle.map {|character| Character.find_by(name: character)}

  $game = Game.new





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
