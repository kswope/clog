
require 'clog'
require 'test/unit'


class Testclog < Test::Unit::TestCase



  def test_format

    # Resetting, but these colors will probably be default
    Clog.colors(:red, :white)  

    clog # should show flag

    clog nil # prints out a literal nil

    clog "Single short string argument"
    clog "Single long string - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    clog :myvar, "Symbol with short value"
    clog :myvar, "Symbol with long string, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    # new two should have a value on each line
    clog "Multiple", "String", "Arguments", "Here"
    clog 1, Object.new, Kernel, RUBY_VERSION, :a_symbol
    
    # this doesn't show much new does it?
    {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}.each do |key, value|
      clog key, value
    end

    clog "Testing maxwidth - location should be on the right"
    Clog.maxwidth(10)
    clog "Location should now be below"

  end



  def test_colors


    def runner(bg, fg=nil)

      if fg
        Clog.colors(bg, fg)
      else
        Clog.colors(bg)
      end
      
      clog "#{fg || 'default'} on #{bg}"

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
    
    Clog.colors(:blue)
    clog "white on blue"

    Clog.colors(:red)
    clog "white on red"

    Clog.colors(:blue, :red)
    clog "red on blue"

    Clog.colors(:yellow, :red)
    clog "red on yellow"
    
  end

end
