require 'test_helper'

class ChefsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get chefs_name_url
    assert_response :success
  end

  test "should get description" do
    get chefs_description_url
    assert_response :success
  end

  test "should get category" do
    get chefs_category_url
    assert_response :success
  end

  test "should get price_range" do
    get chefs_price_range_url
    assert_response :success
  end

  test "should get location" do
    get chefs_location_url
    assert_response :success
  end

end
