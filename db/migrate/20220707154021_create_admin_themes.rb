class CreateAdminThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_themes do |t|
      t.string :name
      t.boolean :is_enabled

      t.timestamps
    end
  end
end
