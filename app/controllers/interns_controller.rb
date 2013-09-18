class InternsController < ApplicationController
  before_action :set_intern, only: [:show, :edit, :update, :destroy]

  # GET /interns
  # GET /interns.json
  def index
    @interns = Intern.all
  end

  # GET /interns/1
  # GET /interns/1.json
  def show
  end

  # GET /interns/new
  def new
    @intern = Intern.new
  end

  # GET /interns/1/edit
  def edit
  end

  # POST /interns
  # POST /interns.json
  def create
    @intern = Intern.new(intern_params)

    respond_to do |format|
      if @intern.save
        format.html { redirect_to @intern, notice: 'Intern was successfully created.' }
        format.json { render action: 'show', status: :created, location: @intern }
      else
        format.html { render action: 'new' }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interns/1
  # PATCH/PUT /interns/1.json
  def update
    respond_to do |format|
      if @intern.update(intern_params)
        format.html { redirect_to @intern, notice: 'Intern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interns/1
  # DELETE /interns/1.json
  def destroy
    @intern.destroy
    respond_to do |format|
      format.html { redirect_to interns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intern
      @intern = Intern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intern_params
      params.require(:intern).permit(:nome, :numero_mecanografico, :telefone, :telemovel, :email)
    end
end
