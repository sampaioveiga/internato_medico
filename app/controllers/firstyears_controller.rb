class FirstyearsController < ApplicationController
	before_action :load_intern
	before_action :require_login

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
			flash[:success] = 'Ano comum atualizado'
			redirect_to @intern
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.destroy
		flash[:error] = 'Ano comum eliminado'
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def firstyear_params
			params.require(:firstyear).permit(:ano, :local, :observacoes)
		end

		def require_login
      		unless logged_in?
        		redirect_to login_path
      		end
    	end

    	def logged_in?
      		!!current_user
    	end
end
