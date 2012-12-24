#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem1_8'

describe Problem1_8 do

    before :each do
        @target = Problem1_8.new
    end

    it '第一引数に nil を渡すと false が返却されること' do
        @target.isCyclic(nil, '').should be_false
    end
    it '第二引数に nil を渡すと false が返却されること' do
        @target.isCyclic('', nil).should be_false
    end
    it '第一引数、第二引数に nil を渡すと false が返却されること' do
        @target.isCyclic(nil, nil).should be_false
    end

    it '同一文字を渡すと true が返却されること' do
        @target.isCyclic('abc', 'abc').should be_true
    end

    it 'サイクリックな文字を渡すと true が返却されること' do
        @target.isCyclic('abcde', 'cdeab').should be_true
    end

    it '非サイクリックな文字を渡すと false が返却されること' do
        @target.isCyclic('abcde', 'edcba').should be_false
    end

    it '空文字を渡すと true が返却されること' do
        @target.isCyclic('', '').should be_true
    end

end

