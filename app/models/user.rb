class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	has_secure_password
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :nome,
		presence: { message: "não pode estar em branco" }
	validates :password,
		presence: { message: "não pode estar em branco" },
		on: :create,
		length: { minimum: 5, message: "tem de ter pelo menos 5 caracteres" }
	validates :email,
		presence: { message: "não pode estar em branco" },
		uniqueness: { case_sensitive: false, message: "já existe na base de dados" },
		format: { with: VALID_EMAIL_REGEX, message: "tem de ter o formato 'alias@ulsne.min-saude.pt'" }
end