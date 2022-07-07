require "test_helper"

class Admin::ThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_theme = admin_themes(:one)
  end

  test "should get index" do
    get admin_themes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_theme_url
    assert_response :success
  end

  test "should create admin_theme" do
    assert_difference("Admin::Theme.count") do
      post admin_themes_url, params: { admin_theme: { is_enabled: @admin_theme.is_enabled, name: @admin_theme.name } }
    end

    assert_redirected_to admin_theme_url(Admin::Theme.last)
  end

  test "should show admin_theme" do
    get admin_theme_url(@admin_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_theme_url(@admin_theme)
    assert_response :success
  end

  test "should update admin_theme" do
    patch admin_theme_url(@admin_theme), params: { admin_theme: { is_enabled: @admin_theme.is_enabled, name: @admin_theme.name } }
    assert_redirected_to admin_theme_url(@admin_theme)
  end

  test "should destroy admin_theme" do
    assert_difference("Admin::Theme.count", -1) do
      delete admin_theme_url(@admin_theme)
    end

    assert_redirected_to admin_themes_url
  end
end
