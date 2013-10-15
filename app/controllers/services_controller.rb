class ServicesController < ApplicationController
	before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :require_login

	# GET /services
  	# GET /services.json
  	def index
    	@services = Service.order('nome')
	end

  	# GET /services/1
  	# GET /services/1.json
  	def show
  	end

  	# GET /services/new
  	def new
    	@service = Service.new
  	end

  	# GET /services/1/edit
  	def edit
  	end

  	# POST /services
  	# POST /services.json
  	def create
    	@service = Service.new(service_params)

    	respond_to do |format|
      		if @service.save
            flash[:success] = 'Novo serviço criado'
        		format.html { redirect_to services_path }
      		else
        		format.html { render action: 'new' }
      		end
    	end
  	end

  	# PATCH/PUT /services/1
  	# PATCH/PUT /services/1.json
  	def update
    	respond_to do |format|
      		if @service.update(service_params)
            flash[:success] = 'Serviço atualizado'
        		format.html { redirect_to services_path }
      		else
        		format.html { render action: 'edit' }
      		end
    	end
  	end

  	# DELETE /services/1
  	# DELETE /services/1.json
  	def destroy
    	@service.destroy
    	respond_to do |format|
      		format.html { redirect_to services_url }
    	end
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
    	@service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      	params.require(:service).permit(:nome)
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
