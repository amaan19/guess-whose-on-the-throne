class Attr < ActiveRecord::Base
  has_many :characters, through: :character_attr
end
