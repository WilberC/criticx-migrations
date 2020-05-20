class Company < ApplicationRecord
  validates :name, :country, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 40}
end
