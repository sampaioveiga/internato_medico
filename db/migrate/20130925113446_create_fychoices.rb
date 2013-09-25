class CreateFychoices < ActiveRecord::Migration
  def change
    create_table :fychoices do |t|
      t.references :supervisor, index: true
      t.references :firstyear, index: true
      t.date :data_inicio
      t.date :data_fim
      t.integer :nota
      t.references :fyoption, index: true

      t.timestamps
    end
  end
end
