require 'test_helper'

class RoadmapStepsControllerTest < ActionController::TestCase
  setup do
    @roadmap_step = roadmap_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roadmap_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roadmap_step" do
    assert_difference('RoadmapStep.count') do
      post :create, roadmap_step: { step: @roadmap_step.step }
    end

    assert_redirected_to roadmap_step_path(assigns(:roadmap_step))
  end

  test "should show roadmap_step" do
    get :show, id: @roadmap_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roadmap_step
    assert_response :success
  end

  test "should update roadmap_step" do
    patch :update, id: @roadmap_step, roadmap_step: { step: @roadmap_step.step }
    assert_redirected_to roadmap_step_path(assigns(:roadmap_step))
  end

  test "should destroy roadmap_step" do
    assert_difference('RoadmapStep.count', -1) do
      delete :destroy, id: @roadmap_step
    end

    assert_redirected_to roadmap_steps_path
  end
end
