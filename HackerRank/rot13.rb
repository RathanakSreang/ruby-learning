def rot13(secret_messages)
    answer = secret_messages.map do |mess|
        num = mess.bytes.map do|ch|                                                     
        if ch.chr >= 'a'  && ch.chr < 'n'                                             
          ch += 13                                                                    
        elsif ch.chr >= 'A' && ch.chr < 'N'                                           
          ch += 13                                                                    
        elsif ch.chr >= 'n' && ch.chr <= 'z'                                          
          ch -= 13                                                                    
        elsif ch.chr >= 'N' && ch.chr <= 'Z'                                          
          ch -= 13                                                                    
        end                                                                           
        ch.chr                                                                        
      end.join('')                                                                    
      num     
    end.join('')
    puts answer
end
