#!/usr/bin/env ruby
# encoding: UTF-8

class Problem2_1

=begin
    ソートされていない連結リストから、重複する要素を削除するコードを書いてください
=end
    def deleteDuplicateElements(list)
        return list unless list

        hash = {}
        list.each{|value|
            hash[value] ||= value
        }

        hash.values
    end
end
