require_relative '../db/getcharacter.rb'
require_relative '../lib/models/character.rb'

2138.times do |i|
  i += 1
  if GetCharacter.build_character_hash(i).keys.include?(:name)
    Character.create(GetCharacter.build_character_hash(i))
  end
end
