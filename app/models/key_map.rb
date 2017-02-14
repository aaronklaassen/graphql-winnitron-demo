class KeyMap < ApplicationRecord
  enum template: [:default, :custom, :legacy, :flash, :pico8]

  belongs_to :game
end