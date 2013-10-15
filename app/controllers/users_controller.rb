class UsersController < ApplicationController
	before_action :set_user, only: [ :edit, :update ]
	before_action :require_admin, except: [ :new, :create ]

	def index
		@users = User.order('nome')
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if User.first.nil?
			@user.status = true
			@user.admin = true
		else
			@user.status = false
			@user.admin = false
		end
		if @user.save
			flash[:alert] = "Novo utilizador registado, a aguardar autorização"
			redirect_to root_url
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:sucess] = "Utilizador atualizado"
			redirect_to users_path
		else
			render 'edit'
		end
	end

	private
		def set_user
			@user = User.find(params[:id])
		end

		def user_params
			params.require(:user).permit(:nome, :email, :password, :password_confirmation, :status, :admin)
		end

		def require_admin
			unless current_user.admin
				redirect_to root_url
			end
		end
end
