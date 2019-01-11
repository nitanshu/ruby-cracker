# recursive 2 to get all descendants elements and their descendant element in an object seperatly

class Nokogiri::XML::Node
  def descendant_elements
    kids = element_children.to_a
    kids.concat(kids.map(&:descendant_elements)).flatten
  end
end


# to get all parent objects in an array no recursive # if you would like it to be returned as an array, rather than each node being yielded to a block, you can do this

result = []
doc.traverse {|node| result << node }
result

h=[]
h = xml.search('*') do |d|
     d
end


v=[]
h.each do |d|
if !d.attributes.empty?
v.push({d.name => d.attributes})
else
v.push({d.name => d.content})
end
end

 def dst
puts "==============#{self.inspect}"
  self.children do |d|
      if d.attributes.empty?
       a.push({d.name => d.content})
       elsif d.content.empty?
       a.push({d.name => d.attributes})
       else
        a.push({d.name=> d.attributes.merge!(d.name => d.content)})
       end
     end
   end

# to find the path of each node
a = Nokogiri::CSS.xpath_for node.css_path
# returns the nodeset object
xml_obj.at_xpath(a.first)


@xml_obj.at(Base64.decode64('origin_Ly93aWRnZXQvYWNjZXNzW3Bvc2l0aW9uKCkgPSAyXQ'.split('_').last))
#writing xml file with node objects
File.open('config/config_example.xml', 'w') {|f| f.write(@xml_obj)}



