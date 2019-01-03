class Game < ActiveRecord::Base
  has_many :characters, through: :game_character
end
