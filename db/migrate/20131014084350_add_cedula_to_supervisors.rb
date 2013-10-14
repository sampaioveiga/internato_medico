class AddCedulaToSupervisors < ActiveRecord::Migration
  def change
  	add_column :supervisors, :cedula_profissional, :integer
  end
end
