class Theme < ApplicationRecord
  validates :title, presence: true

  belongs_to :discipline
  has_many :theme_sections
end
