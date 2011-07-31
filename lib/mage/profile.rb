module Mage
  class Profile
    attr_accessor :machine

    def initialize
      @machine = case `uname -s`.chomp
      when 'Darwin'
        Darwin.new
      when 'Linux'
        Linux.new
      end
    end

    def os
      @machine.operating_system
    end

    def ram
      @machine.memory
    end

    def cpu
      @machine.processor
    end
  end
end
