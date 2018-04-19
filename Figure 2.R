#Lets start

pageWidthLarge<- 7.08661
pageHeightLarge <- paperWidthLarge * 1.0
pagePaper <- 'special'
fontFamily <- 'Times'

pdf("output/Figure_2.pdf", width=pageWidthLarge, height= pageHeightLarge, family=fontFamily, paper=pagePaper)
png("output/Figure_2.png", width = 7.08661, height = 7.08661*1.0, units= "in", res = 600, type= "cairo")

layout(matrix(c(1,2,3,4), nrow=2,ncol=2,byrow =  TRUE))
par(lheight= 0.8)

boxplot(NuptialColor$AdultLength, NuptialColor$JuvenileLength, ylab= "Length (mm)", 
        cex.lab= 1.5,cex.axis = 1.5,
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"),
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(28,35), xlim= c(0, 0.5))
mtext(c("Adult\nmale", "Juvenile\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(a)", side = 3, line = 1, adj=0.07, cex=1.0)


boxplot(NuptialColor$AdultLength, NuptialColor$JuvenileWeight, ylab= "Weight (mg)", 
        cex.lab= 1.5,cex.axis = 1.5,
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"),
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(15,35), xlim= c(0, 0.5))
mtext(c("Adult\nmale", "Juvenile\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(b)", side = 3, line = 1, adj=0.07, cex=1.0)

boxplot(NuptialColor$AdultLipid, NuptialColor$JuvenileLipid, ylab= "Lipid (mg)", 
        cex.lab= 1.5,cex.axis = 1.5,
        names = FALSE, outline= FALSE, col= c("indianred3", "rosybrown"),
        boxwex=0.15,staplewex= 0.3, at= c(0.1,0.4), ylim= c(0,10), xlim= c(0, 0.5))
mtext(c("Adult\nmale", "Juvenile\nmale"), at= c(0.1, 0.4), side =1, line = 2, cex = 1.5*par()$cex)
mtext("(c)", side = 3, line = 1, adj=0.07, cex=1.0)


dev.off()
