class CardsController < ApplicationController

  def new
  end

  def index
    @card = Card.all
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to @card
    else
      render 'new'
    end


  end

  def show
    @card = Card.find(params[:id])
  end

  private
  def card_params
    params.require(:card).permit(:title, :text)
  end

end
