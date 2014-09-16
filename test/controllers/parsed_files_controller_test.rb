require 'test_helper'

class ParsedFilesControllerTest < ActionController::TestCase
  setup do
    @parsed_file = parsed_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parsed_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parsed_file" do
    assert_difference('ParsedFile.count') do
      post :create, parsed_file: { content: @parsed_file.content, name: @parsed_file.name }
    end

    assert_redirected_to parsed_file_path(assigns(:parsed_file))
  end

  test "should show parsed_file" do
    get :show, id: @parsed_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parsed_file
    assert_response :success
  end

  test "should update parsed_file" do
    patch :update, id: @parsed_file, parsed_file: { content: @parsed_file.content, name: @parsed_file.name }
    assert_redirected_to parsed_file_path(assigns(:parsed_file))
  end

  test "should destroy parsed_file" do
    assert_difference('ParsedFile.count', -1) do
      delete :destroy, id: @parsed_file
    end

    assert_redirected_to parsed_files_path
  end
end
