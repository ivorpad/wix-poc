# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

Dir.glob("#{Rails.root}/app/themes/*/assets/*").each do |dir|
  Rails.application.config.assets.paths << dir
end

Dir.glob("#{Rails.root}/app/themes/*/assets/*/*/**").each do |file|
  Rails.application.config.assets.precompile += [file]
end