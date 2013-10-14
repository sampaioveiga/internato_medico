class AddLocalToFy < ActiveRecord::Migration
  def change
  	add_column :fymedicines, :healthcareunit_id, :integer
  	add_column :fyprimaries, :healthcareunit_id, :integer
  	add_column :fycirurgies, :healthcareunit_id, :integer
  	add_column :fypediatries, :healthcareunit_id, :integer
  	add_column :fychoices, :healthcareunit_id, :integer
  end
end
