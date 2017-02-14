class GameOwnership < ApplicationRecord
  belongs_to :user
  belongs_to :game
end