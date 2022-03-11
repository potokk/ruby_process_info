# frozen_string_literal: true

require 'rusage'

module RubyProcessInfo
  def rss
    ::Process.rusage.maxrss
  end

  def rss_in_mb
    rss.to_f / 1024
  end
end
