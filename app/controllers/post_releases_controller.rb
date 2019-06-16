class PostReleasesController < ApplicationController
  before_action :set_post_release, only: [:show, :edit, :update, :destroy]

  # GET /post_releases
  # GET /post_releases.json
  def index
    @post_releases = PostRelease.all
  end

  # GET /post_releases/1
  # GET /post_releases/1.json
  def show
  end

  # GET /post_releases/new
  def new
    @post_release = PostRelease.new
  end

  # GET /post_releases/1/edit
  def edit
  end

  # POST /post_releases
  # POST /post_releases.json
  def create
    @post_release = PostRelease.new(post_release_params)

    respond_to do |format|
      if @post_release.save
        format.html { redirect_to @post_release, notice: 'Post release was successfully created.' }
        format.json { render :show, status: :created, location: @post_release }
      else
        format.html { render :new }
        format.json { render json: @post_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_releases/1
  # PATCH/PUT /post_releases/1.json
  def update
    respond_to do |format|
      if @post_release.update(post_release_params)
        format.html { redirect_to @post_release, notice: 'Post release was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_release }
      else
        format.html { render :edit }
        format.json { render json: @post_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_releases/1
  # DELETE /post_releases/1.json
  def destroy
    @post_release.destroy
    respond_to do |format|
      format.html { redirect_to post_releases_url, notice: 'Post release was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_release
      @post_release = PostRelease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_release_params
      params.require(:post_release).permit(:post_id, :project_environment_id)
    end
end
