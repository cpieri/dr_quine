# Writing Sully in Python3
import os

i = 5
if i:
	i -= 1 if os.path.exists('Sully_5.py') else 0
	src = "# Writing Sully in Python3{0:c}import os{0:c}{0:c}i = {i}{0:c}if i:{0:c}{1:c}i -= 1 if os.path.exists('Sully_5.py') else 0{0:c}{1:c}src = {2:c}{msg}{2:c}{0:c}{1:c}kid = open('Sully_{3:c}i{4:c}.py'.format(i=i), 'w'){0:c}{1:c}kid.write(src.format(10, 9, 34, 123, 125, i=i, msg=src)){0:c}{1:c}kid.close(){0:c}{1:c}os.system('python Sully_{3:c}i{4:c}.py'.format(i=i)){0:c}"
	kid = open('Sully_{i}.py'.format(i=i), 'w')
	kid.write(src.format(10, 9, 34, 123, 125, i=i, msg=src))
	kid.close()
	os.system('python Sully_{i}.py'.format(i=i))
