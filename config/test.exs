import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :front, Front.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Bj5YwZjg0e9lUXCbhcGWl8lGZDU9yIsXvPNVq0FNlnZ9kYQXZ991lHoOIek7BzDd",
  server: false
