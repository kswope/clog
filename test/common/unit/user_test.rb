require 'test_helper'

class UserTest < ActiveSupport::TestCase


  #### not much of a test, all the good testing is done at the gem level, this
  #### just tests if it blows up in rails
  test "nothing blows up in rails model" do

    user = User.new
    clog user.email = "test@example.com"
    clog user.password = "not encrypted"
    clog user

  end
  
end
