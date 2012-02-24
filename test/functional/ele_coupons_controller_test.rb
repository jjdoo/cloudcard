require 'test_helper'

class EleCouponsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ele_coupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ele_coupon" do
    assert_difference('EleCoupon.count') do
      post :create, :ele_coupon => { }
    end

    assert_redirected_to ele_coupon_path(assigns(:ele_coupon))
  end

  test "should show ele_coupon" do
    get :show, :id => ele_coupons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ele_coupons(:one).to_param
    assert_response :success
  end

  test "should update ele_coupon" do
    put :update, :id => ele_coupons(:one).to_param, :ele_coupon => { }
    assert_redirected_to ele_coupon_path(assigns(:ele_coupon))
  end

  test "should destroy ele_coupon" do
    assert_difference('EleCoupon.count', -1) do
      delete :destroy, :id => ele_coupons(:one).to_param
    end

    assert_redirected_to ele_coupons_path
  end
end
