# encoding: UTF-8

class Problem2_4
    
=begin
    ある数xが与えられたとき、連結リストの要素を並べ替え、
    xより小さいものが前にくるようコードを書いてください。
=end
    def sortByBasisNum(list, x)
        return list if list == nil || x == nil
        
        lowerList = Array.new
        higherList = Array.new
        list.each{|val|
            if val < x then
                lowerList << val
            else
                higherList << val
            end
        }
        lowerList.concat higherList
    end
end
