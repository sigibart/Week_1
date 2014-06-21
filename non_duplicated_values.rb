def non_duplicated_values(values)
dups = values.find_all{|i| values.count(i) > 1}.uniq!
values.delete_if{|i| dups.include?(i)}
end

p non_duplicated_values([1,2,2,3,3,4,5])
