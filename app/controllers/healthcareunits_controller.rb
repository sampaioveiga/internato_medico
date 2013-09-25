class HealthcareunitsController < ApplicationController
  before_action :set_healthcareunit, only: [:show, :edit, :update, :destroy]

  # GET /healthcareunits
  # GET /healthcareunits.json
  def index
    @healthcareunits = Healthcareunit.all
  end

  # GET /healthcareunits/1
  # GET /healthcareunits/1.json
  def show
  end

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
        format.html { redirect_to @healthcareunit, notice: 'Healthcareunit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @healthcareunit }
      else
        format.html { render action: 'new' }
        format.json { render json: @healthcareunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthcareunits/1
  # PATCH/PUT /healthcareunits/1.json
  def update
    respond_to do |format|
      if @healthcareunit.update(healthcareunit_params)
        format.html { redirect_to @healthcareunit, notice: 'Healthcareunit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @healthcareunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthcareunits/1
  # DELETE /healthcareunits/1.json
  def destroy
    @healthcareunit.destroy
    respond_to do |format|
      format.html { redirect_to healthcareunits_url }
      format.json { head :no_content }
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
