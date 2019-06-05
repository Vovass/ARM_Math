class Theme < ApplicationRecord
  validates :title, :discipline, presence: true

  belongs_to :discipline
  has_many :theme_sections, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
