$makeindex = "texindy %O -I latex -C utf8 -L english -o %D %S";
$pdflatex = "pdflatex --shell-escape %O %S";
$pdflatex = $pdflatex = "bash run_vlna.sh %S";