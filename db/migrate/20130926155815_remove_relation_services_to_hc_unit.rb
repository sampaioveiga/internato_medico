class RemoveRelationServicesToHcUnit < ActiveRecord::Migration
  def change
  	remove_column :services, :healthcareunit_id
  end
end
