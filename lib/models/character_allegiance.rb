class CharacterAllegiance < ActiveRecord::Base
  belongs_to :character
  belongs_to :allegiance
end
