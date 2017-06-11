# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # defines class Car
  class Car
    attr_reader :color, :model, :year, :current_speed
    # initialize for Car object
    def initialize(car_praremeters)
      @year = car_praremeters[:year] || 2015
      @color = car_praremeters[:color] || 'purple'
      @model = car_praremeters[:model] || 'skyline'
      @current_speed = 0
    end

    # create new Car object with default parameters
    def self.default_car
      new
    end

    # returns decremented current speed if this possible
    def push_break(speed_down_value)
      return unless @current_speed >= speed_down_value
      @current_speed -= speed_down_value
    end

    # returns incremented current speed
    def speed_up(speed_up_value)
      @current_speed += speed_up_value
    end
  end
end
