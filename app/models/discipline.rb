class Discipline < ApplicationRecord
  validates :title, :description, presence: true

  has_many :themes, dependent: :destroy
end
