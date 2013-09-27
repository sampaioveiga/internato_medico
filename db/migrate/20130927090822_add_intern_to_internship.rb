class AddInternToInternship < ActiveRecord::Migration
  def change
  	add_column :internships, :intern_id, :integer
  end
end
