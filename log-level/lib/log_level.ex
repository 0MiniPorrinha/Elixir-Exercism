defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do

    case to_label(level, legacy?) do
      :error -> :ops
      :fatal -> :ops
      :unknown -> if legacy? do
        :dev1
      else
        :dev2
      end
      _ -> nil
    end
  end
end
