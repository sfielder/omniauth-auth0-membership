Rails.application.config.middleware.use OmniAuth::Builder do
  Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'FM6eEBG7PsnuFbILqKZAVe3NDWVPMLSH',
    'uClpvJUVWMHh-jA19aLDCDsQnoJtPCOFFpqIa7RoFBrPrdDPtKRdARjmy95emg6B',
    'sfielder.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end
