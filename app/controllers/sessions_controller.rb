class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password]) && user.status
			session[:user_id] = user.id
			flash[:success] = "Bemvindo #{user.nome}"
			redirect_to root_url
		else
			flash[:error] = "Credenciais inválidas"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "Saída com sucesso"
		redirect_to root_url
	end
end
