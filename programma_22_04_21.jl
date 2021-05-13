# задача 1 возвращает случайные одномерного массива
function massiv(n)
 
 
    plot(rand(n),rand(n))
end
 
massiv(10)
 
# задача 2 написать функцию которая получает на вход массив точек плоскости
# типа Point2D и отображает их на графике
randpoints(random::Function, num::Integer) = [(random(),random()) for _ in 1:num]
# random - формальный параметр типа function, 2-ой аргумент - длина последовательности точек
points = randpoints(rand, 20)
scatter(points; legend = false) 
# legend = false - это для того, чтобы 
#не создавалась панель с подписями графиков, которая может
# закрывать часть точек
 
# задача 3 Задача 3. Написать функцию, получающую вектор кортежей, содержащих пары
# точек типа Vector2D, и возвращающую графический объект 
#(типа Plots.Plot), содержащий изображение соответствующих отрезков, расположенных на плоскости.
module Vector2Ds
 
    export Vector2D, xdot, sin, cos
    using LinearAlgebra # - чтобы стали доступными фунции dot (скалярное произведение), norm (длина вектора)
 
    Vector2D{T<:Real} = Tuple{T,T}
 
    Base. cos(a::Vector2D, b::Vector2D) = dot(a,b)/norm(a)/norm(b)
    xdot(a::Vector2D, b::Vector2D) = a[1]*b[2]-a[2]*b[1]
                # xdot(a,b)=|a||b|sin(a,b) - косое произведение
    Base. sin(a::Vector2D, b::Vector2D) = xdot(a,b)/norm(a)/norm(b)
end
using .Vector2Ds
Point=Vector2D
Segment{T<:Real} = Tuple{Point{T},Point{T}}
 
function intersect((A₁,B₁)::Segment, (A₂,B₂)::Segment)    
    A = [B₁[2]-A₁[2]  A₁[1]-B₁[1]
         B₂[2]-A₂[2]  A₂[1]-B₂[1]]
 
    b = [A₁[2]*(A₁[1]-B₁[1])+A₁[1]*(B₁[2]-A₁[2])
         A₂[2]*(A₂[1]-B₂[1])+A₂[1]*(B₂[2]-A₂[2])]
 
    x,y = A\b
 
    if isinner((x, y), (A₁,B₁))==false || isinner((x, y), (A₂,B₂))==false
        return nothing
    end
 
    return (x,y)
end
 
isinner(P::Point, (A,B)::Segment) = 
    (A[1] <= P[1] <= B[1] || A[1] >= P[1] >= B[1]) &&
    (A[2] <= P[2] <= B[2] || A[2] >= P[2] >= B[2])