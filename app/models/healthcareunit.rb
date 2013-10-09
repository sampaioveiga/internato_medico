class Healthcareunit < ActiveRecord::Base
	has_many :internships

	validates :nome, 
		presence: true
end
