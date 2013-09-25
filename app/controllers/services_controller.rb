class ServicesController < ApplicationController
	before_action :load_healthcareunit

	def create
		@healthcareunit.services.create(service_params)
		redirect_to @healthcareunit
	end

	def edit
		@service = @healthcareunit.services.find(params[:id])
	end

	def update
		@service = @healthcareunit.services.find(params[:id])

		if @service.update_attributes(service_params)
			redirect_to @healthcareunit, notice: "Serviço atualizado"
		else
			render 'edit'
		end
	end

	private
		def load_healthcareunit
			@healthcareunit = Healthcareunit.find(params[:healthcareunit_id])
		end

		def service_params
			params.require(:service).permit(:nome)
		end
end
