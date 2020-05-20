class Critic < ApplicationRecord
  belongs_to :game
  validates :username, length: {minimum: 2, maximum: 12}
  validates :user_name, with: /^[A-Za-z0-9]+$/
  validates :title, :body, presence: {message: 'Please write something!'}
end
