require 'rails_helper'

describe Astronaut, type: :model do
  before :each do
    @as = Astronaut.create(name: 'Alan B, Shepard', age: 48, job: 'Commander')
    @sr = Astronaut.create(name: 'Stuart A. Roose', age: 38, job: 'Command Module Pilot')
    @em = Astronaut.create(name: 'Edgar D. Mitchell', age: 41, job: 'Lunar Module Pilot')
  end

  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

# # User Story 2 of 4
# #
# # As a visitor,
# # When I visit '/astronauts'
# # I see the average age of all astronauts.
# #
# # (e.g. "Average Age: 34")
#   describe "#average_age test" do
#     it 'can calculate the average age of all astronauts' do
#       expect(@astronauts).to eq(42)
#     end
#   end
end
