class Service < ActiveRecord::Base
	has_many :internships

	validates :nome, 
		presence: { message: "não pode estar em branco" }
end
