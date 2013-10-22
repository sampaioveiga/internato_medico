class AddIndexToNmecanograficoCedula < ActiveRecord::Migration
	def change
		add_index :interns, :cedula_profissional, unique: true
		add_index :interns, :numero_mecanografico, unique: true
	end
end
