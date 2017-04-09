require 'test_helper'

class CitycleanersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citycleaner = citycleaners(:one)
  end

  test "should get index" do
    get citycleaners_url
    assert_response :success
  end

  test "should get new" do
    get new_citycleaner_url
    assert_response :success
  end

  test "should create citycleaner" do
    assert_difference('Citycleaner.count') do
      post citycleaners_url, params: { citycleaner: { city_id_id: @citycleaner.city_id_id, cleaner_id_id: @citycleaner.cleaner_id_id } }
    end

    assert_redirected_to citycleaner_url(Citycleaner.last)
  end

  test "should show citycleaner" do
    get citycleaner_url(@citycleaner)
    assert_response :success
  end

  test "should get edit" do
    get edit_citycleaner_url(@citycleaner)
    assert_response :success
  end

  test "should update citycleaner" do
    patch citycleaner_url(@citycleaner), params: { citycleaner: { city_id_id: @citycleaner.city_id_id, cleaner_id_id: @citycleaner.cleaner_id_id } }
    assert_redirected_to citycleaner_url(@citycleaner)
  end

  test "should destroy citycleaner" do
    assert_difference('Citycleaner.count', -1) do
      delete citycleaner_url(@citycleaner)
    end

    assert_redirected_to citycleaners_url
  end
end
