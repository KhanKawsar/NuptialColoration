
###page set up####
pageWidthLarge<- 7.08661
pageHeightLarge <- pageWidthLarge * 1.5
pagePaper <- 'special'
fontFamily <- 'Times'
pdf("output/Figure_1.pdf", width=pageWidthLarge, height= pageHeightLarge, family=fontFamily, paper=pagePaper)
png("output/Figure_1.png", width=pageWidthLarge, height= pageHeightLarge,units= "in", type= "cairo",res = 600)
layout(matrix(c(1,1,2,2,3,4), nrow=3,ncol=2,byrow =  TRUE))

#####To upload a photo in R #### (A)
library(jpeg)
image<- readJPEG("data/juvenileadultmalephoto.jpg") 
pixelWidth <- dim(image)[2]
pixelHeight <- dim(image)[1]
par(mar=c(0,0,0,0))
#Setup a plot region with domain and range from 0 to 2, and no axes or labels
plot(NULL, xlim=c(0,pixelWidth), ylim=c(0,pixelHeight), axes=FALSE,xlab= "" , ylab="", asp= 1)
#Draw the raster image across (half y space and whole x space); 
#trial and error based, the photo has long x axis but small y axis
#....rasterImage(image, xleft, ybottom, xright, ytop,)
rasterImage(image, 0,0,pixelWidth,pixelHeight) 
mtext("(a)", side = 3, line = -3, adj= 0.09, cex=1.5)
mtext("(b)", side = 3, line = -3, adj= 0.55, cex=1.5)


###figure 1b##########
par(mar=c(5,4,1,1), mgp= c(2.5,1,0))

nuptial<- read.csv("data/NuptialSpectra.csv")
head(nuptial)
library(pavo)
nuptial <- as.rspec(nuptial)
group <- gsub('\\.[0-9].*$', '', names(nuptial))[-1]
table(group)

groupspec <- aggspec(nuptial, by= group, FUN= mean)
head(groupspec)
##plotsmooth (groupspec, minsmooth = 0.05, maxsmooth = 0.5, curves = 4, ask = FALSE)##to determine which smooth is applicable

nupsmooth<- procspec(nuptial, opt= 'smooth', span =0.35)

nupsmooth.min <- procspec(nupsmooth, opt= 'min')
aggplot(nupsmooth.min, group,lwd= 3.0, lcol= c("goldenrod1", "red", "forestgreen"), 
        shadecol= c("goldenrod1", "red", "forestgreen"),legend = TRUE, alpha = 0.15, 
        xlab= "Wavelength(nm)", ylab= "Reflactance(%)", cex.lab = 1.5, cex.axis= 1.5 )
mtext("(b)", side=3, line=0.5, adj=0, cex=1.5)

############## figure 1c-1d ############
jnd<- read.csv("data/trichromaticjnd.csv")
par(mar=c(5,4,1,1), mgp= c(2.5,1,0))

boxplot(jnd$AdultchromaticJnd, jnd$JuvenileChromaticJnd,border = c("red", "blue"),lwd= 1.5, 
        ylab="Jnd",names = FALSE, outline= FALSE, cex.lab= 1.5,cex.axis= 1.5,
        col= c("white", "white"), boxwex=0.15,staplewex= 0.3, 
        at= c(0.1,0.4), ylim= c(0,4), xlim= c(0, 0.5), mgp= c(2.0,1,0))
text(0.25, 4.5, "*", cex=2.0)
mtext(c("Adult", "Juvenile"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(c)", side=3, line=0.5, adj=0, cex=1.5)
abline(h= 1, col= "black", lwd= 2.0, lty= 2)

boxplot(jnd$AdultAchromaticJnd, jnd$JuvenileAchromaticJnd, border = c("red", "blue"),lwd= 1.5,
        ylab="Jnd",names = FALSE, outline= FALSE, cex.lab= 1.5,cex.axis= 1.5,
        col= c("white", "white"), boxwex=0.15,staplewex= 0.3, 
        at= c(0.1,0.4), ylim= c(0,12), xlim= c(0, 0.5), mgp= c(2.0,1,0))
text(0.25, 11, "*", cex=2.0)
mtext(c("Adult", "Juvenile"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(d)", side=3, line=0.5, adj=0, cex=1.5)
abline(h= 1, col= "black", lwd= 2.0, lty= 2)





dev.off()