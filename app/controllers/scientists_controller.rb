class ScientistsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]
  before_action :set_scientist, only: [:show, :edit, :update, :destroy]

  # GET /scientists
  # GET /scientists.json
  def index
    @scientists = Scientist.all
  end

  # GET /scientists/1
  # GET /scientists/1.json
  def show
  end

  # GET /scientists/new
  def new
    @scientist = Scientist.new
  end

  # GET /scientists/1/edit
  def edit
  end

  # POST /scientists
  # POST /scientists.json
  def create
    @scientist = Scientist.new(scientist_params)

    respond_to do |format|
      if @scientist.save
        format.html { redirect_to @scientist, notice: 'Scientist was successfully created.' }
        format.json { render :show, status: :created, location: @scientist }
      else
        format.html { render :new }
        format.json { render json: @scientist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scientists/1
  # PATCH/PUT /scientists/1.json
  def update
    respond_to do |format|
      if @scientist.update(scientist_params)
        format.html { redirect_to @scientist, notice: 'Scientist was successfully updated.' }
        format.json { render :show, status: :ok, location: @scientist }
      else
        format.html { render :edit }
        format.json { render json: @scientist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientists/1
  # DELETE /scientists/1.json
  def destroy
    @scientist.destroy
    respond_to do |format|
      format.html { redirect_to scientists_url, notice: 'Scientist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scientist
      @scientist = Scientist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scientist_params
      params.require(:scientist).permit(:title, :info)
    end
end
