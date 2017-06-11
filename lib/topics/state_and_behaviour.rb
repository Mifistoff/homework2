# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # defines class Car
  class Car
    attr_accessor :color, :model, :year, :current_speed
    DEFAULT_PARAMS = { year: 2015, color: 'purple', model: 'skyline' }.freeze
    # create new Car object with default parameters
    def self.default_car
      new
    end

    # initialize for Car object
    def initialize(car_parameters)
      @year = car_parameters.fetch(:year, DEFAULT_PARAMS[:year])
      @color = car_parameters.fetch(:color, DEFAULT_PARAMS[:color])
      @model = car_parameters.fetch(:model, DEFAULT_PARAMS[:model])
      @current_speed = 0
    end

    # returns decremented current speed if this possible
    def push_break(speed_down_value)
      return if @current_speed < speed_down_value
      @current_speed -= speed_down_value
    end

    # returns incremented current speed
    def speed_up(speed_up_value)
      @current_speed += speed_up_value
    end
  end
end
