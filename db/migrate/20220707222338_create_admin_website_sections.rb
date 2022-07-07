class CreateAdminWebsiteSections < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_website_sections do |t|
      t.references :admin_website, null: false, foreign_key: true
      t.references :admin_section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
