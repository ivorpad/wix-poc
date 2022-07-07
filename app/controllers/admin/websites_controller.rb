class Admin::WebsitesController < ApplicationController
  before_action :set_admin_website, only: %i[ show edit update destroy ]

  # GET /admin/websites or /admin/websites.json
  def index
    @admin_websites = Admin::Website.includes(:theme).all
  end

  # GET /admin/websites/1 or /admin/websites/1.json
  def show
  end

  # GET /admin/websites/new
  def new
    @admin_website = Admin::Website.new
  end

  # GET /admin/websites/1/edit
  def edit
  end

  # POST /admin/websites or /admin/websites.json
  def create
    @admin_website = Admin::Website.new(admin_website_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @admin_website.save
        format.html { redirect_to admin_website_url(@admin_website), notice: "Website was successfully created." }
        format.json { render :show, status: :created, location: @admin_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/websites/1 or /admin/websites/1.json
  def update
    respond_to do |format|
      if @admin_website.update(admin_website_params)
        format.html { redirect_to admin_website_url(@admin_website), notice: "Website was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/websites/1 or /admin/websites/1.json
  def destroy
    @admin_website.destroy

    respond_to do |format|
      format.html { redirect_to admin_websites_url, notice: "Website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_website
      @admin_website = Admin::Website.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_website_params
      params.require(:admin_website).permit(:name, :theme_id, :user_id)
    end
end
