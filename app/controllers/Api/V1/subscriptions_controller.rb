class Api::V1::SubscriptionsController < ApplicationController
  def index
    subscriptions = Subscription.all.order(:id)
    render json: SubscriptionSerializer.new(subscriptions).serializable_hash
  end

  def show
    subscription = Subscription.find_by(id: params[:id])

    if subscription
      render json: SubscriptionSerializer.new(subscription).serializable_hash
    else
      render json: { error: "Subscription not found." }, status: :not_found
    end
  end

  def update
    subscription = Subscription.find_by(id: params[:id])

    if subscription
      subscription.update(subscription_params)

      if subscription.save
        render json: {
          subscription: SubscriptionSerializer.new(subscription).serializable_hash
        }, status: :ok
      else
        render json: { error: "Subscription failed to cancel." }, status: :unprocessable_entity
      end
    else
      render json: { error: "Subscription not found." }, status: :not_found
    end
  end

  private

  def subscription_params
    params.permit(:status)
  end
end
