# frozen_string_literal: true

require 'rusage'

class RubyProcessInfo 
  def self.rss_in_mb
    rss_in_kb / 1024
  end
  
  def self.rss
    ::Process.rusage.maxrss
  end

  def self.rss_in_kb
    rss.to_f / 1024
  end
end
