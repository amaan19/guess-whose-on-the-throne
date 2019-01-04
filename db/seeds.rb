require_relative 'getcharacter.rb'
require_relative 'gettitle.rb'
require_relative 'getaliase.rb'
require_relative 'getallegiance.rb'
require_relative 'getcharacterallegiance.rb'
# require_relative '../lib/models/character.rb'
# require_relative '../lib/models/game.rb'
# # require_relative '../lib/models/game_character.rb'
# # require_relative '../lib/models/character_attr.rb'
# # require_relative '../lib/models/book.rb'
# # require_relative '../lib/models/character_allegiance.rb'
# # require_relative '../lib/models/character_book.rb'
# # require_relative '../lib/models/allegiance.rb'
# require_relative '../lib/models/title.rb'
# # require_relative '../lib/models/aliase.rb'
require_relative '../config/environment.rb'


2137.times do |i|
  i += 1
  if i != 1508 || i != 1509 || i != 1510 || i != 1511
    if GetCharacter.build_character_hash(i).keys.include?(:name)
      Character.create(GetCharacter.build_character_hash(i))
    end
  end
end

$counter1 = 0
2137.times do |i|
  i += 1
  if i != 1508 || i != 1509 || i != 1510 || i != 1511
    if GetCharacter.build_character_hash(i).keys.include?(:name)
      $counter1 += 1
      array = GetTitle.array(i)
      if array.first != ""
        array.each {|v| Title.create(title: v, character_id: $counter1)}
      end
    end
  end
end

$counter2 = 0
2137.times do |i|
  i += 1
  if i != 1508 || i != 1509 || i != 1510 || i != 1511
    if GetCharacter.build_character_hash(i).keys.include?(:name)
      $counter2 += 1
      array = GetAliase.array(i)
      if array.first != ""
        array.each {|aliase| Aliase.create(name: aliase, character_id: $counter2)}
      end
    end
  end
end


443.times do |i|
  i += 1
  Allegiance.create(GetAllegiance.get_name(i))
end

Allegiance.create(:house => "No Allegiance")

$counter3 = 0
2137.times do |i|
  i += 1
  if i != 1508 || i != 1509 || i != 1510 || i != 1511
    if GetCharacter.build_character_hash(i).keys.include?(:name)
      n = 0
      $counter3 += 1
      array = GetCharacterAllegiance.allegiances(i)
      if array.first == "No Allegiance"
        CharacterAllegiance.create(character_id: $counter3, allegiance_id: 444)
      else
        while n < array.count
          CharacterAllegiance.create(character_id: $counter3, allegiance_id: Allegiance.where(house: array[n]).ids.first)
          n += 1
        end
      end
    end
  end
end

# Game.create(username: "Harry", score: 122)
# Game.create(username: "Rollo", score: 22)
# Game.create(username: "Sion", score: 10)
# Game.create(username: "Camilla", score: 100)
# Game.create(username: "Bobert", score: 73)
# Game.create(username: "Raudolph", score: 44)
