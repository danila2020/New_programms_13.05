# реализовать функцию получающую на вход вектор кортежей с координатами
# вершин некоторого плоского многоугольника перечисленных в
# каком-то определенном положительном или в отрицательном направлении
# их обхода и возвращающую значение его площади. Реализовать метод
# трапеций.
function area(a) # n - к-во сторон многоугольника, a - массив координат
    # точек
    k=0
    for i in 1:size(a) # i - координата x
        for j in 2:size(a) # j - координата y
            k+=(1/2(a[i]*a[j]))
        end
    end
    return abs(k)
end
 
# метод треугольника
function area(a,b,c)
    s=0
    p=0
    if (a>0 && b>0 && c>0)
        p=(a+b+c)/2
        s=sqrt(p*(p-a)(p-b)(p-c))
    end
    return s
end