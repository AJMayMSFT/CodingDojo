class Project
  attr_accessor :name, :description
  def initialize(name, description)
    @name = name
    @description = description
    puts "Project created"
  end
  def elevator_pitch
    puts "So for #{@name}, it goes like this: #{@description}."
  end

end

project1 = Project.new("Cat astrology", "it's astrology, but for cats")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
