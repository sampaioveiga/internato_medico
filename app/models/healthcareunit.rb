class Healthcareunit < ActiveRecord::Base
	has_many :internships
	has_many :fymedicines
	has_many :fyprimaries
	has_many :fycirurgies
	has_many :fypediatries
	has_many :fychoices

	validates :nome, 
		presence: true
end
