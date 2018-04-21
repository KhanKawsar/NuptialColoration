head(nuptial)
library(pavo)
as.rspec(nuptial)
procnuptial<- procspec(nuptial,fixneg = 'zero')
sensdamsel <- sensmodel(c(360, 450, 525))
visdamsel <- vismodel(procnuptial, visual=sensdamsel, achromatic = 'l', illum= 'D65', 
                      qcatch = 'fi', vonkries= TRUE, bkg= 'ideal', 
                      scale= 10000, relative= FALSE)

coldisdamsel<- coldist(visdamsel, noise = 'neural', achro= 'TRUE',qcatch = 'fi', 
                       weber = 0.12, n=c(1,0.071,4.412))

write.csv(coldisdamsel, 'trichromatic_nuptial.csv')

