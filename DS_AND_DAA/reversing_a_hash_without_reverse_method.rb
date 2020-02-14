h={:a=>1, :b=>2, :c=>3} 
 h.inject({}){|k,e| p k.merge(e.last => e.first); }


