require 'csv'
headers = %w[city state]
csv = CSV.parse('Albany, N.Y.
Albuquerque, N.M.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
Austin, Texas
Baltimore, Md.
Baton Rouge, La.
Billings, Mont.
Birmingham, Ala.
Bismarck, N.D.
Boise, Idaho
Boston, Mass.
Bridgeport, Conn.', headers: headers)
a = ''
csv.each do |row|
  a << row['city'] + ','
  a << row['state'] + ';'
end

puts a
