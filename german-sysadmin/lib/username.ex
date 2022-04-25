defmodule Username do
  def sanitize(username) do

      Enum.reduce(username, '', fn char, i ->
      i ++ case char do
        ?_ -> '_'
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        char when char in ?a..?z -> [char]
        _ -> ''
      end
    end)
  end
end
