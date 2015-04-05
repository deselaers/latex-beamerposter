# FAQ

* How to create boxes with fixed header height (i.e. baseline problem depending on characters)?.
Inside your theme you have to change within \setbeamertemplate{block begin} to (by Matthias Wächter, thx :-)

```
    \begin{beamercolorbox}[center,leftskip=1cm,colsep*=.75ex]{block title}%
      \usebeamerfont*{block title}%
      {\rule[-0.4ex]{0mm}{2ex}\insertblocktitle}%
    \end{beamercolorbox}%
```
  
* How to create boxes with fixed height (e.g. 20cm)?
Inside your theme you have to change within \setbeamertemplate{block begin} to

>\begin{beamercolorbox}[ht=20cm,...]{block body}
  
* How to create boxes which are filled until the bottom of the poster?
I don't know, because this here doesn't work:

> \setlength{\rest}{\textheight}
> \addtolength{\rest}{-\pagetotal}
> \vskip\rest

Please write me an email if you know how.

* Can I use beamerposter to generate LaTeX beamer 16:9 slides in an aspect ratio for a 16:9 projector or a widescreen TV?
In principle yes (there might be better ways to solve this problem), just check that your width and height ratio is close to 1.78 (16:9) and try different and small font scale values, e.g.
\usepackage[orientation=landscape,size=custom,width=16,height=9,scale=0.5,debug]{beamerposter} 
  

* my printer doesn't support borderless printing, how can I change the margin values?
Simply use the pdfnup tool with negative trim values, e.g.
                                                    
>    pdfnup --nup 1x1 --trim "-44mm -44mm -44mm -44mm" myposter.pdf
  
Another option might be to use the pgfpages package (works for DIN sized posters, by Florian Hengstberger :-)
                          
>  \usepackage[orientation=landscape,size=a0,scale=1.5]{beamerposter}
>  \usepackage{pgfpages}
>  \pgfpagesuselayout{resize to}[a0paper,landscape,border shrink=10mm]
