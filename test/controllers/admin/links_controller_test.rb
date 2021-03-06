require 'test_helper'

class Admin::LinksControllerTest < ActionController::TestCase
  setup do
    @link = FactoryGirl.create(:link)

    @user = FactoryGirl.create(:admin)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end

  test "should show link" do
    get :show, id: @link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link
    assert_response :success
  end

  test "should update link" do
    patch :update, id: @link, link: {  }
    assert_redirected_to admin_link_path(assigns(:link))
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, id: @link
    end

    assert_redirected_to admin_links_path
  end
end
