def fib(n)
    fibArray = []
    count, index, first, second = 0, 0, 0, 0
    while count < n
        index = count
        if count == 1
            first, second = 0, 1
            fibArray[1] = 1
        elsif count == 0
            fibArray[0] = 0
        else
            fibArray[index] = first + second
            first = second
            second = fibArray[index]
        end
        count += 1
    end
    return fibArray
end

def isPalindrome(n)
    if n.size == 1
        return true
    end

    temp = n
    check = 0

    while n != 0
        rem = n % 10
        n = n/10
        check = check * 10 + rem
    end

    if temp == check
        return true
    end
        return false
end

def nthmax(n, a)
    if n == nil || n > a.length - 1
        return nil
    end
    return a.sort[a.length - n - 1]
end

def freq(s)
    if s == ""
        return ""
    end
    seq = Hash.new
    idx, max= 0, 0
    letter = ""
    while idx < s.length
        if seq.include?(s[idx]) == false
            seq[s[idx]] = s.count(s[idx])
        end
        max = seq.values.max()
        letter = seq.key(max)
        idx += 1
    end
    return letter
end

def zipHash(arr1, arr2)
    if arr1.length != arr2.length
        return nil
    end

    if arr1.length == 0
        return {}
    end

    index = 0
    arr = Hash.new
    while index < arr1.length
        arr[arr1[index]] = arr2[index]
        index += 1
    end
    return arr    

end

def hashToArray(hash)
    if hash.empty?() == true
        return []
    end
    array = Array.new
    hash.each { |key, value|
                newArr = Array.new
                newArr.push(key)
                newArr.push(value)
                array.push(newArr)
              }
    return array
end