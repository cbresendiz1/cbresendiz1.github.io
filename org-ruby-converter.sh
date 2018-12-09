for i in $(find . -name "*.org"); do org-ruby --translate markdown $i > ${i%.*}.md; done
