defmodule Calculadora do
  @moduledoc """
  Módulo de calculadora simples.
  Demonstra funções puras na programação funcional:
  - Para a mesma entrada, sempre retornam a mesma saída
  - Não produzem efeitos colaterais
  """

  def somar(a, b), do: a + b

  def subtrair(a, b), do: a - b

  def multiplicar(a, b), do: a * b

  def dividir(_a, 0), do: {:error, "Divisão por zero não é permitida"}
  def dividir(a, b), do: {:ok, a / b}

  def media([]), do: {:error, "Lista não pode ser vazia"}

  def media(lista) do
    soma = Enum.sum(lista)
    {:ok, soma / length(lista)}
  end
end
