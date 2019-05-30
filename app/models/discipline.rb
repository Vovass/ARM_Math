class Discipline < ApplicationRecord
  validates :title, :description, presence: true

  has_many :themes
end
