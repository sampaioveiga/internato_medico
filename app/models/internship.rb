class Internship < ActiveRecord::Base
	belongs_to :intern
	belongs_to :supervisor
	belongs_to :healthcareunit
	belongs_to :service

	validates :nome, 
		presence: { message: "não pode estar em branco" }
	validate :data_fim_cannot_be_before_data_inicio

	def data_fim_cannot_be_before_data_inicio
		if data_fim < data_inicio
			errors.add(:data_fim, "não pode ser anterior à Data inicio")
		end
	end
end
