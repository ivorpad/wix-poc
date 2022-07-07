require "application_system_test_case"

class Admin::SectionsTest < ApplicationSystemTestCase
  setup do
    @admin_section = admin_sections(:one)
  end

  test "visiting the index" do
    visit admin_sections_url
    assert_selector "h1", text: "Sections"
  end

  test "should create section" do
    visit admin_sections_url
    click_on "New section"

    fill_in "Admin theme", with: @admin_section.admin_theme_id
    fill_in "Name", with: @admin_section.name
    click_on "Create Section"

    assert_text "Section was successfully created"
    click_on "Back"
  end

  test "should update Section" do
    visit admin_section_url(@admin_section)
    click_on "Edit this section", match: :first

    fill_in "Admin theme", with: @admin_section.admin_theme_id
    fill_in "Name", with: @admin_section.name
    click_on "Update Section"

    assert_text "Section was successfully updated"
    click_on "Back"
  end

  test "should destroy Section" do
    visit admin_section_url(@admin_section)
    click_on "Destroy this section", match: :first

    assert_text "Section was successfully destroyed"
  end
end
