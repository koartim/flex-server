class Api::V1::SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
    render json: @subscriptions
  end

  def show
    @subscription = Subscription.find(params[:id])
    render json: @subscription
  end

  def create
    @subscription = Subscription.create!(subscription_params)
    render json: { subscription: SubscriptionSerializer.new(@subscription) }
  end

  def destroy
    @subscription = Subscription.find_by(params[:id])

    @subscription.delete
  end

  private

  def subscription_params
    params.require(:subscription).permit(:user_id, :course_id, :sub_name, :course_description, :sub_img)
  end

end
