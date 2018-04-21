dat<- naturalredandyellow
dat2<- redandmanipulatedred
dat3 <- yellowandmanipulatedyellow

pageWidthLarge<- 7.08661
pageHeightLarge <- pageWidthLarge * 1.5
pagePaper <- 'special'
fontFamily <- 'Times'

pdf("output/Figure_5.pdf", width=pageWidthLarge, height= pageHeightLarge, family=fontFamily, paper=pagePaper)
png("output/Figure_4.png", width = 7.08661, height = 7.08661*1.0, units= "in", res = 600, type= "cairo")

layout(matrix(c(1,2,3), ncol= 1, nrow= 3, byrow= TRUE)) 
par(mar= c(3,13,2,2)+0.1, mgp= c(2.0,1,0))
par(lheight= 1.0)

boxplot(response~morph*condition, data = dat, las = 2,horizontal = TRUE,outline = FALSE,
col= c("red", "yellow"),xlab= "Responses recived", cex.lab= 1.0, cex.axis = 1.0,
names= FALSE,at= c(1,2, 3.5,4.5, 6,7, 8.5,9.5, 11,12, 13.5, 14.5)) 
legend(11, 15, legend=c("Red male", "Yellow male"),
       col=c("red", "yellow"), lty=1, lwd= 2, cex=1.0)

mtext("Conspecific approach", side = 2, las= 2.0,line = 8, adj= 0.1, at= 1.5, cex=1.0*par()$cex)
mtext("Conspecific aggression", side = 2, las= 2.0,line = 8, adj= 0.1, at= 4.0, cex=1.0*par()$cex)
mtext("Conspecific non-aggression", side = 2, las= 2.0,line = 10, adj= 0.1, at= 6.5, cex=1.0*par()$cex)
mtext("Heterospecific approach", side = 2, las= 2.0,line = 9, adj= 0.1, at= 9.0, cex=1.0*par()$cex)
mtext("Heterospecific aggression", side = 2, las= 2.0,line = 9, adj= 0.1, at= 11.5, cex=1.0*par()$cex)
mtext("Heterospecific non-aggression", side = 2, las= 2.0,line = 11, adj= 0.1, at= 14, cex=1.0*par()$cex)
mtext("(a)", side=3, line=0.5, adj=0, cex=1.0)



par(mar= c(3,13,2,2)+0.1, mgp= c(2.0,1,0))
boxplot(response~morph*condition, data = dat2, las = 2,horizontal = TRUE,outline = FALSE,
        col= c("red", "yellow"),xlab= "Responses recived", cex.lab= 1.0, cex.axis = 1.0,
        names= FALSE, at= c(1,2, 3.5,4.5, 6,7, 8.5,9.5, 11,12, 13.5, 14.5))
legend(10, 14, legend=c("Red male", "Painted red male"),
       col=c("red", "yellow"), lty=1, lwd= 2, cex=1.0)

mtext("Conspecific approach", side = 2, las= 2.0,line = 8, adj= 0.1, at= 1.5, cex=1.0*par()$cex)
mtext("Conspecific aggression", side = 2, las= 2.0,line = 8, adj= 0.1, at= 4.0, cex=1.0*par()$cex)
mtext("Conspecific non-aggression", side = 2, las= 2.0,line = 10, adj= 0.1, at= 6.5, cex=1.0*par()$cex)
mtext("Heterospecific approach", side = 2, las= 2.0,line = 9, adj= 0.1, at= 9.0, cex=1.0*par()$cex)
mtext("Heterospecific aggression", side = 2, las= 2.0,line = 9, adj= 0.1, at= 11.5, cex=1.0*par()$cex)
mtext("Heterospecific non-aggression", side = 2, las= 2.0,line = 11, adj= 0.1, at= 14, cex=1.0*par()$cex)
mtext("(b)", side=3, line=0.5, adj=0, cex=1.0)


boxplot(response~morph*condition, data = dat3, las = 2,horizontal = TRUE,outline = FALSE,
        col= c("red", "yellow"),xlab= "Responses recived", cex.lab= 1.0, cex.axis = 1.0,
        names= FALSE,at= c(1,2, 3.5,4.5, 6,7, 8.5,9.5, 11,12, 13.5, 14.5)) 
legend(13, 15, legend=c("Yellow male", "Painted yellow male"),
       col=c("red", "yellow"), lty=1, lwd= 2, cex=1.0)

mtext("Conspecific approach", side = 2, las= 2.0,line = 8, adj= 0.1, at= 1.5, cex=1.0*par()$cex)
mtext("Conspecific aggression", side = 2, las= 2.0,line = 8, adj= 0.1, at= 4.0, cex=1.0*par()$cex)
mtext("Conspecific non-aggression", side = 2, las= 2.0,line = 10, adj= 0.1, at= 6.5, cex=1.0*par()$cex)
mtext("Heterospecific approach", side = 2, las= 2.0,line = 9, adj= 0.1, at= 9.0, cex=1.0*par()$cex)
mtext("Heterospecific aggression", side = 2, las= 2.0,line = 9, adj= 0.1, at= 11.5, cex=1.0*par()$cex)
mtext("Heterospecific non-aggression", side = 2, las= 2.0,line = 11, adj= 0.1, at= 14, cex=1.0*par()$cex)
mtext("(c)", side=3, line=0.5, adj=0, cex=1.0)

dev.off()