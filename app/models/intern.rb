class Intern < ActiveRecord::Base
	has_one :firstyear, validate: true, dependent: :destroy
  belongs_to :internship_name
	has_many :internships, dependent: :destroy
	#self.per_page = 2
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: { message: "não pode estar em branco" }
  	validates :numero_mecanografico,
  		presence: { message: "não pode estar em branco" },
  		numericality: { message: "não pode conter texto" },
  		length: { is: 5, message: "tem de ter 5 números" },
  		uniqueness: { message: "já existe na base de dados" }
  	validates :cedula_profissional,
  		presence: { message: "não pode estar em branco" },
  		uniqueness: { message: "já existe na base de dados" }
  	validates :email,
        format: { with: VALID_EMAIL_REGEX, message: "tem de ter o formato 'alias@ulsne.min-saude.pt'" }, 
  		uniqueness: { case_sensitive: false, message: "já existe na base de dados" }
end
