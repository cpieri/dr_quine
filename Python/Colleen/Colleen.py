# Writing Colleen in Python3

def printsrc():
	msg = "# Writing Colleen in Python3{0:c}{0:c}def printsrc():{0:c}{1:c}msg = {2:c}{msg}{2:c}{0:c}{1:c}print(msg.format(10, 9, 34, msg=msg)){0:c}{0:c}if __name__ == {2:c}__main__{2:c}:{0:c}{1:c}# Python3 Main{0:c}{1:c}printsrc()"
	print(msg.format(10, 9, 34, msg=msg))

if __name__ == "__main__":
	# Python3 Main
	printsrc()
