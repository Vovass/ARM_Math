class Scientist < ApplicationRecord
  validates :title, :info, presence: true
end
