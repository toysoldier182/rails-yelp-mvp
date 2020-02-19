class Restaurant < ApplicationRecord
  cuisine = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: cuisine }
end
