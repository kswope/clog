require 'test_helper'

class PublicControllerTest < ActionController::TestCase

  test "nothing blows up in rails controller" do
    clog "Testing string"
    clog :a_symbol, :blah
    clog :an_array, [1,2,3,4,5]
  end

end
