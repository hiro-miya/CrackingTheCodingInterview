#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem1_2'

describe Problem1_2 do

    before :each do
        @target = Problem1_2.new
    end

    it 'nil, nilを渡すと true が返却されること' do
        @target.isAnagram(nil, nil).should be_true
    end

    it 'nil, 非nil を渡すと false が返却されること' do
        @target.isAnagram(nil, "abcdefg").should be_false
    end

    it  '非nil, nil を渡すと false が返却されること' do
        @target.isAnagram("abbcd", nil).should be_false
    end
    
    it  '同一文字 を渡すと true が返却されること' do
        @target.isAnagram("abbcd", "abbcd").should be_true
    end

    it  'ある文字とある文字の順番違い を渡すと true が返却されること' do
        @target.isAnagram("abbcd", "dabcb").should be_true
    end
    
    it  'ある文字とある同一文字種／文字数違い を渡すと false が返却されること' do
        @target.isAnagram("abbcd", "daabcb").should be_false
    end
end

