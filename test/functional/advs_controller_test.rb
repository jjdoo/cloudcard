require 'test_helper'

class AdvsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adv" do
    assert_difference('Adv.count') do
      post :create, :adv => { }
    end

    assert_redirected_to adv_path(assigns(:adv))
  end

  test "should show adv" do
    get :show, :id => advs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => advs(:one).to_param
    assert_response :success
  end

  test "should update adv" do
    put :update, :id => advs(:one).to_param, :adv => { }
    assert_redirected_to adv_path(assigns(:adv))
  end

  test "should destroy adv" do
    assert_difference('Adv.count', -1) do
      delete :destroy, :id => advs(:one).to_param
    end

    assert_redirected_to advs_path
  end
end
