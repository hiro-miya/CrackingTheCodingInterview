#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem2_3'

describe Problem2_3 do
    
    before :each do
        @target = Problem2_3.new
        @node = Node.new(1)
        @node.next = Node.new(2)
        @node.next.next = Node.new(3)
        @node.next.next.next = Node.new(4)
    end

    it 'ノードが nil の場合、false が戻ること' do
        @target.deleteElements(nil).should be_false
    end

    it 'ノードの子が nil の場合、false が戻ること' do
        @target.deleteElements(Node.new(1)).should be_false
    end

    it 'ノードの子が nil ではない場合、true が戻ること' do
        @target.deleteElements(@node).should be_true
        @node.data.should equal 2
        @node.next.data.should equal 3
        
        @target.deleteElements(@node).should be_true
        @node.data.should equal 3
        @node.next.data.should equal 4 
        
        @target.deleteElements(@node).should be_true
        @node.data.should equal 4
        @node.next.should be_nil

        @target.deleteElements(@node).should be_false
    end

end
