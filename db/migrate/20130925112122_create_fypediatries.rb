class CreateFypediatries < ActiveRecord::Migration
  def change
    create_table :fypediatries do |t|
      t.references :supervisor, index: true
      t.references :firstyear, index: true
      t.date :data_inicio
      t.date :data_fim
      t.integer :nota

      t.timestamps
    end
  end
end
