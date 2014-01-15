class InternshipNamesController < ApplicationController
	before_action :set_internship_name, only: [:show, :edit, :update, :destroy]
	before_action :require_login
	
	def index
		@internship_names = InternshipName.order('nome')
	end

	def new
		@internship_name = InternshipName.new
	end

	def create
		@internship_name = InternshipName.new(internship_name_params)

		if @internship_name.save
			flash[:success] = 'Nova especialidade criada'
			redirect_to internship_names_path
		else
			render action: 'new'
		end
	end

	def destroy
		@internship_name.destroy
		redirect_to internship_names_path
	end

	private
		def set_internship_name
			@internship_name = InternshipName.find(params[:id])
		end

		def internship_name_params
			params.require(:internship_name).permit(:nome)
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
