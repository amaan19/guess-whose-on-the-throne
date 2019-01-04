require 'pry'
require_relative '../../config/environment.rb'

class Game < ActiveRecord::Base
  has_many :characters, through: :game_character

  def self.leaderboard
    leaderboard = self.all.order(score: :desc).limit(10)
    tp leaderboard, :username, :score
  end

  def self.theme
    system "afplay -t 7 /Users/harryturner/Downloads/got_theme.mp3"
  end
end
