class ValidatePassword

    attr_accessor :data

    def initialize(parameter_list)
        @data = parameter_list
        @errors = false
    end

    def perform           
        check_valid_password
    end
     
    def check_valid_password
        correct_length
        has_big_letter        
        has_small_letter
        has_number
        has_more_than_3
        return not(@errors)
    end

    def correct_length
        l = @data.length
        if l < 6 
            @errors = true  
        end
        if l > 26  
            @errors = true 
        end
    end

    def has_big_letter
        unless /[[:upper:]]/.match(@data) 
             @errors = true
        end
    end

    def has_small_letter
        unless /[[:lower:]]/.match(@data) 
             @errors = true
        end
    end

    def has_number
        unless /[[0-9]]/.match(@data) 
             @errors = true
        end
    end

    def has_more_than_3
        n = @data.chars.chunk_while { |b,a| b == a }.map(&:join)
        n.each do 
            |x| 
            if x.length > 2
                @errors = true
            end
        end
    end

# TODO
# Co najmniej jeden znak specjalny (! @ # $ % & * + = : ; ? < >)    

end
