class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
  end

  def avg_age
    binding.pry
    tot_age = 0
    @astronauts do |astronaut|
      tot_age += astronaut.age
    end
    tot_age / Astronaut.count
  end
end
