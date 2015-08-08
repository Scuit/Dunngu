require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('News.count') do
      post :create, news: { body: @news.body, category_id: @news.category_id, date_time: @news.date_time, image: @news.image, province_id: @news.province_id, status: @news.status, title: @news.title, user_id: @news.user_id }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { body: @news.body, category_id: @news.category_id, date_time: @news.date_time, image: @news.image, province_id: @news.province_id, status: @news.status, title: @news.title, user_id: @news.user_id }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_index_path
  end
end
