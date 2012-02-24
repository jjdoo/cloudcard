require 'test_helper'

class CardClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_class" do
    assert_difference('CardClass.count') do
      post :create, :card_class => { }
    end

    assert_redirected_to card_class_path(assigns(:card_class))
  end

  test "should show card_class" do
    get :show, :id => card_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => card_classes(:one).to_param
    assert_response :success
  end

  test "should update card_class" do
    put :update, :id => card_classes(:one).to_param, :card_class => { }
    assert_redirected_to card_class_path(assigns(:card_class))
  end

  test "should destroy card_class" do
    assert_difference('CardClass.count', -1) do
      delete :destroy, :id => card_classes(:one).to_param
    end

    assert_redirected_to card_classes_path
  end
end
