require 'test_helper'

class AttendingCompaniesControllerTest < ActionController::TestCase
  setup do
    @attending_company = attending_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attending_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attending_company" do
    assert_difference('AttendingCompany.count') do
      post :create, attending_company: @attending_company.attributes
    end

    assert_redirected_to attending_company_path(assigns(:attending_company))
  end

  test "should show attending_company" do
    get :show, id: @attending_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attending_company
    assert_response :success
  end

  test "should update attending_company" do
    put :update, id: @attending_company, attending_company: @attending_company.attributes
    assert_redirected_to attending_company_path(assigns(:attending_company))
  end

  test "should destroy attending_company" do
    assert_difference('AttendingCompany.count', -1) do
      delete :destroy, id: @attending_company
    end

    assert_redirected_to attending_companies_path
  end
end
