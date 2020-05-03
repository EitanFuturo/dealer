require 'test_helper'

class TakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @take = takes(:one)
  end

  test "should get index" do
    get takes_url, as: :json
    assert_response :success
  end

  test "should create take" do
    assert_difference('Take.count') do
      post takes_url, params: { take: { date_and_time: @take.date_and_time, drug_id: @take.drug_id, user_id: @take.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show take" do
    get take_url(@take), as: :json
    assert_response :success
  end

  test "should update take" do
    patch take_url(@take), params: { take: { date_and_time: @take.date_and_time, drug_id: @take.drug_id, user_id: @take.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy take" do
    assert_difference('Take.count', -1) do
      delete take_url(@take), as: :json
    end

    assert_response 204
  end
end
