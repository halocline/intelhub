require 'test_helper'

class DataClassesControllerTest < ActionController::TestCase
  setup do
    @data_class = data_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_class" do
    assert_difference('DataClass.count') do
      post :create, data_class: { name: @data_class.name }
    end

    assert_redirected_to data_class_path(assigns(:data_class))
  end

  test "should show data_class" do
    get :show, id: @data_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_class
    assert_response :success
  end

  test "should update data_class" do
    patch :update, id: @data_class, data_class: { name: @data_class.name }
    assert_redirected_to data_class_path(assigns(:data_class))
  end

  test "should destroy data_class" do
    assert_difference('DataClass.count', -1) do
      delete :destroy, id: @data_class
    end

    assert_redirected_to data_classes_path
  end
end
