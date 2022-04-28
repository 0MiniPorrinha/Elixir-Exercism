defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key) do
    max = tuple_size(numbers) - 1
    do_search(numbers, key, 0, max)
  end

  defp do_search(_numbers, _key, min, max) when min > max,  do: :not_found
  defp do_search(tuple, key, min, max) do

    mid = div(min + max, 2)

    cond do
      key == elem(tuple, mid) -> {:ok, mid}
      key < elem(tuple, mid) -> do_search(tuple, key, min, mid - 1)
      key > elem(tuple, mid) -> do_search(tuple, key, mid + 1, max)
    end
  end
end
