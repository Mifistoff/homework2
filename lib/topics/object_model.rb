# frozen_string_literal: true

# exercise object model
module ObjectModel
  # defined module Linux Friendly
  module LinuxFriendly
    # superclass method fork process
    def fork_process
      super
    end
  end
  # parent class for Laptop
  class PersonalComputer
    # defined method fork process
    def fork_process
      'Parent: allocate memory'
    end

    # defined method mine bitconins
    def mine_bitcoins
      inspect
    end
  end
  # defined new class Laptop with superclass PersonalComputer
  class Laptop < PersonalComputer
    prepend LinuxFriendly
  end
end
