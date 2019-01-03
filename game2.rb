def quiz
  puts "Enter name"
  username = gets.chomp
  $game = Game.new
  $game.username = username
end

def character_selection
  $character_number = 1
  $wrong_guess_count = 0
  easy_characters = ["Eddard Stark", "Arya Stark", "Bronn", "Brienne of Tarth"]

  $character_selection = easy_characters.shuffle.map {|character|  Character.find_by(name: character)}
end


def new_character

  $known_info = []

  if $character_number == 1
    $current_character = character_selection[0]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
  elsif $character_number == 2
    $current_character = character_selection[1]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
  elsif $character_number == 3
    $current_character = character_selection[2]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
  elsif $character_number == 4
    $current_character = character_selection[3]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id.save
      $known_info = []
  elsif $character_number == 5
    $current_character = character_selection[4]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
  elsif $character_number == 6
    $current_character = character_selection[5]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
  elsif $character_number == 7
    $current_character = character_selection[6]
    GameCharacter.new(character_id: $current_character.id, game_id: $game.id).save
    $known_info = []
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
  end
  puts "Goodbye!"
  break
  end
end

#quiz_choices methods
def guess_character
  puts "Who is it?"
  user_guess = gets.chomp
  if user_guess == $current_character
    stage_complete
  elsif $wrong_guess_count == 5
    game_over
  else
    $wrong_guess_count += 1
    $round += 1
    puts "That's not the right answer! You now have #{5 - $wrong_guess_count} guesses remaining."
  end
  $game.round += 1
  quiz_choices
end

def stage_complete
  $character_number += 1
  if $character_number == 8
    game_complete
  elsif $round = 1
        $game.score += 20
    puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
  elsif
    $round = 1
          $game.score += 16
      puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
      $round = 2
            $game.score += 12
        puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
        $round = 3
              $game.score += 8
          puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
          $round = 4
                $game.score += 6
            puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
            $round = 5
                  $game.score += 4
              puts "Nice, you guessed the character in round #{$round}, scoring 20 points! Your total score is now #{$game.score}. On to the next one!"
    new_character
    new_round
    quiz_choices
  end
end

def game_over



def game_complete
  puts "Amazing, you guessed all the characters!"
  $game.score +=
end
