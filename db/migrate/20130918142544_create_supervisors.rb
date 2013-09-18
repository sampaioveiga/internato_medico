class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :nome
      t.string :especialidade
      t.integer :telefone
      t.integer :telemovel
      t.string :email

      t.timestamps
    end
  end
end
