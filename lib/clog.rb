require 'term/ansicolor'

class Clog

  @@foreground = :white
  @@background = :red
  @@maxwidth = 150 # max length before putting caller location on next line

  #### change colors, default foreground is set here
  def self.colors(bg, fg=:white)
    @@background = bg
    @@foreground = fg
  end

  #### change default maxwidth
  def self.maxwidth(max)
    @@maxwidth = max
  end

  class << self

    def clog(*args)

      # write to appopriate stream
      if defined?(Rails.logger)
        Rails.logger.debug(message(*args))
      else # probably just for testing
        puts message(*args)
      end

    end

    #### Generate string to be logged
    def message(*args)

      if args.size == 0 # flag
        flag + leftloc
      elsif args.size == 1 # single argument
        if too_long_for_leftloc(args, leftloc)
          "#{args[0].inspect}\n#{uploc}"
        else
          "#{args[0].inspect}#{leftloc}"
        end
      elsif args.size == 2 && args[0].class == Symbol # symbol + single argument
        #symbol = colorize(args[0].to_s + ':')
        if too_long_for_leftloc(args, leftloc)
          "#{args[0]}: #{args[1].inspect}\n#{uploc}"
        else
          "#{args[0]}: #{args[1].inspect}#{leftloc}"
        end
      else # multiple args, each gets its own line
        str = args.inject(''){|str, x| str << "#{x.inspect}\n"}
        "#{str}#{uploc}"
      end

    end

    private # ~*~*~*~*~

    include Term::ANSIColor

    #### Decide which loc is best
    def too_long_for_leftloc(args, lloc)

      # figure out length sum of arguments
      length = args.inject(0) {|sum,x| sum+=  x.inspect.length }

      # hello there, kludge - have to strip off color escape codes to size lloc
      lloc = lloc.gsub(/\e\[(?:[34][0-7]|[0-9])?m/, '')

      length += lloc.length

      length > @@maxwidth
      
    end

    #### colored get_caller_str preceeded with "\n^^^"
    def uploc
      colorize("^^^ " + get_caller_str)
    end

    #### colored get_caller_str preceeded with "<---"
    def leftloc
      " " + colorize(" <--- " + get_caller_str)
    end

    #### Munged Kernel#caller output
    def get_caller_str

      #(caller(2)[0])[/\/app\/(.*$)/, 1]
      call = caller(5).first

      # Don't like the format of Kernel#caller, lets parse and reassemble
      # output (the hexcodes are here because the characters messed up my
      # editors colors)
      match = call.match /^(.*?):(\d+):in \x60(.*)\x27/ 

      path = match[1]
      line = match[2]
      func = match[3]

      # try to remove Rails.root from path
      #path[Rails.root.to_s] = "" if defined?(Rails.root)
      path.gsub!(/#{Rails.root}\//, '') if defined?(Rails.root)
       
      #path.gsub!(/#{RAILS_ROOT}\//, '') if defined? RAILS_ROOT

      "#{path}:#{line} #{func}()"

    end

    #### Note: bolded black forground looks greyish, white background looks
    #### greyish, but everything else bolded looks good - that is why this
    #### method has conditionals
    def colorize(txt)
      str = ""
      str << bold unless @@foreground == :black
      str << send("on_#{@@background}") unless @@background == :white
      str << send(@@foreground)
      str << txt 
      str << reset
    end

    #### Oh, say can you see...
    def flag
      flag = ""
      flag << "#{bold}#{on_blue}#{white}*#{reset}" * 3
      flag << "#{bold}#{on_red}#{white}=#{reset}" * 6
    end

  end # class << self

end # class


class Object

  private # make private so clog can only be called naked

  def clog(*args)
    Clog.clog(*args)
  end

end

