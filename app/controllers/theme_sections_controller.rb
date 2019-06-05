class ThemeSectionsController < ApplicationController
  before_action :set_theme_section, only: [:chosen, :show, :edit, :update, :destroy]

  # GET /theme_sections
  # GET /theme_sections.json
  def index
    @theme_sections = ThemeSection.all
  end

  # GET /theme_sections/1
  # GET /theme_sections/1.json
  def show
  end

  # GET /theme_sections/new
  def new
    @theme_section = ThemeSection.new
  end


  # GET /theme_sections/1/edit
  def edit
  end

  # POST /theme_sections
  # POST /theme_sections.json
  def create
    @theme_section = ThemeSection.new(theme_section_params)

    respond_to do |format|
      if @theme_section.save
        format.html { redirect_to @theme_section, notice: 'Theme section was successfully created.' }
        format.json { render :show, status: :created, location: @theme_section }
      else
        format.html { render :new }
        format.json { render json: @theme_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_sections/1
  # PATCH/PUT /theme_sections/1.json
  def update
    respond_to do |format|
      if @theme_section.update(theme_section_params)
        format.html { redirect_to @theme_section, notice: 'Theme section was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme_section }
      else
        format.html { render :edit }
        format.json { render json: @theme_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_sections/1
  # DELETE /theme_sections/1.json
  def destroy
    @theme_section.destroy
    respond_to do |format|
      format.html { redirect_to request.env['HTTP_REFERER'], notice: 'Theme section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_section
      @theme_section = ThemeSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_section_params
      params.require(:theme_section).permit(:title, :info, :theme_id, formul_ids: [], theorem_ids: [])
    end
end
