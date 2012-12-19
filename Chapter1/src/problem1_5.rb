#!/usr/bin/env ruby
# encoding: UTF-8

class Problem1_5

=begin
    文字の連続する数を使って基本的な文字列圧縮を行うメソッドを実装してください。
    たとえば「aabcccccaaa」は「a2b1c5a3」のようにしてください。
    もし、圧縮変換された文字列が元の文字列より短くならなかった場合、
    元の文字列を返してください。
=end

    def compact(str)
        return nil unless str
        return str if str.empty? || str.length < str.squeeze.length * 2
        
        last = str[0]
        edited = ''
        count = 0
        str.each_char{|c|
            if last != c
                edited << last
                edited << count.to_s
                count = 1
                last = c
            elsif
                count = count +1
            end
        }
        edited << last
        edited << count.to_s
        str.length < edited.length ? str :edited
    end
end
