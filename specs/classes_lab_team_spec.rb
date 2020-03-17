require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes_lab_team')

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")
    assert_equal("Losers", team.team_name)
  end

  def test_get_team_players
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")
    assert_equal(["Francesco", "Antonio", "Eugene"], team.players)
  end

  def test_get_team_coach
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")
    assert_equal("Alex", team.coach)
  end

  def test_add_new_player
    #Given I have 3 players
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")
    #When I call add_new_player method
    result = team.add_new_player("Bob")
    #Then I have 4 players in array
    assert_equal(4, result.count())
  end

  def test_find_player
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")

    result = team.find_player("Antonio")

    assert_equal(true, result)
  end

  def test_team_match_result
    #Given the team has won
    team = Team.new("Losers", ["Francesco", "Antonio", "Eugene"], "Alex")
    #When I call team_match_result
    team.team_match_result("Win")
    #Then the teams points will be 1
    assert_equal(1, team.points)
  end

end
