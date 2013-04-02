class WelcomeController < ApplicationController


  def index
    render :text => "What's up, just doing some loggin"
    clog "Hello log!"
    clog "Hello log!  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    clog :message, "hello log!"
    clog Rails.root, Object.new, Kernel, RUBY_VERSION, :a_symbol
  end


end
