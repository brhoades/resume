default:
	echo 'S' | xelatex resume.tex -interaction=batchmode
	mv resume.pdf build/

upload: default
	aws s3 sync build/ s3://resume.brod.es/
