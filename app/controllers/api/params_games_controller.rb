class Api::ParamsGamesController < ApplicationController
  
  def yer_name
    @my_name = params["name"].upcase
    render 'names_view.json.jb'
  end

  def start_a
    @name = params["name"]

    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'first_initial_view.json.jb'

  end

  def guess_query
    @guess = params[:guess].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Woah, too high. Go Lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "And that number was just right."
    end

    render 'guess_query.json.jb'
  end

  def body_params_guess
    @guess = params[:guess].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Woah, too high. Go Lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "And that number was just right."
    end

    render "body_params_guess.json.jb"
  end
end
