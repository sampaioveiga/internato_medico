class FyprimariesController < ApplicationController
	before_action :load_intern
	before_action :require_login

	def create
		@intern.firstyear.create_fyprimary(fyprimary_params)
		redirect_to @intern
	end

	def edit
	end

	def update
		if @intern.firstyear.fyprimary.update_attributes(fyprimary_params)
			redirect_to @intern, notice: "Estágio de cuidados primários atualizado"
		else
			render 'edit'
		end
	end

	def destroy
		@intern.firstyear.fyprimary.destroy
		redirect_to @intern
	end

	private
		def load_intern
			@intern = Intern.find(params[:intern_id])
		end

		def fyprimary_params
			params.require(:fyprimary).permit(:data_inicio, :data_fim, :supervisor_id, :nota, :healthcareunit_id)
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
