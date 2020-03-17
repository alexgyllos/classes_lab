class Team

  attr_writer :team_name, :players, :coach, :points
  attr_reader :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(name)
    return @players.push(name)
  end

  def find_player(name)
    @players.include?(name)
  end

  def team_match_result(outcome)
    if outcome == "Win"
      @points += 1
    else
      @points -= 1
    end
  end


end
