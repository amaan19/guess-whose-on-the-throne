class Character < ActiveRecord::Base
  has_many :games, through: :game_character
  has_many :allegiances, through: :character_allegiance
  has_many :aliases
  has_many :titles
end
