using Plots
using DifferentialEquations

x0 = 111111
y0 = 99999

a = 0.33
b = 0.77
c = 0.22
h = 0.88

P(t) = sin(22*t)
Q(t) = cos(22*t)

u0 = [x0, y0]
p = (a, b, c, h)
T = [0, 2]

function F(du, u, p, t)
    a, b, c, h = p
    du[1] = -a * u[1] - b * u[2] + P(t) 
    du[2] = -c * u[1] * u[2] - b * u[2] + Q(t)
end

prob = ODEProblem(F, u0, T, p)

sol = solve(prob)

plt = plot!(
     sol,
      vars=(0,1),
      color=:red,
      label="Армия X",
      title="Модель боевых действий №2"
     )
plot!(
      sol,
      vars=(0,2),
      color=:blue,
     label="Армия Y",
     xlabel="Время")

savefig(plt, "lab3_2.png")




