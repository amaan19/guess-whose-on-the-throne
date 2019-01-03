require 'rest-client'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetAllegiance
  def self.obtain_house(id = 1)
    houses = RestClient.get("https://www.anapioficeandfire.com/api/houses/#{id}")
    house_hash = JSON.parse(houses)
    house_hash
  end

  def self.get_name(id = 1)
    house_name = {}
    house_name[:name] = self.obtain_house[:name]
    house_name
    # house_hash = self.obtain_house(id)
    # house_hash.each do |attr, value|
    #   if attr == :name
    #     house_name[attr] = value
    #     binding.pry
    #   end
    # end
    # house_name
    # # binding.pry
  end
end

GetAllegiance.get_name
binding.pry
p 'eof'
