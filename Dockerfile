FROM elixir:latest

WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new --force

RUN apt-get update
RUN apt-get install -y inotify-tools

COPY mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

COPY . .

CMD ["mix", "phx.server"]
