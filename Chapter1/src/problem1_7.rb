#!/usr/bin/env ruby
# encoding: UTF-8

class Problem1_7

=begin
    M×Nの行列について、要素が0であれば、その行と列のすべてを0とするような
    アルゴリズムを書いてください。
=end
    def clearByZero(rowCnt, columnCnt)

        return if rowCnt == nil || rowCnt < 1 || columnCnt == nil || columnCnt < 1
        matrix = Array.new(rowCnt)
        matrix.each_index{|rowIdx|
            matrix[rowIdx] = Array.new(columnCnt)
            matrix[rowIdx].each_with_index{|cell, columnIdx|
               matrix[rowIdx][columnIdx] = rand(10)
            }
        }
        
        rowChecker = Array.new(rowCnt, false)
        columnChecker = Array.new(columnCnt, false)

        matrix.each_with_index{|row, rowIdx|
            row.each_with_index{|cell, columnIdx|
                if cell == 0 
                    rowChecker[rowIdx] = true
                    columnChecker[columnIdx] = true
                end
            }
        }

        puts '編集前'
        putsMatrix(matrix)

        rowChecker.each_with_index{|isRowZero, rowIdx|
            columnChecker.each_with_index{|isColumnZero, columnIdx|
                matrix[rowIdx][columnIdx] = 0 if isRowZero || isColumnZero
            }
        }

        puts '編集後'
        putsMatrix(matrix)

    end

    def putsMatrix(matrix)
        matrix.each{|row|
            p row
        }
    end
    
end

Problem1_7.new.clearByZero(10, 10)
