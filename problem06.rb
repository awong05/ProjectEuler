print ((1..100).inject{ |x, y| x + y })**2 - (1..100).inject{ |x, y| x + y**2 }