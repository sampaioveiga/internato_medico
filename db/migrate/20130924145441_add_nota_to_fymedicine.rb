class AddNotaToFymedicine < ActiveRecord::Migration
  def change
  	add_column :fymedicines, :nota, :integer
  end
end
