class Supervisor < ActiveRecord::Base
	has_many :fymedicines
	has_many :internships

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: true
	validates :cedula_profissional,
		presence: true,
		uniqueness: true
  	validates :especialidade,
  		presence: true
  	validates :email,
		presence: true,
		format: { with: VALID_EMAIL_REGEX }, 
  		uniqueness: { case_sensitive: false }
end
