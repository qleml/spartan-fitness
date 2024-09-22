require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without username" do
    user = User.new
    assert_not user.save, "Saved the user without a username"
  end

  test "should not save user with username longer than 16 characters" do
    user = User.new(username: "a" * 17)
    assert_not user.save, "Saved the user with a username longer than 16 characters"
  end
end
