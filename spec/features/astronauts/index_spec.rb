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
    @na = Astronaut.create!(name: 'Neil Armstrong', age: 37, job: 'commander')
  end

  it 'can have an index page with all details for each astronaut' do
    visit '/astronauts'

    expect(page).to have_content(@na.name)
    expect(page).to have_content(@na.age)
    expect(page).to have_content(@na.job)
  end
end
