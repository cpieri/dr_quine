# Writing Sully in Python3
from os import system

i = 5
if i:
	i -= 1
	src = "# Writing Sully in Python3{0:c}from os import system{0:c}{0:c}i = {i}{0:c}if i:{0:c}{1:c}i -= 1{0:c}{1:c}src = {2:c}{msg}{2:c}{0:c}{1:c}kid = open('Sully_{3:c}i{4:c}.py'.format(i=i), 'w'){0:c}{1:c}kid.write(src.format(10, 9, 34, 123, 125, i=i, msg=src)){0:c}{1:c}kid.close(){0:c}{1:c}system('python3 Sully_{3:c}i{4:c}.py'.format(i=i)){0:c}"
	kid = open('Sully_{i}.py'.format(i=i), 'w')
	kid.write(src.format(10, 9, 34, 123, 125, i=i, msg=src))
	kid.close()
	system('python3 Sully_{i}.py'.format(i=i))
