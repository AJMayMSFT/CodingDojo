class Project
  attr_accessor :name, :description
  attr_reader :team_members
  def initialize name, description
    @name = name
    @description = description
    @team_members = []
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def add_to_team(member)
    @team_members.push(member)
  end
end

# p = Project.new("project", "desc")
# p.add_to_team('Joe')
# p.add_to_team('Sam')
# puts p.team_members
