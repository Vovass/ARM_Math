class Formul < ApplicationRecord
  validates :title, :description, presence: true

  has_many :theme_section_formuls, dependent: :destroy
  has_many :theme_sections, through: :theme_section_formuls
end
