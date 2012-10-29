Stripe.api_key = SETTINGS["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = SETTINGS["STRIPE_PUBLIC_KEY"]

StripeEvent.setup do
  subscribe 'customer.subscription.deleted' do |event|
    user = User.find_by_customer_id(event.data.object.customer)
    user.expire
  end
end