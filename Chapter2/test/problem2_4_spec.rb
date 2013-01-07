#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem2_4'

describe Problem2_4 do
    
    before :each do
        @target = Problem2_4.new
        @array = Array.new
        @array << 1
        @array << 3
        @array << 5
        @array << 2
        @array << 4
        @array << 6
    end

    it 'リストが nil の場合、nil が戻ること' do
        @target.sortByBasisNum(nil, 1).should be_nil
    end

    it '基準値が nil の場合、順番に変化のないlist が戻ること' do
        @target.sortByBasisNum(@array, nil).should eql @array
    end

    it '基準値より小さい要素がリストにない場合、順番に変化のないlistが戻ること' do
        @target.sortByBasisNum(@array, -1).should eql @array
    end
    
    it '基準値より小さい要素がリストに存在する場合、該当する要素が前にきたlistが戻ること' do
        sortedList = @target.sortByBasisNum(@array, 3)
        sortedList[0].should equal 1
        sortedList[1].should equal 2
        sortedList[2].should equal 3
        sortedList[3].should equal 5
        sortedList[4].should equal 4
        sortedList[5].should equal 6
        sortedList[6].should be_nil
    end
end
