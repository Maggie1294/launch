require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150, 1000) }

  describe "#initialization" do
    context 'when plane is made' do
      it 'its type is cesna' do
        expect(my_plane.type).to eq("cesna")
      end
      it 'its wing_loading is 10' do
        expect(my_plane.wing_loading).to eq(10)
      end
      it 'its type is 150' do
        expect(my_plane.horsepower).to eq(150)
      end
    end
  end

  describe "#start" do
    context 'when plane is started' do

      it 'for the first time' do
        expect(my_plane.start).to eq("airplane started")
      end
      it 'already' do
        my_plane.start
        expect(my_plane.start).to eq("airplane already started")
      end
      it 'with not enough fuel' do
        my_plane.fuel = 0
        expect(my_plane.start).to eq("need 10 gallons of fuel to start")
      end
    end
  end

  describe "#takeoff" do
    context 'when ready to take off' do
      it 'when the engine is not started' do
        expect(my_plane.takeoff).to eq("airplane not started, please start")
      end
      it 'when engine is started' do
        my_plane.start
        expect(my_plane.takeoff).to eq("airplane launched")
      end
      it 'with not enough fuel' do
        my_plane.fuel = 10
        my_plane.start
        expect(my_plane.takeoff).to eq("need 100 gallons of fuel to takeoff")
      end
    end
  end

  describe "#land" do
    context 'when ready to land' do
      it 'when the engine is not started' do
        expect(my_plane.land).to eq("airplane not started, please start")
      end
      it "plane has been started, but hasn't taken off" do
        my_plane.start
        expect(my_plane.land).to eq("airplane already on the ground")
      end
      it "if the plane is already in the air" do
        my_plane.start
        my_plane.takeoff
        expect(my_plane.land).to eq("airplane landed")
      end
      it 'with not enough fuel' do
        my_plane.fuel = 110
        my_plane.start
        my_plane.takeoff
        expect(my_plane.land).to eq("need 50 gallons of fuel to land")
      end
    end
  end
end
# require_relative "../../lib/airplane"
#
# describe Airplane do
#
#   let(:my_plane) {Airplane.new("cesna", 10, 150, 500)}
#
#
#   describe "#initialization" do
#       it "type of plane is cesna" do
#         expect(my_plane.type).to eq("cesna")
#       end
#       # it 'its wing loading is 10' do
#       #   expect(my_plane.wing_loading).to eq(10)
#       # end
#       # it 'its horsepower is 150' do
#       #   expect(my_plane.horsepower).to eq(150)
#       # end
#   end
#
#
#   describe "#start" do
#     it "plane is already started" do
#       expect(my_plane.start).to eq("airplane started")
#     end
#     it "plane knows that it is already running" do
# # is it overkill to add the line below? Can't I just start with the expect part?
#       my_plane.start
#       expect(my_plane.start).to eq("airplane is already started")
#     end
#     it "plane is starting with low fuel" do
#       my_plane.fuel = 0
#       expect(my_plane.start).to eq("airplane has no fuel")
#     end
#     it "plane does not have enough fuel" do
#       my_plane.fuel = -100
#       expect(my_plane.start).to eq("airplane really has no fuel")
#     end
#   end
#
#   describe "#stop" do
#     it "turns the plane off and reports that it is off" do
#       my_plane.start
#       expect(my_plane.stop).to eq("airplane is off")
#       expect(my_plane.stop).to eq("airplane is already off")
#     end
#   end
#
#   describe "#land" do
#     it "attempt landing if it is in the air" do
#       my_plane.start
#       my_plane.takeoff
#       expect(my_plane.land).to eq("airplane landed")
#     end
#     it "returns that the plane is not started" do
#       expect(my_plane.land).to eq("airplane is not started, please start")
#     end
#     it "returns that the plane is not in the air" do
#       my_plane.start
#       expect(my_plane.land).to eq("airplane is landed")
#     end
#     it "returns that there is not enough fuel to land" do
#       my_plane.start
#       my_plane.fuel = 10
#       my_plane.takeoff
#       expect(my_plane.land).to eq("airplane has no fuel")
#     end
#     # it "plane is taking off with negative fuel" do
#     #   my_plane.start
#     #   my_plane.fuel = -100
#     #   expect(my_plane.takeoff).to eq("airplane has no fuel")
#     # end
#   end
# end
#
#   describe "#takeoff" do
#     it "attempt takeoff when plane is started" do
#       my_plane.start
#       expect(my_plane.takeoff).to eq("airplane launched")
#     end
#     it "attempt takeoff when plane is not yet started" do
#       expect(my_plane.takeoff).to eq("airplane is not started")
#     end
#     it "plane is in the air" do
#       my_plane.start
#       my_plane.takeoff
#       expect(my_plane.takeoff).to eq("airplane is already in the air")
#     end
#     it "plane is taking off with negative fuel" do
#       my_plane.fuel = -100
#       my_plane.start
#       expect(my_plane.takeoff).to eq("airplane has no fuel")
#     end
# end
