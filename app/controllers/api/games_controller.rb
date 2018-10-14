class Api::GamesController < ApplicationController
  def name_check
    @name = params[:name].upcase
    if @name.start_with?('A')
      #if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet"
    else
      @message = ""
    end
    render 'name_message.json.jbuilder'
  end

  def rand_num
    #@goal = rand(1..100)
    @goal = 36
    @guess = params[:number].to_i

    # @guess = guess.to_i
    if @guess < @goal
      @message = "your guess is too low! hype up!"
    elsif @guess > @goal 
      @message = "your guess is too high! wow chill"
    elsif @guess == @goal 
      @message = "you got it! Finally."
    end
    @reminder = "your guess was #{@guess}"
    render 'rand_view.json.jbuilder'

  end

  def rand_number
    goal = 36
    @guess = params[:number].to_i

    if @guess < goal
      @message = "your guess is too low! hype up!"
    elsif @guess > goal 
      @message = "your guess is too high! wow chill"
    elsif @guess == goal 
      @message = "you got it! Finally."
    end
    @reminder = "your guess was #{@guess}"
    render 'rand_view_url_segment.json.jbuilder'
  end
end
