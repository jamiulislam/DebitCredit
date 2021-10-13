require "test_helper"

class TranjectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tranjection = tranjections(:one)
  end

  test "should get index" do
    get tranjections_url
    assert_response :success
  end

  test "should get new" do
    get new_tranjection_url
    assert_response :success
  end

  test "should create tranjection" do
    assert_difference('Tranjection.count') do
      post tranjections_url, params: { tranjection: { amount: @tranjection.amount, tranjectiontype: @tranjection.tranjectiontype, uses: @tranjection.uses } }
    end

    assert_redirected_to tranjection_url(Tranjection.last)
  end

  test "should show tranjection" do
    get tranjection_url(@tranjection)
    assert_response :success
  end

  test "should get edit" do
    get edit_tranjection_url(@tranjection)
    assert_response :success
  end

  test "should update tranjection" do
    patch tranjection_url(@tranjection), params: { tranjection: { amount: @tranjection.amount, tranjectiontype: @tranjection.tranjectiontype, uses: @tranjection.uses } }
    assert_redirected_to tranjection_url(@tranjection)
  end

  test "should destroy tranjection" do
    assert_difference('Tranjection.count', -1) do
      delete tranjection_url(@tranjection)
    end

    assert_redirected_to tranjections_url
  end
end
