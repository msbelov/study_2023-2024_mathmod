using Plots
using DifferentialEquations

x0 = 3
y0 = 8

a = 0.22
b = 0.044
c = 0.33
d = 0.022

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = -a*u[1] + b * u[1] * u[2]
    du[2] = c * u[2] - d * u[1] * u[2]
end

v0 = [x0, y0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi=300,
    legend=false
)

plot!(
    plt,
    X,
    Y,
    label="Зависимость численности хищников от численности жертв",
    color=:blue
    )

savefig(plt, "lab5_1.png")

plt2 = plot(
    dpi=300,
    legend=true)

plot!(
    plt2,
    T,
    X,
    label="Численность жертв"
)

plot!(
    plt2,
    T,
    Y,
    label="Численность хищников"
)

savefig(plt2, "lab5_2.png")

