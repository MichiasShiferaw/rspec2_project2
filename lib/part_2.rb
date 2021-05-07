def palindrome?(word)
    
    front=""
    back=""
    index=0
    while (index<word.length)
        front= word[index]
        back=word[word.length-1-index]
        if (back!=front)
            return false
        end
        index+=1
    end
    return true
end

def substrings(str)
    newArray=[]
    (0...str.length).each do |i|
        (i..str.length).each do |j|
            if !(str[i...j]).empty?
                newArray<<str[i...j]
            end
        end
    end
    newArray
end


def palindrome_substrings(str)
    values= substrings(str)
    values_filter= values.each.select{|j| j.length>1}
    return values_filter.each.select {|i| palindrome?(i)}

end
