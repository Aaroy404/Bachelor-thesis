$makeindex = "texindy %O -I latex -C utf8 -L english -o %D %S";
$pdflatex = "bash run_vlna.sh %S && pdflatex --shell-escape %O %S";
