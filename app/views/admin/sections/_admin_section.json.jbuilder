json.extract! admin_section, :id, :name, :content, :admin_theme_id, :created_at, :updated_at
json.url admin_section_url(admin_section, format: :json)
json.content admin_section.content.to_s
