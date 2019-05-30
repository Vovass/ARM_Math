class FormulsController < ApplicationController
  before_action :set_formul, only: [:show, :edit, :update, :destroy]

  # GET /formuls
  # GET /formuls.json
  def index
    @formuls = Formul.all
  end

  # GET /formuls/1
  # GET /formuls/1.json
  def show
  end

  # GET /formuls/new
  def new
    @formul = Formul.new
  end

  # GET /formuls/1/edit
  def edit
  end

  # POST /formuls
  # POST /formuls.json
  def create
    @formul = Formul.new(formul_params)

    respond_to do |format|
      if @formul.save
        format.html { redirect_to @formul, notice: 'Formul was successfully created.' }
        format.json { render :show, status: :created, location: @formul }
      else
        format.html { render :new }
        format.json { render json: @formul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formuls/1
  # PATCH/PUT /formuls/1.json
  def update
    respond_to do |format|
      if @formul.update(formul_params)
        format.html { redirect_to @formul, notice: 'Formul was successfully updated.' }
        format.json { render :show, status: :ok, location: @formul }
      else
        format.html { render :edit }
        format.json { render json: @formul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formuls/1
  # DELETE /formuls/1.json
  def destroy
    @formul.destroy
    respond_to do |format|
      format.html { redirect_to formuls_url, notice: 'Formul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formul
      @formul = Formul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formul_params
      params.require(:formul).permit(:title, :description)
    end
end
