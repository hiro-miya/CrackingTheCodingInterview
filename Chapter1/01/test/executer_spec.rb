#!/usr/bin/env ruby
# encoding: UTF-8

require 'rspec'
require '../src/executer'

describe Executer do

    before :each do
        @executer = Executer.new
    end

    it 'nilを渡すと true が返却されること' do
        @executer.isUniqueChar(nil).should be_true
    end

    it '重複しない文字を渡すと true が返却されること' do
        @executer.isUniqueChar("abcdefg").should be_true
    end

    it '重複した文字を渡すと false が返却されること' do
        @executer.isUniqueChar("abbcd").should be_false
    end
end

