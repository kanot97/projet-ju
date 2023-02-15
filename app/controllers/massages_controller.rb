class MassagesController < ApplicationController
  before_action :set_massage, only: [:show, :edit, :update, :destroy]

  def massages
    @massages = Massage.where("name LIKE ?", "%#{params[:query]}%")
    render :index
  end

  def index
    @massages = Massage.all
  end

  def show
  end

  def new
    @massage = Massage.new
  end

  def create
    @massage = Massage.new(massage_params)
    @massage.user = current_user
    if @massage.save
      redirect_to massages_path(@massage)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @massage.update(massage_params)
    redirect_to massage_path(@massage)
  end

  def destroy
    @massage.destroy
    redirect_to massages_path
  end

  private

  def massage_params
    params.require(:massage).permit(:title, :time, :price, :description)
  end

  def set_massage
    @massage = Massage.find(params[:id])
  end
end
