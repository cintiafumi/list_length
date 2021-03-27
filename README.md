# List Length

O projeto `list_length` é o primeiro desafio da @Rocketseat da Trilha de [Elixir](https://elixir-lang.org/).

O desafio é criar um módulo `ListLength` contendo uma função `call/1` que recebe como argumento uma [Lista](https://hexdocs.pm/elixir/List.html) de números. Essa função deve retornar o tamanho dessa lista.

Iniciando o projeto

```bash
mix new list_length
```

Criando o teste

```elixir
defmodule ListLengthTest do
  use ExUnit.Case

  describe "list_length/1" do
    test "returns the length of a list" do
      list = [1, 2, 3]

      response = ListLength.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
```

Criando a função usando [recursão](https://elixir-lang.org/getting-started/recursion.html) e com o conceito de _Tail Call Optimization_ ([wikipedia](https://en.wikipedia.org/wiki/Tail_call)):

```elixir
defmodule ListLength do
  def call(list), do: list_length(list, 0)

  defp list_length([], acc), do: acc

  defp list_length([_head | tail], acc) do
    acc = acc + 1
    list_length(tail, acc)
  end
end
```

Executando o projeto no terminal:

```bash
iex -S mix
```

Executando a função:

```elixir
ListLength.call([1, 3, 6, 43, 6])
#..> 5
```

Voilà! 🚀
