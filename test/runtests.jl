using LiterateDollop, Test

ϵ = 1e-5

@testset "optfun" begin
    f1(x) = x^2
    f2(x) = (x-1)^2*10 + 10
    f3(x) = (x+10)^2 - 10

    @test isapprox(optfun(f1, -3, 10), 0, atol=ϵ)
    @test isapprox(optfun(f2, -3, 10), 1, atol=ϵ)
    @test isapprox(optfun(f3, -30, 30), -10, atol=ϵ)
end
