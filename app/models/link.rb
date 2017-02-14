class Link < ApplicationRecord
  TYPES = ["Website", "Twitter", "Something Else"]

  belongs_to :parent, polymorphic: true

  validates :url, presence: true

  default_scope -> { order(id: :asc) }
end