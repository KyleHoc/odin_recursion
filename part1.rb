def fibs(n)
    arr = [0]
    number = 1

    (n-1).times do
        arr.append(number + number - 1)
        number+=1
    end
    arr
end


def fibs_recur(n)
    if n < 2
        return n
    else
        fibs_recur(n-1) + fibs_recur(n-2)
    end
end

def merge_sort(arr)
    if arr.length < 2
        return arr
    else
        n = arr.length/2

        left = merge_sort(arr[0...n])
        right = merge_sort(arr[n...arr.length])

        merged = []

        until left.empty? || right.empty?
            if left.first < right.first
                merged.append(left.shift)
            else
                merged.append(right.shift)
            end
        end
        merged + left + right
    end
end

def multiples(num, sum = 0)
    if num < 0
        return sum
    else
        if (num - 1) % 3 == 0 || (num - 1) % 5 == 0
            sum = sum + num - 1
        end
        multiples(num - 1, sum)
    end
end

def one_to_number(num)
    if num < 1
        return num
    else
        one_to_number(num - 1)
        puts num
    end
end

