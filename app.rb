require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:home_page)
end

get("/rock") do
  @moves = []
  @moves.push("rock")
  @moves.push("paper")
  @moves.push("scissors")

  @pc_move = @moves[rand(0..2)]
  
  erb(:rock)
end

get("/paper") do
  @moves = []
  @moves.push("rock")
  @moves.push("paper")
  @moves.push("scissors")

  @pc_move = @moves[rand(0..2)]

  erb(:paper)
end

get("/scissors") do
  @moves = []
  @moves.push("rock")
  @moves.push("paper")
  @moves.push("scissors")

  @pc_move = @moves[rand(0..2)]

  erb(:scissors)
end
