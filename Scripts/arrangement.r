subplot(cc, GAM.cc, heights=c(.75), widths=c(.8,.8), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(ct, GAM.ct, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(dpr, GAM.dpr, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=.05)

subplot(rpr, GAM.rpr, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(rtg, GAM.rtg, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(cpd, GAM.cpd, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(tpd, GAM.tpd, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(owat, twsat, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

subplot(owst, twst, heights=c(.75), widths=c(.5,.5), titleX=TRUE, titleY=TRUE, margin=0.4)

grid.arrange(casesperday, GAM.casesperday, testsperday, GAM.testsperday, dailyposrate,
             GAM.dailyposrate, cumltests, GAM.cumltests, cumlcases, GAM.cumlcases, 
             rolltestsgraph, GAM.rolltestsgraph, rollposrate, GAM.rollposrate, 
             oneweek.avgtests, twoweeks.avgtests, oneweek.sumtests, twoweeks.sumtests ncol=2)