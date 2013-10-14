class FychoicesController < ApplicationController
	before_action :load_intern

	def create
		@intern.firstyear.create_fychoice(fychoice_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.fychoice.update_attributes(fychoice_params)
			redirect_to @intern, notice: "Estágio de #{@intern.firstyear.fychoice.fyoption.nome} atualizado"
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.fychoice.destroy
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def fychoice_params
			params.require(:fychoice).permit(:data_inicio, :data_fim, :supervisor_id, :nota, :fyoption_id, :healthcareunit_id)
		end
end
