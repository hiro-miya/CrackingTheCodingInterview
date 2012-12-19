#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/problem1_5'

describe Problem1_5 do

    before :each do
        @target = Problem1_5.new
    end

    it '引数が nil なら nil が返却されること' do
        @target.compact(nil).should be_nil
    end

    it '引数が empty なら empty が返却されること' do
        @target.compact('').should be_empty
    end

    it '引数が 圧縮後の文字列より長い なら 圧縮後の文字列 が返却されること' do
        @target.compact('aabcccccaaa').should == 'a2b1c5a3'
    end

    it '引数が 圧縮後の文字列より短い なら 引数 が返却されること' do
        @target.compact('abc').should eql 'abc'
    end

    it '引数が 圧縮後の文字列と同じ長さ なら 圧縮後の文字列 が返却されること' do
        @target.compact('aaabbc').should eql 'a3b2c1'
    end

end
