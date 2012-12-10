#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem1_1'

describe Problem1_1 do

    before :each do
        @target = Problem1_1.new
    end

    it 'nilを渡すと true が返却されること' do
        @target.isUniqueChar(nil).should be_true
    end

    it '重複しない文字を渡すと true が返却されること' do
        @target.isUniqueChar("abcdefg").should be_true
    end

    it '重複した文字を渡すと false が返却されること' do
        @target.isUniqueChar("abbcd").should be_false
    end
end

