class ThemeSection < ApplicationRecord
  validates :title, presence: true

  belongs_to :theme
  has_many :theme_sections_formuls
  has_many :formuls, through: :theme_sections_formuls

end
