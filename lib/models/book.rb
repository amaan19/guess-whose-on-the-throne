class Book < ActiveRecord::Base
  has_many :characters, through: :character_book
end
