class AddSupervisorIdToIntern < ActiveRecord::Migration
  def change
  	add_column :interns, :supervisor_id, :integer
  	add_index :interns, :supervisor_id
  end
end
