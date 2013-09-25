class Supervisor < ActiveRecord::Base
	has_many :fymedicines

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: true
#  	validates :especialidade,
#  		presence: true
#  	validates :email,
#		presence: true,
#		format: { with: VALID_EMAIL_REGEX }, 
#  		uniqueness: { case_sensitive: false }
end
