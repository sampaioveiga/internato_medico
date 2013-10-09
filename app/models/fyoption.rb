class Fyoption < ActiveRecord::Base
	has_many :fychoices

	validates :nome, 
		presence: true
end
