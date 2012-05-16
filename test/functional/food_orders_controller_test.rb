require 'test_helper'

class FoodOrdersControllerTest < ActionController::TestCase
  setup do
    @food_order = food_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_order" do
    assert_difference('FoodOrder.count') do
      post :create, food_order: @food_order.attributes
    end

    assert_redirected_to food_order_path(assigns(:food_order))
  end

  test "should show food_order" do
    get :show, id: @food_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_order
    assert_response :success
  end

  test "should update food_order" do
    put :update, id: @food_order, food_order: @food_order.attributes
    assert_redirected_to food_order_path(assigns(:food_order))
  end

  test "should destroy food_order" do
    assert_difference('FoodOrder.count', -1) do
      delete :destroy, id: @food_order
    end

    assert_redirected_to food_orders_path
  end
end
