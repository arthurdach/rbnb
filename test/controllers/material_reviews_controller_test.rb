require 'test_helper'

class MaterialReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get material_reviews_create_url
    assert_response :success
  end

  test "should get destroy" do
    get material_reviews_destroy_url
    assert_response :success
  end

end
