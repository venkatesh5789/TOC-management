require 'test_helper'

class VisitingCompaniesControllerTest < ActionController::TestCase
  setup do
    @visiting_company = visiting_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visiting_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visiting_company" do
    assert_difference('VisitingCompany.count') do
      post :create, visiting_company: @visiting_company.attributes
    end

    assert_redirected_to visiting_company_path(assigns(:visiting_company))
  end

  test "should show visiting_company" do
    get :show, id: @visiting_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visiting_company
    assert_response :success
  end

  test "should update visiting_company" do
    put :update, id: @visiting_company, visiting_company: @visiting_company.attributes
    assert_redirected_to visiting_company_path(assigns(:visiting_company))
  end

  test "should destroy visiting_company" do
    assert_difference('VisitingCompany.count', -1) do
      delete :destroy, id: @visiting_company
    end

    assert_redirected_to visiting_companies_path
  end
end
