require 'test_helper'

class RoadmapDataClassesControllerTest < ActionController::TestCase
  setup do
    @roadmap_data_class = roadmap_data_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roadmap_data_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roadmap_data_class" do
    assert_difference('RoadmapDataClass.count') do
      post :create, roadmap_data_class: { data_class_id: @roadmap_data_class.data_class_id, roadmap_id: @roadmap_data_class.roadmap_id }
    end

    assert_redirected_to roadmap_data_class_path(assigns(:roadmap_data_class))
  end

  test "should show roadmap_data_class" do
    get :show, id: @roadmap_data_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roadmap_data_class
    assert_response :success
  end

  test "should update roadmap_data_class" do
    patch :update, id: @roadmap_data_class, roadmap_data_class: { data_class_id: @roadmap_data_class.data_class_id, roadmap_id: @roadmap_data_class.roadmap_id }
    assert_redirected_to roadmap_data_class_path(assigns(:roadmap_data_class))
  end

  test "should destroy roadmap_data_class" do
    assert_difference('RoadmapDataClass.count', -1) do
      delete :destroy, id: @roadmap_data_class
    end

    assert_redirected_to roadmap_data_classes_path
  end
end
