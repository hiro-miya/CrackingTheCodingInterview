#!/usr/bin/env ruby
# encoding: UTF-8

class Problem1_3

=begin
    1.3
    2つの文字列が与えられたとき、片方がもう片方の並び替えに
    なっているかどうかを決定するメソッドを書いてください。
=end
    def isAnagram(word1, word2)
        if word1 == nil && word2 == nil
            return true
        elsif word1 == nil || word2 == nil
            return false
        end

        map1 = Hash.new
        word1.each_char{|c|
            map1[c] ||= 1
            map1[c] = map1[c] + 1
        }

        map2 = Hash.new
        word2.each_char{|c|
            map2[c] ||= 1
            map2[c] = map2[c] + 1
        }

        if map1.keys.length != map2.keys.length
            return false
        end

        map1.keys.each{|key|
            if map1[key] != map2[key]
                return false
            end
        }
        return true
    end
end
