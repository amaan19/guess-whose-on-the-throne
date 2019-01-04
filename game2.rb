# require_relative 'lib/models/game.rb'
# require_relative 'lib/models/game_character.rb'
# require_relative 'lib/models/character.rb'
require_relative 'config/environment.rb'

def welcome
  puts "When you play the game of thrones you either win or you die. In this game you’ll either win or lose – significantly decreasing the stakes and potential harm to the user"
end

def quiz
  puts "Enter name"
  username = gets.chomp
  $game = Game.new
  $game.score = 0
  $game.username = username
  $game.save
  binding.pry
end

def character_selection
  $character_number = 1
  $wrong_guess_count = 0
  easy_characters = ["Eddard Stark", "Arya Stark", "Bronn", "Brienne of Tarth"]

  $character_selection = easy_characters.shuffle.map {|character|  Character.find_by(name: character)}

  puts "Guess the charcters! You have to guess the Game of Thrones characters.

  Each round consists of either guessing the character or revealing information about them. The more rounds it takes for you to guess the characters, the fewer points you earn. Your rounds reset after you guess the character.

  You will guess a maxiumum of 8 characters, guess them all to maximise your points!

  However, if you guess the wrong character 5 times, it's game over!

  You can view this information by typing ‘Help’ at any time."
end


def new_character

  $known_info = []

  if $character_number == 1
    $current_character = $character_selection[0]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 2
    $current_character = character_selection[1]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 3
    $current_character = character_selection[2]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 4
    $current_character = character_selection[3]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 5
    $current_character = character_selection[4]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 6
    $current_character = character_selection[5]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 7
    $current_character = character_selection[6]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
  elsif $character_number == 8
    $current_character = character_selection[7]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save

  end
end

def new_round
  $round = 1
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
  else puts "Please enter 1, 2, 3 or 4"
    quiz_choices
  end
  puts "Goodbye!"
  break
  end
end

#quiz_choices methods
def guess_character
  puts "Who is it?"
  user_guess = gets.chomp
  if user_guess == $current_character.name
    stage_complete
  elsif $wrong_guess_count == 5
    game_over
  else
    $wrong_guess_count += 1
    $round += 1
    puts "That's not the right answer! You now have #{5 - $wrong_guess_count} guesses remaining."
  end
  quiz_choices
end

def stage_complete
  $character_number += 1
  if $character_number == 8
    game_complete
  elsif $round == 1
        $game.score += 20
    puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
  elsif
    $round == 2
          $game.score += 16
      puts "Nice, you guessed the character in round #{$round}, scoring 16 points! Your total score is now #{$game.score}. On to the next one!"
    elsif $round == 3
            $game.score += 12
        puts "Nice, you guessed the character in round #{$round}, scoring 12 points! Your total score is now #{$game.score}. On to the next one!"
      elsif $round == 4
              $game.score += 8
          puts "Nice, you guessed the character in round #{$round}, scoring 8 points! Your total score is now #{$game.score}. On to the next one!"
        elsif $round == 5
                $game.score += 6
            puts "Nice, you guessed the character in round #{$round}, scoring 6 points! Your total score is now #{$game.score}. On to the next one!"
          elsif $round == 6
                  $game.score += 4
              puts "Nice, you guessed the character in round #{$round}, scoring 4 points! Your total score is now #{$game.score}. On to the next one!"
    new_character
    new_round
    quiz_choices
  end
end

def game_over
  puts "Sorry, you've used up all your guesses! It's game over – at least you didn't lose your head! Your final score is #{$game.score}.

  Check out the leaderboard and see if you got into the top 10."
  sleep(3)
  hi_score
end

def game_complete
  $game.score += 20
  puts "Amazing, you guessed all the characters, scoring 20 points automatically!

  Your final score is #{$game.score}!
  Check out the leaderboard and see if you got into the top 10."
  sleep(3)
  hi_score
end

def hi_score
  $game.save
end

#quiz_choices methods end

#reveal info methods

def character_info
  puts "What would you like to know?"

  if $round == 1
  puts
  "1. Marital status
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
end









  quiz
  character_selection
  new_character
  new_round
  quiz_choices
