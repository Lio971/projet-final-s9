Rails.configuration.stripe ={
    publishable_key: Rails.application.secrets.stripe[:STRIPE_PUBLISHABLE_KEY],
    secret_key: Rails.application.secrets.stripe[:STRIPE_SECRET_KEY]
}

Stripe.api_key = Rails.application.secrets.stripe[:secret_key]