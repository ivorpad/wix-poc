class Admin::WebsiteSection < ApplicationRecord
  belongs_to :admin_website, class_name: "Admin::Website"
  belongs_to :admin_section, class_name: "Admin::Section"
end
