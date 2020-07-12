module Uni
  class Tracker
    def self.report(msg)
      File.open(Rails.root + 'tmp/tracker.txt', 'w') {|f| f.write(msg) }
    end
  end
end
