module RubyEventStore
  class Locker
    def with_lock(*)
      yield
    end
  end
end
