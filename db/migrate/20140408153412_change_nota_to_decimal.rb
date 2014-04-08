class ChangeNotaToDecimal < ActiveRecord::Migration
	def change
		remove_column :internships, :nota
		add_column :internships, :nota, :decimal
		remove_column :fychoices, :nota
		add_column :fychoices, :nota, :decimal
		remove_column :fycirurgies, :nota
		add_column :fycirurgies, :nota, :decimal
		remove_column :fymedicines, :nota
		add_column :fymedicines, :nota, :decimal
		remove_column :fypediatries, :nota
		add_column :fypediatries, :nota, :decimal
		remove_column :fyprimaries, :nota
		add_column :fyprimaries, :nota, :decimal
	end
end
