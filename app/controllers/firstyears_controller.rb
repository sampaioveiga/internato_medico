class FirstyearsController < ApplicationController
	before_action :load_intern

	def show
	end

	def create
		@intern.create_firstyear(firstyear_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.update_attributes(firstyear_params)
			redirect_to @intern, notice: 'Ano Comum atualizado'
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.destroy

		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def firstyear_params
			params.require(:firstyear).permit(:ano, :local, :observacoes)
		end
end
