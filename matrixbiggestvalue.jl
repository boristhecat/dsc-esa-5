rng = MersenneTwister(1234);
matrix = randn(rng, Float32, (2, 4))
biggest =  maximum(matrix)
println(matrix)
println("The biggest element is: $biggest")