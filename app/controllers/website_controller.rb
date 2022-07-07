class WebsiteController < ApplicationController
  skip_before_action :authenticate_user!

  before_action :set_views
  layout :theme_layout
  
  def show
    @theme_name = theme_selected
    # As WP, do this to keep the same sections when you switch themes
    # @sections = current_website.sections
    @sections = current_website.sections.where(admin_theme_id: current_website.theme.id)
  end

  private

  def theme_layout
    "layout"
  end

  def current_website
    Admin::Website.with_theme.find(params[:id])
  end

  def theme_selected
    current_website.theme.name
  end

  def set_views
    self.prepend_view_path "#{Rails.root.join('app', 'themes', theme_selected)}"
  end
end
