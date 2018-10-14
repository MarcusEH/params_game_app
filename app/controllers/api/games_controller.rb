class Api::GamesController < ApplicationController
  def name_check
    @name = params["name"]
    if @name.start_with?('a')
      @message = "Hey, your name starts with the first letter of the alphabet"
    else
      @message = ""
    end
    render 'name_message.json.jbuilder'
  end

  def rand_num
    @goal = rand(1..100)

    guess = params["number"]
    @guess = guess.to_i
    if @guess< @goal
      @message = "you guess is too low!"
    elsif @guess > @goal 
      @message = "you guess is too high! wow chill"
    elsif @guess == @goal 
      @message = "you got it! Finally."
    end
    render 'rand_view.json.jbuilder'

  end
end
