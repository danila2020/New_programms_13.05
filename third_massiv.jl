# отсортировать 2 массива в порядке возрастания и сделать 3-й массив из 2-х массивов
function merge(A,B)
    i=j=1
    C=eltype(A)[]
    while i<=length(A) && j<=length(B)
        if A[i]<B[j]
            push!(C,A[i])
            i+=1
        else
            push!(C,B[j])
            j+=1
        end
    end
    append!(C, @view A[i:end])
    append!(C, @view B[j:end])
    return C
end