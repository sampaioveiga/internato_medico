class InternsController < ApplicationController
  before_action :set_intern, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  # GET /interns
  # GET /interns.json
  def index
    @interns = Intern.paginate(page: params[:page]).order('nome')
  end

  # GET /interns/1
  # GET /interns/1.json
  def show
    @internships = @intern.internships.order('data_inicio')
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
        flash[:success] = 'Novo interno criado'
        format.html { redirect_to @intern }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /interns/1
  # PATCH/PUT /interns/1.json
  def update
    respond_to do |format|
      if @intern.update(intern_params)
        flash[:success] = 'Interno atualizado'
        format.html { redirect_to @intern }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /interns/1
  # DELETE /interns/1.json
  def destroy
    @intern.destroy
    respond_to do |format|
      flash[:error] = 'Interno eliminado'
      format.html { redirect_to interns_url }
    end
  end

  def search
    @interns = Intern.where("nome LIKE :prefix", prefix: "%#{params[:search_string]}%").paginate(page: params[:page])
    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intern
      @intern = Intern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intern_params
      params.require(:intern).permit(:nome, :numero_mecanografico, :telefone, :telemovel, :email, :supervisor_id, :cedula_profissional, :internship_name_id, :nota_media, :nota_final_exame)
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
