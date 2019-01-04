require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require_relative 'get.rb'

class GetCharacter < Get

  def self.build_character_hash(id = 1)
    character_hash = self.books?(id)
    character_hash.delete_if do |attr, value|
      value == "" || attr == :url || attr == :povBooks || value.class == Array || attr == :father || attr == :mother
    end
    character_hash
  end

end
