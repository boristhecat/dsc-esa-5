println("1) ---------------------------------------")

A = rand(0:9, 2, 2)
B = rand(0:9, 2, 2)
C = A + B
D = A - B
println("Matrix A: $A")
println("Matrix B: $B")
println("Addition works as expected: $C")
println("Substraction works as expected: $D")

println("2) ---------------------------------------")

C = A * B
D = B * A
println("Multiplication works as expected:")
println("A * B: $C")
println("B * A: $D")

println("3) ---------------------------------------")

C = A / B
D = B / A
println("Devision works as expected:")
println("A / B: $C")
println("B / A: $D")

println("4) ---------------------------------------")

A = rand(0:3, 3, 3)
B = A + 1
C = A - 1
D = A * 2
E = A / 2
println("Matrix A: $A")
println("Matrix A + 1: $B")
println("Matrix A - 1: $C")
println("Matrix A * 2: $D")
println("Matrix A / 2: $E")

println("5) ---------------------------------------")

A = rand(0:5, 3, 4)
B = rand(0:3, 4, 1)
C = A * B
println("Matrix: $A")
println("Vector: $B")
println("Matrix * Vector: $C")