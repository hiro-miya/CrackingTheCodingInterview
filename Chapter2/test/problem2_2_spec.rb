#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem2_2'

describe Problem2_2 do
    
    before :each do
        @target = Problem2_2.new
        @node = Node.new(1)
        @node.next = Node.new(2)
        @node.next.next = Node.new(3)
        @node.next.next.next = Node.new(4)
    end

    it 'リストが nil の場合、nil が戻ること' do
        @target.findElementsKLast(nil, 1).should be_nil
    end

    it '指定要素数が nil の場合、nil が戻ること' do
        @target.findElementsKLast(@node, nil).should be_nil
    end

    it '指定要素数が リストの子の要素数 より大きい場合、nilが戻ること' do
        @target.findElementsKLast(@node, 4).should be_nil
    end

    it '指定要素数が 0 の場合、末尾の要素のdataが戻ること' do
        @target.findElementsKLast(@node, 0).should equal 4
    end

    it '指定要素数が リストの子の要素数 より小さい場合、対象の要素のdataが戻ること' do
        @target.findElementsKLast(@node, 2).should equal 2
    end

    it '指定要素数が リストの子の要素数 と等しい場合、先頭の要素のdataが戻ること' do
        @target.findElementsKLast(@node, 3).should equal 1
    end

end
