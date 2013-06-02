class SubscriptionsController < ApplicationController
  before_filter :current_user, :except => [:index, :show]

  def index
    @subscriptions = Subscription.all
  end
  def show
    @subscription = Subscription.find(params[:id])
  end
  def new
    @subscription = Subscription.new
    @box = Box.find(params[:format])
  end
  def create
    subscription = Subscription.create
    subscription.user = current_user
    subscription.box = Box.find(params[:box_id])

    # stripe

    subscription.save
    redirect_to subscription
  end
  def edit
    @subscription = Subscription.find(params[:id])
    @box = @subscription.box
  end
  def update
    subscription = Subscription.find(params[:id])
    if subscription.user == @current_user
      subscription.update_attributes(params[:subscription])
    end
    redirect_to subscription
  end
  def destroy
  end
end