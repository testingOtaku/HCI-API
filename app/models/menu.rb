class Menu < ApplicationRecord
  belongs_to :restaurant

  has_many :menutag
  has_many :tag, through: :menutag
end
