require "test_helper"

class Admin::WebsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_website = admin_websites(:one)
  end

  test "should get index" do
    get admin_websites_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_website_url
    assert_response :success
  end

  test "should create admin_website" do
    assert_difference("Admin::Website.count") do
      post admin_websites_url, params: { admin_website: { name: @admin_website.name, theme_selected: @admin_website.theme_selected, user_id: @admin_website.user_id } }
    end

    assert_redirected_to admin_website_url(Admin::Website.last)
  end

  test "should show admin_website" do
    get admin_website_url(@admin_website)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_website_url(@admin_website)
    assert_response :success
  end

  test "should update admin_website" do
    patch admin_website_url(@admin_website), params: { admin_website: { name: @admin_website.name, theme_selected: @admin_website.theme_selected, user_id: @admin_website.user_id } }
    assert_redirected_to admin_website_url(@admin_website)
  end

  test "should destroy admin_website" do
    assert_difference("Admin::Website.count", -1) do
      delete admin_website_url(@admin_website)
    end

    assert_redirected_to admin_websites_url
  end
end
