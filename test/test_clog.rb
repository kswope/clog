require 'helper'
require 'redgreen'

class Testclog < Test::Unit::TestCase

  def test_format

    # These colors will probably be default
    Clog.colors(:red, :white)  

    clog # should show flag

    clog nil

    clog "Single short string argument"
    clog "Single long string - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    clog :myvar, "Symbol with short value"
    clog :myvar, "Symbol with long string, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    clog "Multiple", "String", "Arguments", "Here"
    clog 1, Object.new, Kernel, RUBY_VERSION, :a_symbol
    
    # hash dump
    {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}.each do |key, value|
      clog key, value
    end

    clog "Testing maxwidth - location should be on the right"
    Clog.maxwidth(10)
    clog "Location should now be below"

  end

  def test_colors
    
    def runner(bg, fg=nil)
      Clog.colors(bg, fg)
      clog "visual inspection color test"
    end
    
    runner :black
    runner :red
    runner :green
    runner :yellow
    runner :blue
    runner :magenta
    runner :cyan
    runner :white
    
    runner :black, :white
    runner :black, :yellow
    runner :black, :blue
    runner :white, :black
    runner :white, :blue
    runner :blue, :yellow
    
  end

end
