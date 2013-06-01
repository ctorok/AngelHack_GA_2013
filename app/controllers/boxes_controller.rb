class BoxesController < ApplicationController
  before_filter :current_user, :except => [:index, :show]

  def index
    @boxes = Box.all
  end
  def show
    @box = Box.find(params[:id])
  end
  def new
    @box = Box.new
  end
  def create
    box = Box.create(params[:box])
    box.user = current_user
    box.save
    redirect_to box
  end
  def edit
    @box = Box.find(params[:id])
  end
  def update
    box = Box.find(params[:id])
    if box.user == @current_user
      box.update_attributes(params[:box])
    end
    redirect_to box
  end
  def destroy
  end
end