a="hello world!!".scan(/./)
b=[]
a.length.times{ b.push(a.last); a.pop;}; b.join('')

