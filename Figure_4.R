######################################### Figure 2 ##########################################



pageWidthLarge<- 7.08661
pageHeightLarge <- pageWidthLarge * 0.85
pagePaper <- 'special'
fontFamily <- 'Times'

png("output/Figure_4.png", width = 7.08661, height = 7.08661*1.0, units= "in", res = 600, type= "cairo")
layout(matrix(c(1,2,3,3,4,4,5,5), nrow=2,ncol=4,byrow =  TRUE))
par(lheight= 0.8)

##Tandem number bar plot

par(mar= c(6,4,4,2)+0.1, mgp= c(2.5,1,0))
barplot(c(32, 28),ylim= c(0, 35), las = 2.0, space = 0.6, col= c("indianred3", "rosybrown"), 
        ylab= "Number of tandem", cex.lab= 1.5, cex.axis = 1.5,
        names.arg = c("Control\nmale", "Manipulated\nmale"), cex.names = 1.5)
mtext("(a)", side = 3, line = 1, adj= 0.09, cex=1.0)

##Wheel number barplot

par(mar= c(6,4,4,2)+0.1, mgp= c(2.5,1,0))
barplot(c(13, 16), ylim= c(0, 18), space= 0.6, las = 2.0, col= c("indianred3", "rosybrown"), 
        ylab= "Number of wheel", cex.lab= 1.5,cex.axis = 1.5,
        names.arg = c("Control\nmale", "Manipulated\nmale"), cex.names = 1.5)

mtext("(b)", side = 3, line = 1, adj=0.09, cex=1.0)
##tandem duration plot

par(mar= c(6,4,4,2)+0.1, mgp= c(2.5,1,0))
boxplot(NuptialColor$ControlTandem, NuptialColor$ManipulatedTandem, 
        ylab= "Tandem duration (min)", cex.lab= 1.5,cex.axis = 1.5,
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"),
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(0,16), xlim= c(0, 0.5))
mtext(c("Control\nmale", "Manipulated\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(c)", side = 3, line = 1, adj=0.07, cex=1.0)


## Tandem2wheel duration plot

boxplot(NuptialColor$Control2Wheel, NuptialColor$ManipulatedTandem2Wheel, 
        ylab="Tandem to wheel duration (min)",cex.lab = 1.5,cex.axis = 1.5, 
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"), 
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(0,16), xlim= c(0, 0.5))
mtext(c("Control\nmale", "Manipulated\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(d)", side = 3, line = 1, adj=0.07, cex=1.0)

## Wheel duration plot 

boxplot(NuptialColor$ControlWheel, NuptialColor$ManipulatedWheel, 
        ylab="Wheel duration (min)", cex.lab = 1.5,cex.axis = 1.5, 
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"), 
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(2,15), xlim= c(0, 0.5))
mtext(c("Control\nmale", "Manipulated\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(e)", side = 3, line = 1, adj=0.07, cex=1.0)

dev.off()