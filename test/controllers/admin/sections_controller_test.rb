require "test_helper"

class Admin::SectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_section = admin_sections(:one)
  end

  test "should get index" do
    get admin_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_section_url
    assert_response :success
  end

  test "should create admin_section" do
    assert_difference("Admin::Section.count") do
      post admin_sections_url, params: { admin_section: { admin_theme_id: @admin_section.admin_theme_id, name: @admin_section.name } }
    end

    assert_redirected_to admin_section_url(Admin::Section.last)
  end

  test "should show admin_section" do
    get admin_section_url(@admin_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_section_url(@admin_section)
    assert_response :success
  end

  test "should update admin_section" do
    patch admin_section_url(@admin_section), params: { admin_section: { admin_theme_id: @admin_section.admin_theme_id, name: @admin_section.name } }
    assert_redirected_to admin_section_url(@admin_section)
  end

  test "should destroy admin_section" do
    assert_difference("Admin::Section.count", -1) do
      delete admin_section_url(@admin_section)
    end

    assert_redirected_to admin_sections_url
  end
end
