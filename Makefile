default:
	echo 'S' | xelatex resume.tex -interaction=batchmode
	mv resume.pdf build/
