class Api::GamesController < ApplicationController
  def name_check

    render 'name_message.json.jbuilder'
  end
end
