#去掉空格
rename 's/\s/_/g' ./*.pdf

files=$(ls)
main=index.html
cat /dev/null > $main
echo '<!DOCTYPE html><html lang="zh-CN"><head><meta charset="UTF-8"><title>有道笔记文件备份</title></head><body><h1>有道笔记文件备份</h1><ul>' > $main
for i in $files; do
  if [ $i != 'index.html' ] && [ $i != 'getindex.sh' ] && [ $i != 'main.html' ]; then
    echo '<li><a target = "_blank"  href="'$i'">'$i'</a></li>' >> $main
  fi
done
echo '</ul></body></html>' >> $main
echo '首页文件生成完毕'
