# Задача 2. Определить тип, позволяющий итерировать все
# перестановки элементов заданного n элементного множества.
abstract type AbstractCombinObject
 
end
 
Base.iterate(obj::AbstractCombinObject) = (get(obj), nothing)
Base.iterate(obj::AbstractCombinObject, state)=
    if next!(obj) == false
        nothing
    else
        (get(obj), nothing)
    end
 
Base.get(obj::AbstractCombinObject) = obj.value
 
# Задача 3. Определить тип, позволяющий итерировать 
# все k-элементные подмножества заданного n-элементного множества.
 
struct SetIndicator{N} <: AbstractCombinObject
    value::Vector{Bool}
end
 
SetIndicator{N}() where N = SetIndicator{N}(zeros(Bool, N))
 
function next!(indicator::IndicatorSet)
    i = findlast(item->item==0, indicator.value)
    if isnothing(i)
        return false
    end
    indicator.value[i] = 1
    indicator.value[i+1:end] .= 0
    return true 
end
 
# Тестирование:
n=4; A=1:n
for indicator in SetIndicator{n}()
    println(A[findall(indicator)])
end