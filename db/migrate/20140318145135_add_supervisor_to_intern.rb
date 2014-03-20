class AddSupervisorToIntern < ActiveRecord::Migration
	def change
		add_column :interns, :supervisor_id, :integer
		remove_column :internships, :supervisor_id
	end
end
