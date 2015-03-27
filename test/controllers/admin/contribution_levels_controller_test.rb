require 'test_helper'

class Admin::ContributionLevelsControllerTest < ActionController::TestCase
  setup do
    @admin_contribution_level = admin_contribution_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_contribution_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_contribution_level" do
    assert_difference('Admin::ContributionLevel.count') do
      post :create, admin_contribution_level: { name: @admin_contribution_level.name, rank: @admin_contribution_level.rank }
    end

    assert_redirected_to admin_contribution_level_path(assigns(:admin_contribution_level))
  end

  test "should show admin_contribution_level" do
    get :show, id: @admin_contribution_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_contribution_level
    assert_response :success
  end

  test "should update admin_contribution_level" do
    patch :update, id: @admin_contribution_level, admin_contribution_level: { name: @admin_contribution_level.name, rank: @admin_contribution_level.rank }
    assert_redirected_to admin_contribution_level_path(assigns(:admin_contribution_level))
  end

  test "should destroy admin_contribution_level" do
    assert_difference('Admin::ContributionLevel.count', -1) do
      delete :destroy, id: @admin_contribution_level
    end

    assert_redirected_to admin_contribution_levels_path
  end
end
