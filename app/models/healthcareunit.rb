class Healthcareunit < ActiveRecord::Base
	has_many :internships, dependent: :nullify
	has_many :fymedicines
	has_many :fyprimaries
	has_many :fycirurgies
	has_many :fypediatries
	has_many :fychoices

	validates :nome, 
		presence: { message: "não pode estar vazio" }
end
