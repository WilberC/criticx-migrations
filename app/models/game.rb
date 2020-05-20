class Game < ApplicationRecord
  validates :name, :genre, :price, :release_date, :company_id, presence: true
end