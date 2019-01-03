class Allegiance < ActiveRecord::Base
  has_many :characters, through: :character_allegiance
end
