class AddInternshipDesignationToIntern < ActiveRecord::Migration
	def change
		add_column :interns, :designacao_internato, :string
	end
end
