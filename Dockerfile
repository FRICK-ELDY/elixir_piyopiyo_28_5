FROM elixir:latest

WORKDIR /app

RUN mix local.hex --force && mix local.rebar --force && mix archive.install hex phx_new --force

COPY mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

COPY . .

CMD ["mix", "phx.server"]
