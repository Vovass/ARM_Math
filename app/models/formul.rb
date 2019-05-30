class Formul < ApplicationRecord
  has_many :theme_sections_formuls
  has_many :theme_sections, through: :theme_sections_formuls
end
