class Tag < ApplicationRecord
	has_many :menutag
	has_many :menu, through: :menutag
end
