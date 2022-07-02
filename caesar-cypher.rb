def caesar_cypher(message, shift)
    shift = shift%26
    chars = message.split('')
    len = chars.length
    i=0
    while i < len
        encode = chars[i].ord - 65
        if encode <= 25 && encode >=0
            encode = encode + shift
            if encode > 25
                encode = encode % 25
                chars[i] = (encode + 65).chr
            else
                chars[i] = (encode + 65).chr
            end
        end
        if encode > 25
            encode = encode + shift-32
            if encode > 25
                encode = encode % 25
                chars[i] = (encode + 65 + 32).chr
            else
                chars[i] = (encode + 65 + 32).chr
            end
        end
        i+=1
    end
    answer = chars.to_s
    return answer
end

encrypt = "I Love Ruby!"
x = caesar_cypher(encrypt, 6)
puts x
