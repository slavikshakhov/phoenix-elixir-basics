defmodule Proj.Dashboard do
    def orders do
        Enum.random(5 .. 20)
    end
    def sales do
        Enum.random(50 .. 200)
    end
    def satisfaction do
        Enum.random(0 .. 100)
    end
end