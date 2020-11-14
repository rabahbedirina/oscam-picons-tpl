for file in *.png
do 
echo "data:image/png;base64," >  ${file}.t
openssl enc -base64 -in $file >>  ${file}.t
mmv '*.png.t' 'IC_#1.tpl'
rm -rf $file
done


