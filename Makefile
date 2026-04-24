default: build/resume.pdf build/cv.pdf

build/resume.pdf: resume.tex res.cls
	echo 'S' | xelatex resume.tex -interaction=batchmode
	mv resume.pdf build/

build/cv.pdf: cv.tex res.cls
	echo 'S' | xelatex cv.tex -interaction=batchmode
	mv cv.pdf build/

upload: default
	aws s3 sync build/ s3://resume.brod.es/
	@# Won't work for you
	@echo "invalidating cloudfront" cache
	aws cloudfront create-invalidation --distribution-id E3LE7CBY9ORWZ1 --paths "/*" | jq
