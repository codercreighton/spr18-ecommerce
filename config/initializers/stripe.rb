Rails.configuration.stripe = {

  # :publishable_key => "#{ENV['stripe_test_publishable_key']}",

  # :secret_key => "#{ENV['stripe_test_secret_key']}"
  :publishable_key => "#{Figaro.env.stripe_test_publishable_key}",

  :secret_key => "#{Figaro.env.stripe_test_secret_key}"

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]