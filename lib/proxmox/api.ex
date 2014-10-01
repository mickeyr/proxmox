defmodule Proxmox.API do
  use GenServer

  # User friendly api
  def start_link(host) do
    url = generate_url(host)
    GenServer.start_link(__MODULE__, url, name: __MODULE__)
  end

  def ping(node) do

    GenServer.call __MODULE__, {:ping, node}
  end

  defp generate_url(host) do
    "https://#{host}:8006/api2/json"
  end

  # GenServer api
  def handle_call({:ping, node}, _from, url) do
    {:reply, {:pong, "#{url}/nodes/#{node}"}, url}
  end
end
