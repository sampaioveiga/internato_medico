class FyoptionsController < ApplicationController
  before_action :set_fyoption, only: [:show, :edit, :update, :destroy]

  # GET /fyoptions
  # GET /fyoptions.json
  def index
    @fyoptions = Fyoption.order('nome')
  end

  # GET /fyoptions/1
  # GET /fyoptions/1.json
  def show
  end

  # GET /fyoptions/new
  def new
    @fyoption = Fyoption.new
  end

  # GET /fyoptions/1/edit
  def edit
  end

  # POST /fyoptions
  # POST /fyoptions.json
  def create
    @fyoption = Fyoption.new(fyoption_params)

    respond_to do |format|
      if @fyoption.save
        flash[:success] = 'Nova opção de ano comum criada'
        format.html { redirect_to fyoptions_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /fyoptions/1
  # PATCH/PUT /fyoptions/1.json
  def update
    respond_to do |format|
      if @fyoption.update(fyoption_params)
        flash[:success] = 'Opção de ano comum atualizada'
        format.html { redirect_to fyoptions_path }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /fyoptions/1
  # DELETE /fyoptions/1.json
  #def destroy
    #@fyoption.destroy
    #respond_to do |format|
      #format.html { redirect_to fyoptions_url }
      #format.json { head :no_content }
    #end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fyoption
      @fyoption = Fyoption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fyoption_params
      params.require(:fyoption).permit(:nome)
    end
end
