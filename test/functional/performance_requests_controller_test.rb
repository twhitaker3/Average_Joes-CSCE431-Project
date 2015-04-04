require 'test_helper'

class PerformanceRequestsControllerTest < ActionController::TestCase
  setup do
    @performance_request = performance_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_request" do
    assert_difference('PerformanceRequest.count') do
      post :create, performance_request: { date: @performance_request.date, description: @performance_request.description, email: @performance_request.email, first_name: @performance_request.first_name, last_name: @performance_request.last_name, location: @performance_request.location, organization: @performance_request.organization }
    end

    assert_redirected_to performance_request_path(assigns(:performance_request))
  end

  test "should show performance_request" do
    get :show, id: @performance_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance_request
    assert_response :success
  end

  test "should update performance_request" do
    put :update, id: @performance_request, performance_request: { date: @performance_request.date, description: @performance_request.description, email: @performance_request.email, first_name: @performance_request.first_name, last_name: @performance_request.last_name, location: @performance_request.location, organization: @performance_request.organization }
    assert_redirected_to performance_request_path(assigns(:performance_request))
  end

  test "should destroy performance_request" do
    assert_difference('PerformanceRequest.count', -1) do
      delete :destroy, id: @performance_request
    end

    assert_redirected_to performance_requests_path
  end
end
