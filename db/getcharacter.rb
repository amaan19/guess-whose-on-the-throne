require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetCharacter

  def self.obtain_character(id = 1)
    character = RestClient.get("https://www.anapioficeandfire.com/api/characters/#{id}")
    character_hash = JSON.parse(character)
    character_hash
  end

  def self.symbol(id = 1)
    new_hash = {}
    self.obtain_character(id).each do |attr, value|
      if attr == "tvSeries"
        new_hash[:series_debut] = value.first
        new_hash[:final_appearance] = value.last
        new_hash[:number_of_appearances] = value.count
      elsif attr == "playedBy"
        new_hash[:played_by] = value.first
      else
      new_hash[attr.to_sym] = value
      end
    end
    new_hash
  end

  def self.build_character_hash(id = 1)
    character = self.symbol(id)
    character.delete_if do |attr, value|
      value == "" || attr == :url || attr == :povBooks
    end
    character
  end
end
