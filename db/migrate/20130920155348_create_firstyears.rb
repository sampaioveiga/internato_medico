class CreateFirstyears < ActiveRecord::Migration
  def change
    create_table :firstyears do |t|
      t.references :intern, index: true
      t.integer :ano

      t.timestamps
    end
  end
end
