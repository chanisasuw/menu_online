# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Fern::Application.config.secret_key_base = '42ad6f6ddee82ead5f6812a7956ed6832d5f3e166c37af4c054753975416316e1230dac675862455448dede10248e25c3e4d4379290808dc80cd2dfea38594a3'
