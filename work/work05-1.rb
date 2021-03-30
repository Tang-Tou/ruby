a = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

puts a.select { |n| n.start_with?("P") }


#https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-sort_by

b = a.sort_by { |word| word.length }
p b.first(1)