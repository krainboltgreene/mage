module Mage
  class Profile
    attr_accessor :profile

    def initialize
      @profile = case `uname -s`.chomp
      when 'Darwin'
        Darwin.new
      when 'Linux'
        Linux.new
      end
    end

    def os
      @profile.os
    end

    def ram
      @profile.ram
    end

    def cpu
      @profile.cpu
    end
  end
end
