class Team
  attr_accessor :name, :score

  def initialize(name, score=0)
    @name = name
    @score = score
  end
end
class Graph
  attr_accessor :teams

  def initialize
    @teams = []
  end

  def add_team(name, score)
    team = @teams.select {|t| t.name == name}.first
    if team
      team.score += score
    else
      @teams << Team.new(name, score)
    end
  end
end

# team1, team2, sorces = gets.split
g = Graph.new
team1, team2, sorces = "JAPAN KOREA 2:1".split
g.add_team(team1, 3)
g.add_team(team2, 0)
team1, team2, sorces = "KOREA CHINA 0:3".split
g.add_team(team1, 0)
g.add_team(team2, 3)
team1, team2, sorces = "CHINA JAPAN 0:1".split
g.add_team(team1, 0)
g.add_team(team2, 3)
team1, team2, sorces = "JAPAN VIETNAM 2:0".split
g.add_team(team1, 3)
g.add_team(team2, 0)
team1, team2, sorces = "KOREA VIETNAM 4:0".split
g.add_team(team1, 3)
g.add_team(team2, 0)
puts g
