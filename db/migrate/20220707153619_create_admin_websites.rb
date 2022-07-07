class CreateAdminWebsites < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_websites do |t|
      t.string :name
      t.string :theme_selected
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
