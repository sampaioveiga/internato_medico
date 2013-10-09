class FypediatriesController < ApplicationController
	before_action :load_intern

	def create
		@intern.firstyear.create_fypediatry(fypediatry_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.fypediatry.update_attributes(fypediatry_params)
			redirect_to @intern, notice: "Estágio de pediatria atualizado"
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.fypediatry.destroy
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def fypediatry_params
			params.require(:fypediatry).permit(:data_inicio, :data_fim, :supervisor_id, :nota)
		end
end