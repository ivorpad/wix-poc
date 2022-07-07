class Admin::Section < ApplicationRecord
  belongs_to :admin_theme, :class_name => 'Admin::Theme'
  has_rich_text :content

  has_many :website_sections, :class_name => 'Admin::WebsiteSection', :foreign_key => :admin_section_id
  has_many :websites, :through => :website_sections, source: :admin_website
end
