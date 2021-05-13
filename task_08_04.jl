 #=
 function convert!(A)
 
    for i in 1:size(A,1), j in 1:size(A,2)
        if (A[i,j]>0 && A[i+1,j]>0)
            if A[i,j]<A[i+1,j]
                chislo=A[i,j]
            else
                chislo=A[i+1,j]
            end
            A[1,j]=chislo
            n=A[i+1,j]/A[1,j]
            if n>=2
                A[i+1,j]=-n*A[1,j]+A[i+1,j]
            end
        elseif (A[i,j]<0 && A[i+1,j]<0)
            if A[i,j]>A[i+1,j]
                chislo=A[i,j]
            else
                chislo=A[i+1,j]
            end
            A[1,j]=chislo
            n=A[i+1,j]/A[1,j]
            if n>=1
                A[i+1,j]=-n*A[1,j]+A[i+1,j]
            end
        end
    end
    return A
end
=#
 
function convert!(A)
    for m in 1:minimum(size(A))
        k=argmax(abs,@view A[i:end,i])
        if k != i
            A[m,m:end], A[k,m:end] = A[k,m:end], A[m,m:end]
        end
        for i in m+1:size(A,1)
            t=-A[]
            A[i,m:end] += t* A[m,m:end]
        end
    end
end
 
function argmax(f::Function,a)
    imax=firstindex(a)
    for i in firstindex(a)+1:lastindex(a)
        if f(a[i]) > f(a[imax])
            imax=i
        end
    end
    return imax
end