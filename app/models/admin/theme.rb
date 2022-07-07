class Admin::Theme < ApplicationRecord
  has_many :sections, :class_name => 'Admin::Section', foreign_key: 'admin_theme_id'
end
