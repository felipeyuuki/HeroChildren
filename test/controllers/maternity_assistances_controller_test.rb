require 'test_helper'

class MaternityAssistancesControllerTest < ActionController::TestCase
  setup do
    @maternity_assistance = maternity_assistances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maternity_assistances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maternity_assistance" do
    assert_difference('MaternityAssistance.count') do
      post :create, maternity_assistance: { endDate: @maternity_assistance.endDate, mother: @maternity_assistance.mother, startDate: @maternity_assistance.startDate }
    end

    assert_redirected_to maternity_assistance_path(assigns(:maternity_assistance))
  end

  test "should show maternity_assistance" do
    get :show, id: @maternity_assistance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maternity_assistance
    assert_response :success
  end

  test "should update maternity_assistance" do
    patch :update, id: @maternity_assistance, maternity_assistance: { endDate: @maternity_assistance.endDate, mother: @maternity_assistance.mother, startDate: @maternity_assistance.startDate }
    assert_redirected_to maternity_assistance_path(assigns(:maternity_assistance))
  end

  test "should destroy maternity_assistance" do
    assert_difference('MaternityAssistance.count', -1) do
      delete :destroy, id: @maternity_assistance
    end

    assert_redirected_to maternity_assistances_path
  end
end
