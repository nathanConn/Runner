require 'test_helper'

class BiowaresControllerTest < ActionController::TestCase
  setup do
    @bioware = biowares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biowares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bioware" do
    assert_difference('Bioware.count') do
      post :create, bioware: { character_id: @bioware.character_id, essence: @bioware.essence, name: @bioware.name, notes: @bioware.notes, rating: @bioware.rating, wireless: @bioware.wireless }
    end

    assert_redirected_to bioware_path(assigns(:bioware))
  end

  test "should show bioware" do
    get :show, id: @bioware
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bioware
    assert_response :success
  end

  test "should update bioware" do
    patch :update, id: @bioware, bioware: { character_id: @bioware.character_id, essence: @bioware.essence, name: @bioware.name, notes: @bioware.notes, rating: @bioware.rating, wireless: @bioware.wireless }
    assert_redirected_to bioware_path(assigns(:bioware))
  end

  test "should destroy bioware" do
    assert_difference('Bioware.count', -1) do
      delete :destroy, id: @bioware
    end

    assert_redirected_to biowares_path
  end
end
