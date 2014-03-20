class Fycirurgy < ActiveRecord::Base
	belongs_to :supervisor
	belongs_to :firstyear
	belongs_to :healthcareunit

	validate :data_fim_cannot_be_prior_to_data_inicio

	def data_fim_cannot_be_prior_to_data_inicio
		if data_fim.present? && data_fim < data_inicio
			errors.add(:data_fim, "não pode ser anterior a #{data_inicio}")
		end
	end
end
