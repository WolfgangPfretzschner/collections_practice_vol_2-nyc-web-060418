def begins_with_r(array)
  array.collect do |x|
    next if x.start_with?("r")
    return false
  end
  true
end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a")
      new_array.push(x)
    end
  end
  new_array
end

def first_wa(array)
  array.find do |x|
    case x
    when String
      x.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

# array_test = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end
  array.uniq
end
 # def count_elements(array)
 #   new_array = Hash.new(0)
 #   array.each do |v|
 #     new_array[v] +=1
 #   end
 #  puts  new_array.to_a
 # end


# count_elements(array_test)

 def merge_data(keys, values)
   container = []
   keys.each do |person_name|
     name = person_name[:first_name]
     values.each do |person_data|
       if person_data[name]
         merged_person = person_data[name]
         merged_person[:first_name] = name
         container << merged_person
       end
     end
   end
   container
 end

 def find_cool(array)
   new_array = []
   array.each do |x|
     if x[:temperature] == "cool"
       new_array << x
     end
   end
   new_array
 end

 def organize_schools(schools)
   org_schools = {}
   schools.each do |name, loc|
     location = loc[:location]
     if org_schools[location]
       org_schools[location] << name
     else
       org_schools[location] = []
       org_schools[location] << name
     end
   end
   org_schools
 end
