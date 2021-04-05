str2="small"

for f in *.pdf   
do
    echo $f;
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=small/$f $f
    
done
