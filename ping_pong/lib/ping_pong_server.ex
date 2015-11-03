defmodule PingPongServer do
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def ping(server) do
    GenServer.call server, :ping
  end

  # Callbacks

  def init(:ok) do
    {:ok, {}} #stateless
  end

  def handle_call(:ping, _from, state) do
    {:reply, :pong, state}
  end
end
