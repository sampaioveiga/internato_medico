class Intern < ActiveRecord::Base
	has_one :firstyear, validate: true, dependent: :destroy
	has_many :internships, dependent: :destroy
	#self.per_page = 2
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: true
  	validates :numero_mecanografico,
  		presence: true,
  		numericality: true,
  		length: { is: 5 }
  	validates :cedula_profissional,
  		presence: true
  	validates :email,
		format: { with: VALID_EMAIL_REGEX }, 
  		uniqueness: { case_sensitive: false }
end
