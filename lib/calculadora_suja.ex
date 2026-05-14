defmodule CalculadoraSuja do
  @moduledoc false

  # Este módulo existe só para a demonstração do Credo.
  # Tem problemas de estilo propositais para o Credo apontar.

  def calcular(a, b, c, d, e) do
    x = a + b
    y = x * c
    z = y - d
    resultado = z / e
    IO.puts("resultado: #{resultado}")
    resultado
  end

  def verificar(numero) do
    if numero > 0 do
      if numero > 100 do
        if numero > 1000 do
          :muito_grande
        else
          :grande
        end
      else
        :normal
      end
    else
      :negativo
    end
  end
end
