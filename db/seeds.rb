# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Activity.create(name:'Wellcome Collection public galleries', venue: 'Wellcome collection, Euston Road', description:'Wellcome Collection is a museum based at 183 Euston Road, London, displaying an unusual mixture of medical artifacts and original artworks exploring ideas about the connections between medicine, life and art.', image_url:'http://www.camdennewjournal.com/sites/all/files/nj_camden/imagecache/main_img/images/news/wellcome-brain-exhibition.jpg', site_url:'http://wellcomecollection.org/') 

['British Library', 'St Pancras Library', 'Francis Crick Institute', 'Hint Hunt', 'Sir John Soane Museum', 'British Museum'].each do |x|
  Activity.create(name:x)
end


%w(John Jack Sarah Max Christine Mo Bob Lucy).each do |x|
  User.create(first_name:x)
end

 puts "seeded with #{Activity.all.count} activities"
