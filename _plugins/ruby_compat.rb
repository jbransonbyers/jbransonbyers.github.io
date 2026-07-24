# github-pages pins Liquid 4.0.3, which still calls Object#tainted?.
# That API was removed in Ruby 3.2+, so restore no-op stubs for local builds.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
