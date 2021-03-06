class FymedicinesController < ApplicationController
	before_action :load_intern
	before_action :require_login

	def create
		@intern.firstyear.create_fymedicine(fymedicine_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.fymedicine.update_attributes(fymedicine_params)
			redirect_to @intern, notice: "Estágio de medicina atualizado"
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.fymedicine.destroy
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def fymedicine_params
			params.require(:fymedicine).permit(:data_inicio, :data_fim, :supervisor_id, :nota, :healthcareunit_id)
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
