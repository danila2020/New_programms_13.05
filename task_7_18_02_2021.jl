#task_7_18_02_2021.jl - бинарный поиск, т.е находим индекс элемента который вводится пользователем зараннее отсортированным
# т.е это массив элементы которого идут в порядке неубывания

function find!(a[mid])
    k = bubblesort!(a)
    value = a[i]
    mid = length(a) // 2
    low = 0
    high = length(a) - 1
    while (a[mid] != value && low <= high)
        if value > a[mid]
            value = mid + 1
        else
            high = mid - 1
        end
        mid = (low + high) //  2
    end
    if low >  high
    return ("No")
    else
    return ("Id=", mid)
  end
end
function bubblesort!(a)
    n=length(a)
    for k in 1:n-1
        for i in 1:n-k
            if a[i]>a[i+1]
                a[i],a[i+1] = a[i+1],a[i]
            end
        end
    end
    return a
end