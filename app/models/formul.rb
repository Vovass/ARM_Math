class Formul < ApplicationRecord
  has_many :theme_section_formuls
  has_many :theme_sections, through: :theme_section_formuls
end
