class Task < ApplicationRecord
  validates :title, :description, :theme, presence: true

  belongs_to :theme
end
