class Branch < ApplicationRecord
  belongs_to :restaurant
  belongs_to :city
  belongs_to :area
end
