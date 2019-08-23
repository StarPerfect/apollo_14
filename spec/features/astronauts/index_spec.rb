# User Story 1 of 4
#
# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
#
# (e.g. "Name: Neil Armstrong, Age: 37, Job: Commander")
require 'rails_helper'

RSpec.describe 'Astronauts Index Page' do
  before :each do
    @na = Astronaut.create(name: 'Neil Armstrong', age: 37, job: 'Commander')
    @as = Astronaut.create(name: 'Alan B, Shepard', age: 48, job: 'Commander')
    @sr = Astronaut.create(name: 'Stuart A. Roose', age: 38, job: 'Command Module Pilot')
    @em = Astronaut.create(name: 'Edgar D. Mitchell', age: 41, job: 'Lunar Module Pilot')
  end

  it 'can have an index page with all details for each astronaut' do
    visit '/astronauts'

    expect(page).to have_content(@na.name)
    expect(page).to have_content(@na.age)
    expect(page).to have_content(@na.job)
  end

  # User Story 2 of 4
  #
  # As a visitor,
  # When I visit '/astronauts'
  # I see the average age of all astronauts.
  #
  # (e.g. "Average Age: 34")
  describe "#average_age test" do
    it 'can calculate the average age of all astronauts' do
      expect(binding.pry).to eq(42)
    end
  end
end
