

def partition(arr, num)
    arr_less=[]
    arr_greater=[]
    arr_output=[]
    (0...arr.length).each do |ind|
        arr_less<<arr[ind] if arr[ind]<num
        arr_greater<<arr[ind] if arr[ind]>=num
    end
    arr_output<<arr_less
    arr_output<<arr_greater
    arr_output

end

def merge(hash_1, hash_2)
    newhash={}

    hash_1.each_pair {|key,val| newhash[key]=val}
    hash_2.each_pair {|key,val| newhash[key]=val}

    newhash



end


def censor(str,swearword)
    str1=str.split(" ")
    vowel="aieou".split("")
    #puts swearword
  #puts vowel
    (0...str1.length).each do |word|
        #puts str1[word]
        #puts swearword.include?(str1[word].downcase)
        lowercase=str1[word].downcase
        if swearword.include?(lowercase)
            wording=str1[word]
            (0...str1[word].length).each do |letter|
                #puts wording[letter]
                if vowel.include?(wording[letter].downcase)
                    wording[letter]="*"
                end
            #p wording
            end
        end
    end
    str1.join(" ")
end


def power_of_two?(num)
    if Math.log2(num).to_int== Math.log2(num)
        return (Math.log2(num).to_int).is_a?Integer
    end
    return (Math.log2(num).is_a?Integer)
end
