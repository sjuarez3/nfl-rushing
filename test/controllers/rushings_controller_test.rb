require 'test_helper'

class RushingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rushing = rushings(:one)
  end

  test "should get index" do
    get rushings_url
    assert_response :success
  end
end
