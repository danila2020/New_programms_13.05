# обратный элемент
function ring(n,a) # n - это кольцо, a - это элемент
    b = 0 # b - это обратный элемент
    while ((b*a)%n != 1 && a%n != 0)
        b+=1
    end
    if b==0
        return "nothing"
    else
       return b
    end
end

# возведение в степень
function pow(a,n) # a - число, n - степень этого числа
    b=1 # b - это число которое возводим в степень
    while n>0
        b*=a
        n-=1
    end
    return b
end

#вывести n-ое число посл-сти Фиббоначи
function fibonacci(n)
    cur = 0
    a = 1
    b = 1
    k = 0
    while k < n
        cur = a+b
        b = a
        a=cur
        k+=1
    end
    return cur
end
# Посчитать логарифм
function logarifm(a,b) # a - это основание логарифма, b - это число
    if a==b
        return 1
    end
    if (a==1 && a<=0)
        return "Ошибка"
    end
    n=1
    if (a!=b && b>a)
        sqrt(b)
        n+=1
        return n
    end
    if (a!=b && b<a)
        b=b^2
        n/=2
        return n
    end
end

# простое число
function prostoe(n)
    while n>1
        if (n%2==0 && n%3==0 && n%4==0 && n%5==0 && n%6==0 && n%7==0 && n%8==0 && n%9==0)
            return "false"
        elseif (n%2==0 && n%3==0 && n%4==0 && n%5==0 && n%6==0 && n%7==0 && n%8==0)
            return "false"
        elseif (n%2==0 && n%3==0 && n%4==0 && n%5==0 && n%6==0 && n%7==0)
            return "false"
        elseif (n%2==0 && n%3==0 && n%4==0 && n%5==0 && n%6==0)
            return "false"
        elseif (n%2==0 && n%3==0 && n%4==0 && n%5==0)
            return "false"
        elseif (n%2==0 && n%3==0 && n%4==0)
            return "false"
        elseif (n%2==0 && n%3==0)
            return "false"
        elseif (n%4==0)
            return "false"
        elseif (n%8==0)
            return "false"
        elseif (n%9==0)
            return "false"
        elseif (n%27==0)
            return "false"
        elseif (n%16==0)
            return "false"
        elseif (n%64==0)
            return "false"
        elseif (n%25==0)
            return "false"
        elseif (n%125==0)
            return "false"
        elseif (n%36==0)
            return "false"
        elseif (n%216==0)
            return "false"
        elseif (n%49==0)
            return "false"
        elseif (n%343==0)
            return "false"
        elseif (n%64==0)
            return "false"
        elseif (n%512==0)
            return "false"
        elseif (n%81==0)
            return "false"
        elseif (n%729==0)
            return "false"
        else
            return "true"
        end
    end
end

#функция Эйлера
function phi(n)
    k=1
    kol = 0
    if n>1
        while k<n
            if ((k%2==0 && n%2==0) || (k%3==0 && n%3==0) || (k%4==0 && n%4==0) || (k%5==0 && n%5==0) || (k%6==0 && n%6==0) || (k%7==0 && n%7==0) || (k%8==0 && n%8==0) || (k%9==0 && n%9==0))
                kol+=0
            else
                kol+=1
            end
        k+=1
        end
    end
    return kol
end

# расширенный алгоритм Евклида
function euclid(a,b)
   c=1
   while (a%2==0 && b%2==0 && a!=0 && b!=0)
    c*=2
    a/=2
    b/=2
   end
   while (a%3==0 && b%3==0 && a!=0 && b!=0)
    c*=3
    a/=3
    b/=3
   end
   while (a%4==0 && b%4==0 && a!=0 && b!=0)
    c*=4
    a/=4
    b/=4
   end
   while (a%5==0 && b%5==0 && a!=0 && b!=0)
    c*=5
    a/=5
    b/=5
   end
   while (a%6==0 && b%6==0 && a!=0 && b!=0)
    c*=6
    a/=6
    b/=6
   end
   while (a%7==0 && b%6==0 && a!=0 && b!=0)
    c*=7
    a/=7
    b/=7
   end
   while (a%8==0 && b%8==0 && a!=0 && b!=0)
    c*=8
    a/=8
    b/=8
   end
   while (a%9==0 && b%9==0 && a!=0 && b!=0)
    c*=9
    a/=9
    b/=9
   end
   return c
end

# делители кольца вычетов
function ring(m)
    Int64k_1 = (k_2 = (k_3 = (k_4 = (k_5 = (k_6 = (k_7 = (k_8 = (k_9 = (k_10 = (k_11 = (k_12 = (k_13 = (k_14 = (k_15 = (k_16 = (k_17 = (k_18 = (k_19 = (k_20 = (k_21 = (k_22 = (k_23 = 1))))))))))))))))))))))
    while (m%2 && m%3 && m%4 && m%5 && m%6 && m%7 && m%8 && m%9 && m>0)
        k_1*=2*3*4*5*6*7*8*9
        m/=2*3*4*5*6*7*8*9
    end
    while (m%2 && m%3 && m%4 && m%5 && m%6 && m%7 && m%8 && m>0)
        k_2*=2*3*4*5*6*7*8
        m/=2*3*4*5*6*7*8
    end
    while (m%2 && m%3 && m%4 && m%5 && m%6 && m%7 && m>0)
        k_3*=2*3*4*5*6*7
        m/=2*3*4*5*6*7
    end
    while (m%2 && m%3 && m%4 && m%5 && m%6 && m>0)
        k_4*=2*3*4*5*6
        m/=2*3*4*5*6
    end
    while (m%2 && m%3 && m%4 && m%5 && m>0)
        k_5*=2*3*4*5
        m/=2*3*4*5
    end
    while (m%2 && m%3 && m%4 && m>0)
        k_6*=2*3*4
        m/=2*3*4
    end
    while (m%2 && m%3)
        k_7*=2*3
        m/=2*3
    end
    while (m%4==0 && m>0)
        k_8*=4
        m/=4
    end
    while (m%8==0 && m>0)
        k_9*=8
        m/=8
    end
    while (m%9==0 && m>0)
        k_10*=9
        m/=9
    end
    while (m%27==0 && m>0)
        k_11*=27
        m/=27
    end
    while (m%16==0 && m>0)
        k_12*=16
        m/=16
    end
    while (m%64==0 && m>0)
        k_13*=64
        m/=64
    end
    while (m%25==0 && m!=0)
        k_14*=25
        m/=25
    end
    while (m%125==0 && m!=0)
        k_15*=125
        m/=125
    end
    while (m%36==0 && m!=0)
        k_16*=36
        m/=36
    end
    while (m%216==0 && m!=0)
        k_17*=216
        m/=216
    end
    while (m%49==0 && m!=0)
        k_18*=49
        m/=49
    end
    while (m%343==0 && m!=0)
        k_19*=343
        m/=343
    end
    while (m%64==0 && m!=0)
        k_20*=64
        m/=64
    end
    while (m%512==0 && m!=0)
        k_21*=512
        m/=512
    end
    while (m%81==0 && m!=0)
        k_22*=81
        m/=81
    end
    while (m%729==0 && m!=0)
        k_23*=729
        m/=729
    end
    return k_1,k_2,k_3,k_4,k_5,k_6,k_7,k_8,k_9,k_10,k_11,k_12,k_13,k_14,k_15,k_16,k_17,k_18,k_19,k_20,k_21,k_22,k_23
end