require 'test_helper'

class ProblemClassesControllerTest < ActionController::TestCase
  setup do
    @problem_class = problem_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problem_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem_class" do
    assert_difference('ProblemClass.count') do
      post :create, problem_class: { name: @problem_class.name }
    end

    assert_redirected_to problem_class_path(assigns(:problem_class))
  end

  test "should show problem_class" do
    get :show, id: @problem_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem_class
    assert_response :success
  end

  test "should update problem_class" do
    patch :update, id: @problem_class, problem_class: { name: @problem_class.name }
    assert_redirected_to problem_class_path(assigns(:problem_class))
  end

  test "should destroy problem_class" do
    assert_difference('ProblemClass.count', -1) do
      delete :destroy, id: @problem_class
    end

    assert_redirected_to problem_classes_path
  end
end
