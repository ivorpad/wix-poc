class ColumnChangesToAdminWebsites < ActiveRecord::Migration[7.0]
  def change
    remove_column :admin_websites, :theme_selected, :id
    add_column :admin_websites, :theme_id, :integer
  end
end
