require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # (if Rails 4 -> class CategoriesControllerTest < ActionController::TestCase)

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categories index" do
    get categories_path
    # (if Rails 4 -> get :index)
    assert_response :success
  end

  test "should get new" do
    get new_category_path
    # (if Rails 4 -> get :new)
    assert_response :success
  end

  test "should get show" do
    get category_path(@category)
    # (if Rails 4 -> get(:show, {'id' => @category.id}))
    assert_response :success
  end

end