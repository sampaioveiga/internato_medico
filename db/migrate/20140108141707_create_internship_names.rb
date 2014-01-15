class CreateInternshipNames < ActiveRecord::Migration
	def change
		create_table :internship_names do |t|
			t.string :nome

			t.timestamps
		end
	end
end
