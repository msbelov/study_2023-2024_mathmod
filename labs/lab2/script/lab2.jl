using Plots

const distance = 20
const diff = 5
const thetaPrayDeg = 240
const dTheta = 0.01
const maxTheta = 4π

# Первый случай

r0 = distance / (diff + 1)
theta0 = 0 

theta1 = theta0 + maxTheta
thetaHunt = theta0:dTheta:theta1
thetaPray = thetaPrayDeg * π / 180 + 2 * theta0


plt_first = plot(proj=:polar, aspect_ratio=:equal, dpi=500, title="Белов(33 вар.).Первый случай", legend=true)
plot!(plt_first, [theta0, theta0], [distance, r0 * exp(theta0 / sqrt(diff^2 - 1))], label=false, color=:red)
plot!(plt_first, thetaHunt, theta -> r0 * exp(theta / sqrt(diff^2 - 1)), label=:"Траектория охраны", color=:red)
plot!(plt_first, [0, thetaPray], [0, r0 * exp(thetaPray / sqrt(diff^2 - 1)) + 20], label=:"Траектория браконьеров", color=:green)
plot!(plt_first, [thetaPray], [r0 * exp(thetaPray / sqrt(diff^2 - 1))], seriestype=:scatter, label=:"Точка пересечения", color=:blue)

savefig(plt_first, "lab2_1.png")

# Второй случай
r0 = distance / (diff - 1)
theta0 = -π

theta1 = theta0 + maxTheta
thetaHunt = theta0:dTheta:theta1
thetaPray = thetaPrayDeg * π / 180 + 2 * theta0


plt_second = plot(proj=:polar, aspect_ratio=:equal, dpi=500, title="Белов(33 вар.).Второй случай", legend=true)
plot!(plt_second, [theta0, theta0], [distance, r0 * exp(theta0 / sqrt(diff^2 - 1))], label=false, color=:red)
plot!(plt_second, thetaHunt, theta -> r0 * exp(theta / sqrt(diff^2 - 1)), label=:"Траектория охраны", color=:red)
plot!(plt_second, [0, thetaPray], [0, r0 * exp(thetaPray / sqrt(diff^2 - 1)) + 20], label=:"Траектория браконьеров", color=:green)
plot!(plt_second, [thetaPray], [r0 * exp(thetaPray / sqrt(diff^2 - 1))], seriestype=:scatter, label=:"Точка пересечения", color=:blue)

savefig(plt_second, "lab2_2.png")