class InternshipsController < ApplicationController
	before_action :load_intern

	def new
	end

	def create
		@internship = @intern.internships.create(internship_params)
		flash[:success] = 'Novo estágio de especialidade criado'
		redirect_to @intern
	end

	def edit
		@internship = @intern.internships.find(params[:id])
	end

	def update
		@internship = @intern.internships.find(params[:id])

		if @internship.update_attributes(internship_params)
			flash[:success] = 'Estágio de especialidade atualizado'
			redirect_to @intern
		else
			render 'edit'
		end
	end

	def destroy
		@internship = @intern.internships.find(params[:id])
		@internship.destroy
		flash[:error] = 'Estágio de especialidade eliminado'
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def internship_params
			params.require(:internship).permit(:nome, :supervisor_id, :healthcareunit_id, :service_id, :estado, :data_inicio, :data_fim, :nota, :observacoes)
		end
end
