using Plots
using DifferentialEquations

w = 1.7
g = 0.0
x0 = 0
y0 = -1.4

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = u[2]
    du[2] = -w*u[1] - g*u[2]
end

v0 = [x0, y0]
tspan = (0.0, 29.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    layout = (1,2),
    dpi = 300,
    legend = false)

plot!(
    plt[1],
    T,
    X,
    title = "Решение уравнения",
    color=:blue)

plot!(
    plt[2],
    X,
    Y,
    title="Фазовый портрет",
    color=:blue)

savefig(plt, "lab4_1.png")
