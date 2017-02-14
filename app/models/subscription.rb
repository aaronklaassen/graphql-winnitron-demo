class Subscription < ApplicationRecord
  belongs_to :playlist
  belongs_to :arcade_machine

  validates :playlist, :arcade_machine, presence: true
end
