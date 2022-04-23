defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do

    "#{first_letter(String.upcase(name))}."
  end

  def initials(full_name) do

    [nome, sobrenome] = full_name
    |> String.split(" ", trim: true)
    initial(nome) <> " " <> initial(sobrenome)
  end

  def pair(full_name1, full_name2) do
    """
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{initials(full_name1)}  +  #{initials(full_name2)}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""

  end
end
