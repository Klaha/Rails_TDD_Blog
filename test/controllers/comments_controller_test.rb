require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, article_id: @article.id, comment: { commenter: @comment.commenter, body: @comment.body }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  # test "should destroy comment" do
  #   assert_difference('Comment.count', -1) do
  #     post :destroy, article_id: @article.id, id: @comment.id
  #   end

  #   assert_redirected_to article_path(assigns(:article))
  # end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, article_id: @article.id, id: @comment
    end

    assert_redirected_to article_path(assigns(:article))
  end

  def setup
    @article = articles(:one)
    @comment = comments(:one)
  end

  def teardown
    @article = nil
    @comment = nil
  end

end
