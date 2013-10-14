class HealthcareunitsController < ApplicationController
  before_action :set_healthcareunit, only: [:show, :edit, :update, :destroy]

  # GET /healthcareunits
  # GET /healthcareunits.json
  def index
    @healthcareunits = Healthcareunit.order('nome')
  end

  # GET /healthcareunits/1
  # GET /healthcareunits/1.json
  #def show
  #end

  # GET /healthcareunits/new
  def new
    @healthcareunit = Healthcareunit.new
  end

  # GET /healthcareunits/1/edit
  def edit
  end

  # POST /healthcareunits
  # POST /healthcareunits.json
  def create
    @healthcareunit = Healthcareunit.new(healthcareunit_params)

    respond_to do |format|
      if @healthcareunit.save
        flash[:success] = 'Nova unidade de saúde criada'
        format.html { redirect_to healthcareunits_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /healthcareunits/1
  # PATCH/PUT /healthcareunits/1.json
  def update
    respond_to do |format|
      if @healthcareunit.update(healthcareunit_params)
        flash[:success] = 'Unidade de saúde atualizada'
        format.html { redirect_to healthcareunits_path }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /healthcareunits/1
  # DELETE /healthcareunits/1.json
  def destroy
    @healthcareunit.destroy
    respond_to do |format|
      format.html { redirect_to healthcareunits_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthcareunit
      @healthcareunit = Healthcareunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthcareunit_params
      params.require(:healthcareunit).permit(:nome)
    end
end