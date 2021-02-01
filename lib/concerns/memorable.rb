require_relative '../lib/concerns/memorable'

module Memorable
    module ClassMethods
        def reset_all
            self.all.clear
        end
        
        def count
            self.all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end

    def self.all
        @@artists
      end
    
      def self.reset_all
        self.all.clear
      end
    
      def self.count
        self.all.count
      end
end