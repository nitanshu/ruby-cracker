t= gets.chomp.to_i
a= []
(0..(t-1)).each do |i|
  set_length = gets.chomp.to_i
  a[i] = gets.split(' ').map { |d| d.to_i }
  a.each_with_index do |d, i|
    if a[i].length.odd?
      a_i_max = a[i].max(a[i].length/2+1)
      a_i_min = a[i].min(a[i].length/2+1)
    else
      a_i_max = a[i].max(a[i].length/2)
      a_i_min = a[i].min(a[i].length/2)
    end
    puts a_i_max
    puts a_i_min
    x, y=[], []
    a_i_max.each_with_index do |amaxd, amaxi|
      a_i_max.each_with_index do |ind, ini|
        x.push(amaxd*a_i_max[ini]) if amaxi != ini
      end
    end
    a_i_min.each_with_index do |amind, amini|
      a_i_min.each_with_index do |ind, ini|
        y.push(amind*a_i_max[ini]) if amini != ini
      end
    end
    puts x
    puts y
  end
end