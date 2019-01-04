require 'pry'
require_relative '../../config/environment.rb'

class Character < ActiveRecord::Base
  has_many :games, through: :game_character
  has_many :allegiances, through: :character_allegiance
  has_many :aliases
  has_many :titles

  def self.select
    easy_characters = self.all.order(number_of_appearances: :desc).limit(4)
    character_selection = easy_characters.shuffle.sample
    character_selection[:name]
  end
end
