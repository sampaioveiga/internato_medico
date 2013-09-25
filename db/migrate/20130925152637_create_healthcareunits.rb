class CreateHealthcareunits < ActiveRecord::Migration
  def change
    create_table :healthcareunits do |t|
      t.string :nome

      t.timestamps
    end
  end
end
