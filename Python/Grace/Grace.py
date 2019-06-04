# Writing Grace in Python3

src = "# Writing Grace in Python3{0:c}{0:c}src = {1:c}{msg}{1:c}{0:c}kid = open('Grace_kid.py', 'w'){0:c}kid.write(src.format(10, 34, msg=src)){0:c}kid.close(){0:c}"
kid = open('Grace_kid.py', 'w')
kid.write(src.format(10, 34, msg=src))
kid.close()
