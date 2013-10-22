class AddIndexToCedulaSupervisors < ActiveRecord::Migration
	def change
		add_index :supervisors, :cedula_profissional, unique: true
	end
end
