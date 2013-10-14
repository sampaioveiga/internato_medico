class AddNotasToAnoComum < ActiveRecord::Migration
  def change
  	add_column :interns, :nota_media, :integer
  	add_column :interns, :nota_final_exame, :integer
  end
end
