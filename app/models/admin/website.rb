class Admin::Website < ApplicationRecord
  belongs_to :user
  belongs_to :theme, class_name: "Admin::Theme"

  has_many :website_sections, class_name: "Admin::WebsiteSection", foreign_key: :admin_website_id
  has_many :sections, through: :website_sections, source: :admin_section

  scope :with_theme , -> { includes(:theme) }
end
