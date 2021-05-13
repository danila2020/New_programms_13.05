function transp_matrica(a)
    b=similar(a)
    for i in 1:size(a,1)
        for j in 1:size(b,2)
            b[j,i]=a[i,j]
        end
    end
    return b
end