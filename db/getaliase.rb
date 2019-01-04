require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require_relative 'get.rb'

class GetAliase < Get

  def self.array(id=1)
    character_hash = self.books?(id)
    character_hash[:aliases]
  end

end
