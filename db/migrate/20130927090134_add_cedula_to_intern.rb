class AddCedulaToIntern < ActiveRecord::Migration
  def change
  	add_column :interns, :cedula_profissional, :integer
  end
end
