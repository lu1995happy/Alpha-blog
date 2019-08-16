require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # (if Rails 4 -> class CategoriesControllerTest < ActionController::TestCase)

  def setup
    @category = Category.create(name: "Sports")
    @user = User.create(username: "john", email: "john@example.com", password: "password", admin: true)
  end

  test "should get categories index" do
    get categories_path
    # (if Rails 4 -> get :index)
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@user, "password")
    get new_category_path
    # (if Rails 4 -> session[:user_id] = @user.id)
    # (if Rails 4 -> get :new)
    assert_response :success
  end

  test "should get show" do
    get category_path(@category)
    # (if Rails 4 -> get(:show, {'id' => @category.id}))
    assert_response :success
  end

  test "should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post categories_path, params: { category: { name: "sports" } }
      # (if Rails 4 -> post :create, category: { name: "sports" })
    end
    assert_redirected_to categories_path
  end

end