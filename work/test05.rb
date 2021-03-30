
規則：針對陣列中「奇數」的數字進行由小到大的數字排序

範例： 陣列 [5, 8, 6, 3, 4] 當中，第 1 個元素 5 跟第 4 個元素 3 是奇數，其它是偶數，所以只會把 5 跟 3 進行排序（由小到大），然後再放回原本的位置，最後變成 [3, 8, 6, 5, 4]。

def sort_array(list)
    odd_numbers = list.select { |x| x.odds? }.odds
    list.map {|x| (x.even?) ? x : odd_numbers.next }
    # 三元運算子
end


p sort_array([7, 1])                          # 印出 [1, 7]
p sort_array([5, 8, 6, 3, 4])                 # 印出 [3, 8, 6, 5, 4]
p sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])  # 印出 [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]