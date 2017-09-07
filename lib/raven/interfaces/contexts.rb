require 'raven/interface'

module Raven
  class ContextsInterface < Interface
    attr_accessor :os, :device

    def initialize(*arguments)
      self.os = {}
      self.device = {}
      super(*arguments)
    end

    def self.sentry_alias
      :contexts
    end
  end
end
