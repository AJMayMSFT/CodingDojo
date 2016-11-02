class Blog < ApplicationRecord
  validates :name, :description, presence: true
  has_many :posts
  has_many :messages, through: :posts
end
