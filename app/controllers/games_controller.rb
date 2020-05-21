class GamesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def some_action
    render plain: "Hello from some_action"
  end

  def index
    @games = Game.all # Get all the games and saved them on @games
    render json: @games # Render all the games on JSON format
  end

  def show
    @game = Game.find(params[:id]) # Get an specific game using the id of the URL
    render json: @game # render the specific game using json format
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end

  def destroy
    @game = Game.find(params[:id]) # Find the game you want to destroy.
    @game.destroy # Destroy it.
    render json: {status: 'Successfully destroyed', data: @game}, status: :ok
  end

  def update
    @game = Game.find(params[:id]) #Find the game you want to update
    # game_params.merge(company_id: @game.company_id)
    # unless @game.company_id.nil?
    # p '==================='
    # p @game
    # p game_params
    # p '==================='
    if @game.update(game_params) # Validation using the same private method as before
      render json: @game # render the updated record back
    else
      render json: @game.errors, status: :unprocessable_entity # render errors
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
  end
end
