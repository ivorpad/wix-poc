class Admin::SectionsController < ApplicationController
  before_action :set_admin_section, only: %i[ show edit update destroy ]

  # GET /admin/sections or /admin/sections.json
  def index
    @admin_sections = Admin::Section.all
  end

  # GET /admin/sections/1 or /admin/sections/1.json
  def show
  end

  # GET /admin/sections/new
  def new
    @admin_section = Admin::Section.new
  end

  # GET /admin/sections/1/edit
  def edit
  end

  # POST /admin/sections or /admin/sections.json
  def create
    @admin_section = Admin::Section.new(admin_section_params)

    respond_to do |format|
      if @admin_section.save
        format.html { redirect_to admin_section_url(@admin_section), notice: "Section was successfully created." }
        format.json { render :show, status: :created, location: @admin_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sections/1 or /admin/sections/1.json
  def update
    respond_to do |format|
      if @admin_section.update(admin_section_params)
        format.html { redirect_to admin_section_url(@admin_section), notice: "Section was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sections/1 or /admin/sections/1.json
  def destroy
    @admin_section.destroy

    respond_to do |format|
      format.html { redirect_to admin_sections_url, notice: "Section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_section
      @admin_section = Admin::Section.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_section_params
      params.require(:admin_section).permit(:name, :content, :admin_theme_id)
    end
end
