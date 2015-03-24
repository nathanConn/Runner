class Character < ActiveRecord::Base
	has_many :skills
	has_many :weapons
	has_many :armors
	has_many :gears
	has_many :biowares
end
