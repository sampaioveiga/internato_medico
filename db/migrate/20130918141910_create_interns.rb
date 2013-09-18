class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :nome
      t.integer :numero_mecanografico
      t.integer :telefone
      t.integer :telemovel
      t.string :email

      t.timestamps
    end
  end
end
