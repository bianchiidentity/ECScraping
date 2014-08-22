require 'test_helper'

class BaseurlsControllerTest < ActionController::TestCase
  setup do
    @baseurl = baseurls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baseurls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baseurl" do
    assert_difference('Baseurl.count') do
      post :create, baseurl: { baseurl: @baseurl.baseurl, name: @baseurl.name, paging_add: @baseurl.paging_add, paging_max: @baseurl.paging_max, paging_parameter: @baseurl.paging_parameter }
    end

    assert_redirected_to baseurl_path(assigns(:baseurl))
  end

  test "should show baseurl" do
    get :show, id: @baseurl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baseurl
    assert_response :success
  end

  test "should update baseurl" do
    patch :update, id: @baseurl, baseurl: { baseurl: @baseurl.baseurl, name: @baseurl.name, paging_add: @baseurl.paging_add, paging_max: @baseurl.paging_max, paging_parameter: @baseurl.paging_parameter }
    assert_redirected_to baseurl_path(assigns(:baseurl))
  end

  test "should destroy baseurl" do
    assert_difference('Baseurl.count', -1) do
      delete :destroy, id: @baseurl
    end

    assert_redirected_to baseurls_path
  end
end
