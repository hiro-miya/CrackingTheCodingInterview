# encoding: UTF-8

class Problem2_3
    
=begin
    単方向連結リストにおいて、中央の要素のみアクセス可能とします。
    その要素を削除するアルゴリズムを実装してください。
=end
    def deleteElements(node)
        return false if node == nil || node.next == nil
        
        node.data = node.next.data
        node.next = node.next.next
        true
    end
end

class Node
    attr_accessor :next
    attr_accessor :data

    def initialize(data)
        @data = data
        @next = nil
    end
end
