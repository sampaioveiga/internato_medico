class Supervisor < ActiveRecord::Base
	has_many :fymedicines
	has_many :internships

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: { message: "não pode estar em branco" }
	validates :cedula_profissional,
		presence: { message: "não pode estar em branco" },
		uniqueness: { message: "já existe na base de dados" }
  	validates :especialidade,
  		presence: { message: "não pode estar em branco" }
  	validates :email,
		presence: { message: "não pode estar em branco" },
		format: { with: VALID_EMAIL_REGEX, message: "tem de ter o formato 'alias@ulsne.min-saude.pt'" }, 
  		uniqueness: { case_sensitive: false, message: "já existe na base de dados" }
end
