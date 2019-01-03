require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require_relative 'get.rb'

class GetTitle < Get

  def self.array(id=1)
    character_hash = self.books?(id)
    character_hash[:titles]
    # binding.pry
  end

end
#
# GetTitle.array
# binding.pry
# p 'eof'
