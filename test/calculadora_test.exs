defmodule CalculadoraTest do
  use ExUnit.Case
  doctest Calculadora

  describe "somar/2" do
    test "soma dois números positivos" do
      assert Calculadora.somar(2, 3) == 5
    end

    test "soma número positivo com negativo" do
      assert Calculadora.somar(10, -4) == 6
    end

    test "soma dois números negativos" do
      assert Calculadora.somar(-3, -2) == -5
    end

    test "soma com zero" do
      assert Calculadora.somar(7, 0) == 7
    end
  end

  describe "subtrair/2" do
    test "subtrai dois números positivos" do
      assert Calculadora.subtrair(10, 4) == 6
    end

    test "subtrai resultando em número negativo" do
      assert Calculadora.subtrair(3, 10) == -7
    end
  end

  describe "multiplicar/2" do
    test "multiplica dois números positivos" do
      assert Calculadora.multiplicar(3, 4) == 12
    end

    test "multiplicar por zero retorna zero" do
      assert Calculadora.multiplicar(99, 0) == 0
    end

    test "multiplica dois números negativos (resultado positivo)" do
      assert Calculadora.multiplicar(-3, -4) == 12
    end
  end

  describe "dividir/2" do
    test "divide dois números com sucesso" do
      assert Calculadora.dividir(10, 2) == {:ok, 5.0}
    end

    test "retorna erro ao dividir por zero" do
      assert Calculadora.dividir(10, 0) == {:error, "Divisão por zero não é permitida"}
    end

    test "divisão com resultado decimal" do
      assert Calculadora.dividir(7, 2) == {:ok, 3.5}
    end
  end

  describe "media/1" do
    test "calcula média de uma lista simples" do
      assert Calculadora.media([10, 20, 30]) == {:ok, 20.0}
    end

    test "retorna erro para lista vazia" do
      assert Calculadora.media([]) == {:error, "Lista não pode ser vazia"}
    end

    test "média de lista com um único elemento" do
      assert Calculadora.media([42]) == {:ok, 42.0}
    end
  end

  # describe "DEMO: teste falhando" do
  #   test "ERRADO: somar 2 + 2 esperando 5" do
  #     # Este teste vai FALHAR de propósito!
  #     assert Calculadora.somar(2, 2) == 5
  #   end
  #
  #   test "ERRADO: dividir esperando resultado incorreto" do
  #     assert Calculadora.dividir(10, 2) == {:ok, 6.0}
  #   end
  # end

  # ===========================================================
  # BLOCO 3 — TDD: Test-Driven Development
  # ===========================================================

  describe "TDD — potencia/2 (Red → Green → Refactor)" do
    # PASSO 1 (RED)
    test "RED - potencia ainda não existe" do
      assert Calculadora.potencia(2, 3) == 8
    end

    # PASSO 2 (GREEN)
    test "GREEN - potencia(2, 3) retorna 8" do
      assert Calculadora.potencia(2, 3) == 8
    end

    test "GREEN - potencia(5, 0) retorna 1" do
      assert Calculadora.potencia(5, 0) == 1
    end

    test "GREEN - potencia(3, 2) retorna 9" do
      assert Calculadora.potencia(3, 2) == 9
    end

    # PASSO 3 (REFACTOR): Testes continuam passando após refatoração
  end
end
