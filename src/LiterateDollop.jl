module LiterateDollop
export f

fcdm1(f, x; dx=1e-4) = (f(x+dx) - f(x-dx))/2dx

fcdm2(f, x; dx=1e-4) = (f(x+dx) - 2f(x) + f(x-dx))/dx^2

function build_q(f, xk)
    q(x) = f(xk) + fcdm1(f, xk)*(x-xk) + 0.5 * fcdm2(f, xk)*(x-xk)^2
    return q
end

"for simplicity x^(k-1) is xk0 and xk1 is x^(k)"
function optfun(f, x0, x1; ϵ=1e-5)

    while abs(gk) >= ϵ
        xk0 = xk1
        xk1 = xk2
        xk2 = xk1 - (xk1 - xk0) / (g(xk1) - g(gk0)) * g(xk1)
        gk2 = g(xk2)
    end

end

end # module
