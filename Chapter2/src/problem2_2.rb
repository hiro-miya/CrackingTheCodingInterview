# encoding: UTF-8

class Problem2_2
    
=begin
    単方向連結リストにおいて、末尾から数えてk番目の要素を見つける
    アルゴリズムを実装してください。
=end
    def findElementsKLast(tree, k)
        return nil if tree == nil || k == nil
        target = tree
        edge = target
        k.times {
            return nil if edge.next == nil
            edge = edge.next
        }

        while edge.next != nil
            edge = edge.next
            target = target.next
        end
        
        target.data
     end
end

class Node
    attr_accessor :next
    attr_reader :data

    def initialize(data)
        @data = data
        @next = nil
    end
end
