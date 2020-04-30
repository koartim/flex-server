class Api::V1::SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
    render json: @subscriptions
  end

  def show
    @subscription = Subscription.find(params[:id])
    render json: @subscriptions
  end

  def create
    @subscription = Subscription.create!(subscription_params)
    render json: { subscription: SubscriptionSerializer.new(@subscription) }
  end

  private

  def subscription_params
    params.require(:subscription).permit(:user_id, :course_id, :sub_name, :course_description)
  end

end
