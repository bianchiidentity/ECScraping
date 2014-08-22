require 'test_helper'

class DetailpagesControllerTest < ActionController::TestCase
  setup do
    @detailpage = detailpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detailpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detailpage" do
    assert_difference('Detailpage.count') do
      post :create, detailpage: { detail_url: @detailpage.detail_url, get_property: @detailpage.get_property, need_propertys: @detailpage.need_propertys, property_get_rules: @detailpage.property_get_rules }
    end

    assert_redirected_to detailpage_path(assigns(:detailpage))
  end

  test "should show detailpage" do
    get :show, id: @detailpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detailpage
    assert_response :success
  end

  test "should update detailpage" do
    patch :update, id: @detailpage, detailpage: { detail_url: @detailpage.detail_url, get_property: @detailpage.get_property, need_propertys: @detailpage.need_propertys, property_get_rules: @detailpage.property_get_rules }
    assert_redirected_to detailpage_path(assigns(:detailpage))
  end

  test "should destroy detailpage" do
    assert_difference('Detailpage.count', -1) do
      delete :destroy, id: @detailpage
    end

    assert_redirected_to detailpages_path
  end
end
