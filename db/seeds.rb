# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game = Game.create!(name: "Cheesecake")
team1 = Team.create!(name: "Team1", game_id: game.id)
team2 = Team.create!(name: "Team2", game_id: game.id)

10.times do |num|
    user = User.create!(email: String(num) + "@gmail.com", password: "password", name: Faker::StarWars.character)
    if num < 5
        Player.create!(team_id: team1.id, user_id: user.id)
    else
        Player.create!(team_id: team2.id, user_id: user.id)
    end
end
users = User.all
10.times do |num|
    question = Question.create!(game_id: game.id, questionText: Faker::StarWars.quote)
    users.each do |user|
        answer = Answer.create!(question_id: question.id, player_id: user.players[0].id, answerText: Faker::StarWars.quote)
        Score.create!(team_id: user.players[0].team_id, answer_id: answer.id, score: 100)
    end
end