class FycirurgiesController < ApplicationController
	before_action :load_intern

	def create
		@intern.firstyear.create_fycirurgy(fycirurgy_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.fycirurgy.update_attributes(fycirurgy_params)
			redirect_to @intern, notice: "Estágio de cirurgia atualizado"
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.fycirurgy.destroy
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def fycirurgy_params
			params.require(:fycirurgy).permit(:data_inicio, :data_fim, :supervisor_id, :nota, :healthcareunit_id)
		end
end
