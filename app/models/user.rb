class User < ApplicationRecord
  validates :name, presence: true

  has_many :machine_ownerships, dependent: :destroy
  has_many :arcade_machines, through: :machine_ownerships

  has_many :game_ownerships, dependent: :destroy
  has_many :games, through: :game_ownerships

  has_many :playlists
  has_many :links, as: :parent, dependent: :destroy
end
