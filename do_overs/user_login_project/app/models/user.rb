class User < ApplicationRecord
  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :age, presence: true
  validates_numericality_of :age, greater_than: 10
  validates_numericality_of :age, less_than: 150
  validates :email, presence: true
end
