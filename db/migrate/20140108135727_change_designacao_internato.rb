class ChangeDesignacaoInternato < ActiveRecord::Migration
	def change
		change_column :interns, :designacao_internato, :integer
		rename_column :interns, :designacao_internato, :designacao_internato_id
	end
end
