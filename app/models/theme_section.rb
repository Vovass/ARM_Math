class ThemeSection < ApplicationRecord
  validates :title, presence: true

  belongs_to :theme
  has_many :theme_section_formuls, dependent: :destroy
  has_many :formuls, through: :theme_section_formuls

  has_many :theme_section_theorems, dependent: :destroy
  has_many :theorems, through: :theme_section_theorems
end
