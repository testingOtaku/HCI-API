class User < ApplicationRecord
  belongs_to :role
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :username, presence: true, length: { minimum: 8 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }, confirmation: true
end
