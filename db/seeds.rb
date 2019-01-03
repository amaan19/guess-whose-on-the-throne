require_relative '../db/getcharacter.rb'
require_relative '../db/getattribute.rb'
require_relative '../lib/models/character.rb'
require_relative '../lib/models/game.rb'
require_relative '../lib/models/game_character.rb'
require_relative '../lib/models/character_attribute.rb'
require_relative '../lib/models/attribute.rb'




2138.times do |i|
  i += 1
  if GetCharacter.get_name(i).keys.include?(:name)
    Character.create(GetCharacter.get_name(i))
    
  end
end



# Game.create(username: "Harry", score: 122)
# Game.create(username: "Rollo", score: 22)
# Game.create(username: "Sion", score: 10)
# Game.create(username: "Camilla", score: 100)
# Game.create(username: "Bobert", score: 73)
# Game.create(username: "Raudolph", score: 44)
