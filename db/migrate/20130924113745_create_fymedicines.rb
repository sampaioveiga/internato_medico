class CreateFymedicines < ActiveRecord::Migration
  def change
    create_table :fymedicines do |t|
      t.references :supervisor, index: true
      t.references :firstyear, index: true
      t.date :data_inicio
      t.date :data_fim

      t.timestamps
    end
  end
end
