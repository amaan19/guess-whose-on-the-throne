require_relative 'getcharacter.rb'
require_relative 'getattribute.rb'
require_relative 'gettitle.rb'
require_relative 'getaliase.rb'
require_relative 'getallegiance.rb'
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


# 2137.times do |i|
40.times do |i|
  i += 1
  if GetCharacter.build_character_hash(i).keys.include?(:name)
    Character.create(GetCharacter.build_character_hash(i))
  end
end

$counter1 = 0
# 2137.times do |i|
40.times do |i|
  i += 1
  if GetCharacter.build_character_hash(i).keys.include?(:name)
    $counter1 += 1
    array = GetTitle.array(i)
    if array.first != ""
      array.each {|v| Title.create(title: v, character_id: $counter1)}
    end
  end
end

$counter2 = 0
# 2137.times do |i|
40.times do |i|
  i += 1
  if GetCharacter.build_character_hash(i).keys.include?(:name)
    $counter2 += 1
    array = GetAliase.array(i)
    if array.first != ""
      array.each {|aliase| Aliase.create(name: aliase, character_id: $counter2)}
    end
  end
end

# 443.times do |i|
40.times do |i|
  i += 1
  hash = GetAllegiance.get_name(i)
  hash.each {|k, v| Allegiance.create(house: v)}
end

# Game.create(username: "Harry", score: 122)
# Game.create(username: "Rollo", score: 22)
# Game.create(username: "Sion", score: 10)
# Game.create(username: "Camilla", score: 100)
# Game.create(username: "Bobert", score: 73)
# Game.create(username: "Raudolph", score: 44)
