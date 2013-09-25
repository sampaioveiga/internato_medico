class CreateFyoptions < ActiveRecord::Migration
  def change
    create_table :fyoptions do |t|
      t.string :nome

      t.timestamps
    end
  end
end
