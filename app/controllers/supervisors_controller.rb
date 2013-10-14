class SupervisorsController < ApplicationController
  before_action :set_supervisor, only: [:show, :edit, :update, :destroy]

  # GET /supervisors
  # GET /supervisors.json
  def index
    @supervisors = Supervisor.order('nome')
  end

  # GET /supervisors/1
  # GET /supervisors/1.json
  def show
  end

  # GET /supervisors/new
  def new
    @supervisor = Supervisor.new
  end

  # GET /supervisors/1/edit
  def edit
  end

  # POST /supervisors
  # POST /supervisors.json
  def create
    @supervisor = Supervisor.new(supervisor_params)

    respond_to do |format|
      if @supervisor.save
        flash[:success] = 'Novo orientador criado'
        format.html { redirect_to supervisors_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /supervisors/1
  # PATCH/PUT /supervisors/1.json
  def update
    respond_to do |format|
      if @supervisor.update(supervisor_params)
        flash[:success] = 'Orientador atualizado'
        format.html { redirect_to supervisors_path }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /supervisors/1
  # DELETE /supervisors/1.json
  def destroy
    @supervisor.destroy
    respond_to do |format|
      format.html { redirect_to supervisors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supervisor
      @supervisor = Supervisor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supervisor_params
      params.require(:supervisor).permit(:nome, :cedula_profissional, :especialidade, :telefone, :telemovel, :email)
    end
end
