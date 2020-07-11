module Uni
  class Tracker
    def self.send(msg)
      File.open(Rails.root + 'tmp/tracker.txt', 'w') {|f| f.write(msg) }
    end
  end
end
