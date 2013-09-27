class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.string :nome
      t.references :supervisor, index: true
      t.references :healthcareunit, index: true
      t.references :service, index: true
      t.string :estado
      t.date :data_inicio
      t.date :data_fim
      t.string :observacoes
      t.integer :nota

      t.timestamps
    end
  end
end
