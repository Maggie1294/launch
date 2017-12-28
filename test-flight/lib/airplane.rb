# specify type, wing loading and horsepower
class Airplane

  attr_reader :type, :wing_loading, :horsepower
  attr_accessor :fuel

  def initialize(type, wing_loading, horsepower, fuel)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @fuel = fuel
    @engine_started = false
    @flying = false
  end

# in the code below, should messages always have different wording? For example, should the message for "not enough fuel" be different for not being able to start and not being able to take off? Line 21 vs. line 35
  # def start
  #   if @running == false
  #     if @fuel <= 0
  #       @running = false
  #       "airplane doesn't have enough fuel to start"
  #     else
  #       @running = true
  #       @fuel -= 10
  #       "airplane started"
  #     end
  #   else
  #     "airplane is already started"
  #   end
  # end

  def start
    if fuel < 10
      "need 10 gallons of fuel to start"
    elsif @engine_started
      @fuel -= 10
      "airplane already started"
    else
      @engine_started = true
      "airplane started"
    end
  end

  # def takeoff
  #   if @running == true
  #     if @fuel <= 0
  #       @flying = false
  #       "airplane doesn't have enough fuel to takeoff"
  #     else
  #       @flying = true
  #       @fuel -= 10
  #       "airplane is launched"
  #     end
  #   else
  #     "airplane is not started, please start"
  #   end
  # end

  def takeoff
      if @engine_started && @fuel < 100
        "need 100 gallons of fuel to takeoff"
      elsif @engine_started
        @fuel -= 100
        @flying = true
        "airplane launched"
      else
        "airplane not started, please start"
      end
    end


#   def land
#     if @running == false
#       "airplane is not started"
#     elsif @flying == false
#       "airplane has already landed"
#     else
#       if @fuel <= 0
#         "airplane is out of fuel"
#       else
#         @flying = false
#         @fuel -= 10
#         "airplane landed"
#       end
#     end
#   end

def land
   if @engine_started && @flying && @fuel < 50
     "need 50 gallons of fuel to land"
   elsif @engine_started && @flying
     @flying = false
     "airplane landed"
   elsif @engine_started
     "airplane already on the ground"
   else
     "airplane not started, please start"
   end
 end
end
