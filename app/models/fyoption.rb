class Fyoption < ActiveRecord::Base
	has_many :fychoices

	validates :nome, 
		presence: { message: "não pode estar em branco" }
end
