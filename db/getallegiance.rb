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
    house_name[:house] = self.obtain_house(id)["name"]
    house_name
  end
end
