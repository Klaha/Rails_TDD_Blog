require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:article)
  end

  test "should get edit" do
    get :edit, id: Article.take.id
    assert_response :success
    assert_not_nil assigns(:article)
  end

  test "should update article" do
    patch :update, id: Article.take.id, article: { :title => '123456'}
    assert_redirected_to article_path(assigns(:article))
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: {title: 'Some Title'}
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: Article.take.id
    assert_response :success
    assert_not_nil assigns(:article)
  end

  test "should list articles" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should destroy article" do

    assert_difference('Article.count', -1) do
      delete :destroy, id: @article.id
    end
 
    assert_redirected_to articles_path

  end

  def setup
    @article = articles(:one)
  end

  def teardown
    @article = nil
  end

end
