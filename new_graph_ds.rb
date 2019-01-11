hash= [
{
:name=>"Project Initiation",
 :categories=>["Project Created"],
 :starts_at=>1454744543.0,
 :data=>[1454744543000.0, 1454744543000.0]
}, 
{
:name=>"Source-1",
:categories=>["Source Uploaded", "Pdf Burst", "Tile Cutting-1", "Tile Cutting-2", "Tile Cutting-3", "Tile Cutting-4", "Tile Cutting-5", "Text Extraction-1", "Text Extraction-2", "Text Extraction-3", "Text Extraction-4", "Text Extraction-5", "Meta link"],
:starts_at=>1454744544.0,
:data=>[
[1454744544000.0, 1454744544000.0], [1454744548119.472, 1454744550211.8389], [1454744564959.874, 1454744611981.835], [1454744728043.876, 1454744755762.261], [1454744802978.898, 1454744841059.4521], [1454744933602.377, 1454744962896.282], [1454745037027.427, 1454745068401.229], [1454744550697.634, 1454744558243.203], [1454744558254.738, 1454744559846.667], [1454744559860.077, 1454744561930.892], [1454744561943.304, 1454744564072.368], [1454744564084.3699, 1454744564396.6538], [1454744564410.671, 1454744566746.717]
],
{
'Source-1' => 
{
"Source Uploaded" => 1454744644000,
"Pdf Burst" => 1454744548119.472,
"Tile Cutting-1" => 1454744564959.874
}
}
},
{
:name=>"Relinking-1",
:categories=>["Relink-1"],
:starts_at=>1454745122.479692,
:data=>[1454745122479.692, 1454745122552.037], 
"Relinking-1"=>{"Relink-1"=>1454745122479.692}
}
] 


     @x_axis.each do |x_axis_data|
     x_axis_data[:subcategory].sort_by!{|x| x[:sub_time]}
   end



another_hash = [{:name=>"Project Initiation", :categories=>["Project Created"], :starts_at=>1454744543.0, :data=>[1454744543000.0, 1454744543000.0], :subcategory=>[{:sub_name=>"Project Created", :sub_time=>1454744543000.0}]}, {:name=>"Source-1", :categories=>["Source Uploaded", "Pdf Burst", "Text Extraction-1", "Text Extraction-2", "Text Extraction-3", "Text Extraction-4", "Text Extraction-5", "Tile Cutting-1", "Tile Cutting-2", "Tile Cutting-3", "Tile Cutting-4", "Tile Cutting-5", "Meta link"], :starts_at=>1454744544.0, :data=>[[1454744544000.0, 1454744544000.0], [1454744548119.472, 1454744550211.8389], [1454744550697.634, 1454744558243.203], [1454744558254.738, 1454744559846.667], [1454744559860.077, 1454744561930.892], [1454744561943.304, 1454744564072.368], [1454744564084.3699, 1454744564396.6538], [1454744564959.874, 1454744611981.835], [1454744728043.876, 1454744755762.261], [1454744802978.898, 1454744841059.4521], [1454744933602.377, 1454744962896.282], [1454745037027.427, 1454745068401.229], [1454744564410.671, 1454744566746.717]], :subcategory=>[{:sub_name=>"Source Uploaded", :sub_time=>1454744544000.0}, {:sub_name=>"Pdf Burst", :sub_time=>1454744548119.472}, {:sub_name=>"Text Extraction-1", :sub_time=>1454744550697.634}, {:sub_name=>"Text Extraction-2", :sub_time=>1454744558254.738}, {:sub_name=>"Text Extraction-3", :sub_time=>1454744559860.077}, {:sub_name=>"Text Extraction-4", :sub_time=>1454744561943.304}, {:sub_name=>"Text Extraction-5", :sub_time=>1454744564084.3699}, {:sub_name=>"Meta link", :sub_time=>1454744564410.671}, {:sub_name=>"Tile Cutting-1", :sub_time=>1454744564959.874}, {:sub_name=>"Tile Cutting-2", :sub_time=>1454744728043.876}, {:sub_name=>"Tile Cutting-3", :sub_time=>1454744802978.898}, {:sub_name=>"Tile Cutting-4", :sub_time=>1454744933602.377}, {:sub_name=>"Tile Cutting-5", :sub_time=>1454745037027.427}]}, {:name=>"Relinking-1", :categories=>["Relink-1"], :starts_at=>1454745122.479692, :data=>[1454745122479.692, 1454745122552.037], :subcategory=>[{:sub_name=>"Relink-1", :sub_time=>1454745122479.692}]}, {:name=>"Source-2", :categories=>["Source Uploaded", "Pdf Burst", "Text Extraction-1", "Text Extraction-2", "Text Extraction-3", "Text Extraction-4", "Text Extraction-5", "Tile Cutting-1", "Tile Cutting-2", "Tile Cutting-3", "Tile Cutting-4", "Tile Cutting-5", "Meta link"], :starts_at=>1454745174.0, :data=>[[1454745174000.0, 1454745179000.0], [1454745176740.962, 1454745179120.451], [1454745181843.036, 1454745188628.949], [1454745188640.394, 1454745190015.785], [1454745190027.365, 1454745191916.76], [1454745191934.1072, 1454745193576.844], [1454745193590.913, 1454745193887.98], [1454745187538.6118, 1454745230524.803], [1454745289197.634, 1454745316099.284], [1454745369309.9102, 1454745406693.4768], [1454745462617.885, 1454745492073.3782], [1454745547707.633, 1454745578938.241], [1454745193899.915, 1454745197207.074]], :subcategory=>[{:sub_name=>"Source Uploaded", :sub_time=>1454745174000.0}, {:sub_name=>"Pdf Burst", :sub_time=>1454745176740.962}, {:sub_name=>"Text Extraction-1", :sub_time=>1454745181843.036}, {:sub_name=>"Tile Cutting-1", :sub_time=>1454745187538.6118}, {:sub_name=>"Text Extraction-2", :sub_time=>1454745188640.394}, {:sub_name=>"Text Extraction-3", :sub_time=>1454745190027.365}, {:sub_name=>"Text Extraction-4", :sub_time=>1454745191934.1072}, {:sub_name=>"Text Extraction-5", :sub_time=>1454745193590.913}, {:sub_name=>"Meta link", :sub_time=>1454745193899.915}, {:sub_name=>"Tile Cutting-2", :sub_time=>1454745289197.634}, {:sub_name=>"Tile Cutting-3", :sub_time=>1454745369309.9102}, {:sub_name=>"Tile Cutting-4", :sub_time=>1454745462617.885}, {:sub_name=>"Tile Cutting-5", :sub_time=>1454745547707.633}]}, {:name=>"Relinking-2", :categories=>["Relink-2"], :starts_at=>1454745622.439731, :data=>[1454745622439.731, 1454745622577.755], :subcategory=>[{:sub_name=>"Relink-2", :sub_time=>1454745622439.731}]}, {:name=>"Relinking-3", :categories=>["Relink-3"], :starts_at=>1454745652.666964, :data=>[1454745652666.964, 1454745652801.763], :subcategory=>[{:sub_name=>"Relink-3", :sub_time=>1454745652666.964}]}] 

