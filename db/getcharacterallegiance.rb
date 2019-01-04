require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require_relative 'get.rb'

class GetCharacterAllegiance < Get

  def self.allegiances(id = 1)
    self.books?(id)[:allegiances]
  end

end
