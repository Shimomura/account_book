require 'test_helper'

class OutlaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outlay = outlays(:one)
  end

  test "should get index" do
    get outlays_url
    assert_response :success
  end

  test "should get new" do
    get new_outlay_url
    assert_response :success
  end

  test "should create outlay" do
    assert_difference('Outlay.count') do
      post outlays_url, params: { outlay: { amount: @outlay.amount, category_id: @outlay.category_id, date: @outlay.date, memo: @outlay.memo, wallet_id: @outlay.wallet_id } }
    end

    assert_redirected_to outlay_url(Outlay.last)
  end

  test "should show outlay" do
    get outlay_url(@outlay)
    assert_response :success
  end

  test "should get edit" do
    get edit_outlay_url(@outlay)
    assert_response :success
  end

  test "should update outlay" do
    patch outlay_url(@outlay), params: { outlay: { amount: @outlay.amount, category_id: @outlay.category_id, date: @outlay.date, memo: @outlay.memo, wallet_id: @outlay.wallet_id } }
    assert_redirected_to outlay_url(@outlay)
  end

  test "should destroy outlay" do
    assert_difference('Outlay.count', -1) do
      delete outlay_url(@outlay)
    end

    assert_redirected_to outlays_url
  end
end
