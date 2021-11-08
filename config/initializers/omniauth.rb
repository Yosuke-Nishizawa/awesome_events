Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, '3f3e7a7585a945c6e262', '7cc60a7e13c066cd58c3180d7d820cec12cd0c4a'
  else
    provider :github,
             Rails.application.credentials.github[:client_id],
             Rails.application.credentials.github[:client_secret]
  end
end
