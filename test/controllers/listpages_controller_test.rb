require 'test_helper'

class ListpagesControllerTest < ActionController::TestCase
  setup do
    @listpage = listpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listpage" do
    assert_difference('Listpage.count') do
      post :create, listpage: { csvname: @listpage.csvname, details_pages: @listpage.details_pages, keyword: @listpage.keyword, link_get_attribute: @listpage.link_get_attribute, link_get_tag: @listpage.link_get_tag, link_get_value: @listpage.link_get_value, name: @listpage.name, paging_add: @listpage.paging_add, paging_max: @listpage.paging_max, paging_parameter: @listpage.paging_parameter, url: @listpage.url }
    end

    assert_redirected_to listpage_path(assigns(:listpage))
  end

  test "should show listpage" do
    get :show, id: @listpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listpage
    assert_response :success
  end

  test "should update listpage" do
    patch :update, id: @listpage, listpage: { csvname: @listpage.csvname, details_pages: @listpage.details_pages, keyword: @listpage.keyword, link_get_attribute: @listpage.link_get_attribute, link_get_tag: @listpage.link_get_tag, link_get_value: @listpage.link_get_value, name: @listpage.name, paging_add: @listpage.paging_add, paging_max: @listpage.paging_max, paging_parameter: @listpage.paging_parameter, url: @listpage.url }
    assert_redirected_to listpage_path(assigns(:listpage))
  end

  test "should destroy listpage" do
    assert_difference('Listpage.count', -1) do
      delete :destroy, id: @listpage
    end

    assert_redirected_to listpages_path
  end
end
