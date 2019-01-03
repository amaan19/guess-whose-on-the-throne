class Character < ActiveRecord::Base
  has_many :games, through: :game_character
  has_many :allegiances, through: :character_allegiance
  has_many :attrs, through: :character_attr
  has_many :books, through: :character_book
  has_many :aliases
  has_many :titles
end
