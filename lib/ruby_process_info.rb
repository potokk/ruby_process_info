# frozen_string_literal: true

require 'rusage'

class RubyProcessInfo 
  def self.rss_in_mb
    kilobyte_adjust = ((/darwin/ =~ RUBY_PLATFORM) != nil) ? 1024 : 1
    
    rss.to_f / 1024 / kilobyte_adjust
  end
  
  def self.rss
    ::Process.rusage.maxrss
  end
end
