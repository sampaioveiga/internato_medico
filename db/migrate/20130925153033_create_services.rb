class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nome
      t.references :healthcareunit, index: true

      t.timestamps
    end
  end
end
