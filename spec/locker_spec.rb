require 'spec_helper'

module RubyEventStore
  describe Locker do
    specify { expect { |b| subject.with_lock('stream', &b) }.to yield_control }
    specify { expect { |b| subject.with_lock(&b) }.to yield_control }
  end
end
