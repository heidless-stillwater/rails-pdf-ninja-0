require "test_helper"

class ApodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apod = apods(:one)
  end

  test "should get index" do
    get apods_url
    assert_response :success
  end

  test "should get new" do
    get new_apod_url
    assert_response :success
  end

  test "should create apod" do
    assert_difference('Apod.count') do
      post apods_url, params: { apod: { name: @apod.name, picture: @apod.picture } }
    end

    assert_redirected_to apod_url(Apod.last)
  end

  test "should show apod" do
    get apod_url(@apod)
    assert_response :success
  end

  test "should get edit" do
    get edit_apod_url(@apod)
    assert_response :success
  end

  test "should update apod" do
    patch apod_url(@apod), params: { apod: { name: @apod.name, picture: @apod.picture } }
    assert_redirected_to apod_url(@apod)
  end

  test "should destroy apod" do
    assert_difference('Apod.count', -1) do
      delete apod_url(@apod)
    end

    assert_redirected_to apods_url
  end
end
