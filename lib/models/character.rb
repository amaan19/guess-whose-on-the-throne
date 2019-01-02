class Character < ActiveRecord::Base
  has_many :games, through: :game_character
end
