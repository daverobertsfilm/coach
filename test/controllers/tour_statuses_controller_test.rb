require 'test_helper'

class TourStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_status = tour_statuses(:one)
  end

  test "should get index" do
    get tour_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_status_url
    assert_response :success
  end

  test "should create tour_status" do
    assert_difference('TourStatus.count') do
      post tour_statuses_url, params: { tour_status: { name: @tour_status.name } }
    end

    assert_redirected_to tour_status_url(TourStatus.last)
  end

  test "should show tour_status" do
    get tour_status_url(@tour_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_status_url(@tour_status)
    assert_response :success
  end

  test "should update tour_status" do
    patch tour_status_url(@tour_status), params: { tour_status: { name: @tour_status.name } }
    assert_redirected_to tour_status_url(@tour_status)
  end

  test "should destroy tour_status" do
    assert_difference('TourStatus.count', -1) do
      delete tour_status_url(@tour_status)
    end

    assert_redirected_to tour_statuses_url
  end
end
