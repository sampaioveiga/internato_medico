class ChangeDesignacaoEspeciadalidadeNome < ActiveRecord::Migration
	def change
		remove_column :interns, :designacao_internato_id
		add_column :interns, :internship_name_id, :integer
		#rename_column :interns, :designacao_internato_id, :internship_name_id
	end
end
