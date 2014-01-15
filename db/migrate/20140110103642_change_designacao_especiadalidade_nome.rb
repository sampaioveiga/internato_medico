class ChangeDesignacaoEspeciadalidadeNome < ActiveRecord::Migration
	def change
		rename_column :interns, :designacao_internato_id, :internship_name_id
	end
end
