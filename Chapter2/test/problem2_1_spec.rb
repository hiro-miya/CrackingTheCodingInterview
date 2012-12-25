#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem2_1'

describe Problem2_1 do

    before :each do
        @target = Problem2_1.new
    end

    it 'nilを渡すと nil が返却されること' do
        @target.deleteDuplicateElements(nil).should be_nil
    end

    it '空のArrayを渡すと 空のArray が返却されること' do
        @target.deleteDuplicateElements(Array.new).should be_empty
    end

    it '重複していないArrayを渡すと 同要素のArray が返却されること' do
        array = Array.new()
        10.times{|value|
            array << value
        }
        @target.deleteDuplicateElements(array).should eql array
    end

    it '重複しているArrayを渡すと 重複要素が排除されたArray が返却されること' do
        array = Array.new(3, 'a')
        @target.deleteDuplicateElements(array).should eql Array.new(1, 'a')
    end

end
