class ProjectEnvironmentsController < ApplicationController
  before_action :set_project_environment, only: [:show, :edit, :update, :destroy]

  # GET /project_environments
  # GET /project_environments.json
  def index
    @project_environments = ProjectEnvironment.all
  end

  # GET /project_environments/1
  # GET /project_environments/1.json
  def show
  end

  # GET /project_environments/new
  def new
    @project_environment = ProjectEnvironment.new
  end

  # GET /project_environments/1/edit
  def edit
  end

  # POST /project_environments
  # POST /project_environments.json
  def create
    @project_environment = ProjectEnvironment.new(project_environment_params)

    respond_to do |format|
      if @project_environment.save
        format.html { redirect_to @project_environment, notice: 'Project environment was successfully created.' }
        format.json { render :show, status: :created, location: @project_environment }
      else
        format.html { render :new }
        format.json { render json: @project_environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_environments/1
  # PATCH/PUT /project_environments/1.json
  def update
    respond_to do |format|
      if @project_environment.update(project_environment_params)
        format.html { redirect_to @project_environment, notice: 'Project environment was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_environment }
      else
        format.html { render :edit }
        format.json { render json: @project_environment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_environments/1
  # DELETE /project_environments/1.json
  def destroy
    @project_environment.destroy
    respond_to do |format|
      format.html { redirect_to project_environments_url, notice: 'Project environment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_environment
      @project_environment = ProjectEnvironment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_environment_params
      params.require(:project_environment).permit(:project_id, :name, :is_public)
    end
end
