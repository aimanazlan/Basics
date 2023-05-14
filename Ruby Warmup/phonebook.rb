class PhoneBook
    def initialize
        @listed = Hash.new()
        @unlisted = Hash.new()
        @listName = Array.new
        @unlistName = Array.new
        @listNum = Array.new
        @unlistNum = Array.new
    end

    def add(name, number, is_listed)
        if @listed.include?(name) || @unlisted.include?(name) || @listed.include?(number)
            return false
        end

        if number[3] != '-' || number[7] != '-' || number.length != 12 || number[0,2].to_i.to_s != number[0,2] || number[8,11].to_i.to_s != number[8,11]
            return false
        end

        if is_listed == true
            @listed[name] = number
            @listName.push(name)
            @listNum.push(number)
        else
            @unlisted[name] = number
            @unlistName.push(name)
            @unlistNum.push(number)
        end
        return true
    end

    def lookup(name)
        if @listed.include?(name)
            return @listed[name]
        else
            return nil
        end
    end

    def lookupByNum(number)
        index = @listed.values.find_index(number)
        if index != nil
            return @listed.keys[index]
        else
            return nil
        end
    end

    def namesByAc(areacode)
        names = Array.new
        @listNum.each_with_index do |numList, idxList|
            if numList[0,3] == areacode
                names.push(@listName[idxList])
            end
        end

        @unlistNum.each_with_index do |numUnlist, idxUnlist|
            if numUnlist[0,3] == areacode
                names.push(@unlistName[idxUnlist])
            end
        end
        return names
    end
end
