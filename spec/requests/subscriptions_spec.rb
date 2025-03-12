require 'rails_helper'

RSpec.describe "Subscriptions", type: :request do
  let!(:subscription1) { create(:subscription) }
  let!(:subscription2) { create(:subscription) }
  let!(:tea1) { create(:tea) }
  let!(:tea2) { create(:tea) }
  let!(:customer1) { create(:customer) }  
  let!(:customer2) { create(:customer) } 
  
  before(:each) do
    create(:tea_subscription, subscription: subscription1, tea: tea1)
    create(:tea_subscription, subscription: subscription1, tea: tea2)
    create(:customer_subscription, customer: customer1, subscription: subscription1)
    create(:customer_subscription, customer: customer2, subscription: subscription2)
  end

  describe "GET all tea subscriptions" do
    it "returns a successful response" do
      get api_v1_subscriptions_path
      expect(response).to have_http_status(:success)
    end

    it "returns all subscriptions" do
      get api_v1_subscriptions_path
      subscriptions = JSON.parse(response.body)
      expect(subscriptions["data"].length).to eq(2)
    end

    it "returns correct subscription details" do
      get api_v1_subscriptions_path
      subscriptions = JSON.parse(response.body)

      expect(subscriptions["data"].length).to eq(2)

      expect(subscriptions["data"][0]["attributes"]["title"]).to eq(subscription1.title)
      expect(subscriptions["data"][0]["attributes"]["price"]).to eq(subscription1.price.to_f.to_s)
      expect(subscriptions["data"][0]["attributes"]["isActive"]).to eq(subscription1.isActive)
      expect(subscriptions["data"][0]["attributes"]["frequency"]).to eq(subscription1.frequency)

      expect(subscriptions["data"][1]["attributes"]["title"]).to eq(subscription2.title)
      expect(subscriptions["data"][1]["attributes"]["price"]).to eq(subscription2.price.to_f.to_s)
      expect(subscriptions["data"][1]["attributes"]["isActive"]).to eq(subscription2.isActive)
      expect(subscriptions["data"][1]["attributes"]["frequency"]).to eq(subscription2.frequency)
    end
    
    describe "GET One Tea subscription with teas and customers" do
      let!(:subscription) { create(:subscription) }

      before(:each) do
        create(:tea_subscription, subscription: subscription, tea: tea1)
        create(:tea_subscription, subscription: subscription, tea: tea2)
        create(:customer_subscription, customer: customer1, subscription: subscription)
        create(:customer_subscription, customer: customer2, subscription: subscription)
      end

      it "returns the requested subscription" do
        get api_v1_subscription_path(subscription.id)
        subscription_json = JSON.parse(response.body)

        expect(subscription_json["data"]["attributes"]["id"]).to eq(subscription.id)
        expect(subscription_json["data"]["attributes"]["title"]).to eq(subscription.title)
        expect(subscription_json["data"]["attributes"]["price"]).to eq(subscription.price.to_f.to_s)
        expect(subscription_json["data"]["attributes"]["teas"].length).to eq(2)
        expect(subscription_json["data"]["attributes"]["teas"][0]["id"]).to eq(tea1.id)
        expect(subscription_json["data"]["attributes"]["teas"][0]["title"]).to eq(tea1.title)
        expect(subscription_json["data"]["attributes"]["teas"][0]["description"]).to eq(tea1.description)
        expect(subscription_json["data"]["attributes"]["teas"][0]["temperature"]).to eq(tea1.temperature)
        expect(subscription_json["data"]["attributes"]["teas"][0]["brew_time"]).to eq(tea1.brew_time)
        expect(subscription_json["data"]["attributes"]["teas"][0]["price"]).to eq(tea1.price)
        expect(subscription_json["data"]["attributes"]["teas"][1]["id"]).to eq(tea2.id)
        expect(subscription_json["data"]["attributes"]["teas"][1]["title"]).to eq(tea2.title)
        expect(subscription_json["data"]["attributes"]["teas"][1]["description"]).to eq(tea2.description)
        expect(subscription_json["data"]["attributes"]["teas"][1]["temperature"]).to eq(tea2.temperature)
        expect(subscription_json["data"]["attributes"]["teas"][1]["brew_time"]).to eq(tea2.brew_time)
        expect(subscription_json["data"]["attributes"]["teas"][1]["price"]).to eq(tea2.price)
      end
  
      it "returns a 404 error when subscription is not found" do
        get api_v1_subscription_path(id: 9999)

        expect(response).to have_http_status(:not_found)
        error_message = JSON.parse(response.body)
        expect(error_message["error"]).to eq("Subscription not found.")
      end
    end
    
    describe "PATCH Cancel isActive" do
      let!(:subscription) { create(:subscription) }
  
      it "updates the subscription's isActive" do
        patch api_v1_subscription_path(subscription.id), params: { isActive: false }
        subscription.reload
        expect(subscription.isActive).to eq(false)
        expect(response).to have_http_status(:ok)
      end

      it "returns a 404 error" do
        patch api_v1_subscription_path(id: 999999), params: { isActive: false }
        expect(response).to have_http_status(:not_found)
        error_message = JSON.parse(response.body)
        expect(error_message["error"]).to eq("Subscription not found.")
      end
    end
  end
end
