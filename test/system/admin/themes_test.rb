require "application_system_test_case"

class Admin::ThemesTest < ApplicationSystemTestCase
  setup do
    @admin_theme = admin_themes(:one)
  end

  test "visiting the index" do
    visit admin_themes_url
    assert_selector "h1", text: "Themes"
  end

  test "should create theme" do
    visit admin_themes_url
    click_on "New theme"

    check "Is enabled" if @admin_theme.is_enabled
    fill_in "Name", with: @admin_theme.name
    click_on "Create Theme"

    assert_text "Theme was successfully created"
    click_on "Back"
  end

  test "should update Theme" do
    visit admin_theme_url(@admin_theme)
    click_on "Edit this theme", match: :first

    check "Is enabled" if @admin_theme.is_enabled
    fill_in "Name", with: @admin_theme.name
    click_on "Update Theme"

    assert_text "Theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Theme" do
    visit admin_theme_url(@admin_theme)
    click_on "Destroy this theme", match: :first

    assert_text "Theme was successfully destroyed"
  end
end
