class ChangeDesignacaoInternato < ActiveRecord::Migration
	def change
		remove_column :interns, :designacao_internato
		add_column :interns, :designacao_internato_id, :integer
		#change_column :interns, :designacao_internato, :integer
		#rename_column :interns, :designacao_internato, :designacao_internato_id
	end
end
