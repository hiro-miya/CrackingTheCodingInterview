#!/usr/bin/env ruby
# encoding: UTF-8

=begin
    片方の文字列が、もう片方の文字列の一部分になっているかどうかを
    調べるメソッド「isSubstring」が使えると仮定します。
    2つの文字列s1とs2が与えられたとき、isSubstringメソッドを一度だけ
    使ってs2がs1を回転させたものかどうかを判定するコードを書いてください。
    ex)「waterbottle」は「erbottlewat」を回転させたものになっています。
=end
class Problem1_8

    def isCyclic(str1, str2)
        return false if str1 == nil || str2 == nil

        return isSubstring(str1 * 2, str2)
    end
    
    def isSubstring(str1, str2)
        return str1.index(str2) != nil
    end

end
