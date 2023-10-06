require "test_helper"

class IdeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea = ideas(:one)
  end

  test "should get index" do
    get ideas_url, as: :json
    assert_response :success
  end

  test "should create idea" do
    assert_difference("Idea.count") do
      post ideas_url, params: { idea: { description: @idea.description, engine: @idea.engine, engineDocs: @idea.engineDocs, image: @idea.image, name: @idea.name } }, as: :json
    end

    assert_response :created
  end

  test "should show idea" do
    get idea_url(@idea), as: :json
    assert_response :success
  end

  test "should update idea" do
    patch idea_url(@idea), params: { idea: { description: @idea.description, engine: @idea.engine, engineDocs: @idea.engineDocs, image: @idea.image, name: @idea.name } }, as: :json
    assert_response :success
  end

  test "should destroy idea" do
    assert_difference("Idea.count", -1) do
      delete idea_url(@idea), as: :json
    end

    assert_response :no_content
  end
end
