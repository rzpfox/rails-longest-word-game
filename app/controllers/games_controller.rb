require 'open-uri'
require 'json'
class GamesController < ApplicationController

  def new
    @grid = []
    (0..9).each do |grids|
      @grid <<('A'..'Z').to_a.sample
    end
    @grid
    render("games/new.html")
  end

  def score
    @game = params[:game]
    @result = {}
    @grid_string = open("https://wagon-dictionary.herokuapp.com/#{@game.downcase}").read
puts @grid_string
    @grid_hash = JSON.parse(@grid_string)
puts @grid_hash
    # @array = @game.upcase.split("").take_while {(e) }

    # puts @array.inspect

    # if @array.length == @game.length
    #   partof = true
    # else partof = false
    # end
    # if partof == true
    #   @message = "well done!"
    # else
    #   @message = "not an english word!"
    # end
    @result = @message
    # result
  end
end



# def run_game(attempt, grid, start_time, end_time)
#   result = {}
#   attempt_string = open("https://wagon-dictionary.herokuapp.com/#{attempt.downcase}").read
#   attempt_hash = JSON.parse(attempt_string)
#   time = end_time - start_time

#   array = attempt.upcase.split("").take_while { |e| grid.include?(e) }
#     if array.length == attempt.length
#       included = true
#     else included = false
#     end
#   # elsif attempt_hash["found"] == false
#   #   score = 0
#   #   message = "your word is wrong!"
#     if included == true
#       score = attempt_hash["length"] / time
#       message = "well done!"
#     else
#       score = 0
#       message = "not an english word!"
#     end
#   result = { time: time, score: score, message: message }
#     # result
# end
