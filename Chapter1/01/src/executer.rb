#!/usr/bin/env ruby
# encoding: UTF-8

class Executer
    
=begin 
    1.1
    ある文字列が、すべてユニークであるかどうかを判定するアルゴリズムを実装してください。
    また、それを実装するのに新しいデータ構造が使えない場合、どのようにすればよいですか？
=end
    def isUniqueChar(target)
        return true unless target
        checker = Hash.new
        target.each_char{|value|
            if checker.member?(value) then 
                return false
            else 
                checker[value] = nil
            end
        }
        return true
    end

end
