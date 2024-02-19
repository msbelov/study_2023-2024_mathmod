using Plots
using DifferentialEquations

x0 = 111111
y0 = 99999

a = 0.33
b = 0.77
c = 0.44
h = 0.66

P(t) = sin(t+11)
Q(t) = cos(t+11)

u0 = [x0, y0]
p = (a, b, c, h)
T = [0, 2]

function F(du, u, p, t)
    a, b, c, h = p
    du[1] = -a * u[1] - b * u[2] + P(t) 
    du[2] = -c * u[1] - b * u[2] + Q(t)
end

prob = ODEProblem(F, u0, T, p)

sol = solve(prob)

plt = plot!(
     sol,
      vars=(0,1),
      color=:red,
      label="Армия X",
      title="Модель боевых действий №1"
     )
plot!(
      sol,
      vars=(0,2),
      color=:blue,
     label="Армия Y",
     xlabel="Время")

savefig(plt, "lab3_1.png")




