class AddObsAndLocalToFirstyear < ActiveRecord::Migration
	def change
		add_column :firstyears, :observacoes, :string
		add_column :firstyears, :local, :string
	end
end
