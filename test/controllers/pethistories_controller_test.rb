require 'test_helper'

class PethistoriesControllerTest < ActionController::TestCase
  setup do
    @pethistory = pethistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pethistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pethistory" do
    assert_difference('Pethistory.count') do
      post :create, pethistory: {  }
    end

    assert_redirected_to pethistory_path(assigns(:pethistory))
  end

  test "should show pethistory" do
    get :show, id: @pethistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pethistory
    assert_response :success
  end

  test "should update pethistory" do
    patch :update, id: @pethistory, pethistory: {  }
    assert_redirected_to pethistory_path(assigns(:pethistory))
  end

  test "should destroy pethistory" do
    assert_difference('Pethistory.count', -1) do
      delete :destroy, id: @pethistory
    end

    assert_redirected_to pethistories_path
  end
end
