class User < ApplicationRecord
  has_secure_password
  has_many :messages
  has_many :comments
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  validates :first_name, :last_name, length:{ minimum: 2 }, format: { with: /\A[a-zA-Z]+\z/ }
  validates :password, length: { minimum: 6 }

  def full_name
    self.first_name + " " + self.last_name
  end

end
