require 'raven/interface'

module Raven
  class ThreadsInterface < Interface
    attr_accessor :values

    def self.sentry_alias
      :threads
    end

    def to_hash(*args)
      data = super(*args)
      data[:values] = data[:values].map(&:to_hash) if data[:values]
      data
    end
  end
end
