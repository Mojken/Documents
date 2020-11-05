# Fixes some graphical bugs with the transparent logo.

mv UD-reglemente.pdf temp.pdf && \
\
gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=UD-reglemente.pdf temp.pdf

mv UD-stadgar.pdf temp.pdf && \
\
gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=UD-stadgar.pdf temp.pdf

rm temp.pdf
latexmk -c
