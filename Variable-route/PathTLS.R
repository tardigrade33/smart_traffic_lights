library(lubridate) 
library(Rmisc)
library("ggplot2", lib.loc="~/R/win-library/3.3")
library(readr)
library(tidyverse)

#################################################
setwd("/home/storm/Desktop/Smart traffic light/Variable-route/mapa_60")
#################################################

x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_0x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_0x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_0x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_0x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_0x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_0x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_0x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_0x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_0x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_0x9 <- as.numeric(x9 %>% select(value))




vectorPath_0x0<-c(Path_0x0,
                  Path_0x1,
                  Path_0x2,
                  Path_0x3,
                  Path_0x4,
                  Path_0x5,
                  Path_0x6,
                  Path_0x7,
                  Path_0x8,
                  Path_0x9)
############################################################################
x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_1x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_1x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_1x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_1x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_1x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_1x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_1x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_1x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_1x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_1x9 <- as.numeric(x9 %>% select(value))




vectorPath_1x0<-c(Path_1x0,
                  Path_1x1,
                  Path_1x2,
                  Path_1x3,
                  Path_1x4,
                  Path_1x5,
                  Path_1x6,
                  Path_1x7,
                  Path_1x8,
                  Path_1x9)
############################################################################
x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_0x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_0x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_0x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_0x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_0x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_0x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_0x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_0x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_0x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_0x9 <- as.numeric(x9 %>% select(value))




vectorPath_2x0<-c(Path_0x0,
                  Path_0x1,
                  Path_0x2,
                  Path_0x3,
                  Path_0x4,
                  Path_0x5,
                  Path_0x6,
                  Path_0x7,
                  Path_0x8,
                  Path_0x9)
############################################################################
x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_0x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_0x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_0x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_0x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_0x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_0x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_0x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_0x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_0x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_0x9 <- as.numeric(x9 %>% select(value))




vectorPath_3x0<-c(Path_0x0,
                  Path_0x1,
                  Path_0x2,
                  Path_0x3,
                  Path_0x4,
                  Path_0x5,
                  Path_0x6,
                  Path_0x7,
                  Path_0x8,
                  Path_0x9)
############################################################################
x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_0x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_0x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_0x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_0x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_0x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_0x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_0x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_0x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_0x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_0x9 <- as.numeric(x9 %>% select(value))




vectorPath_4x0<-c(Path_0x0,
                  Path_0x1,
                  Path_0x2,
                  Path_0x3,
                  Path_0x4,
                  Path_0x5,
                  Path_0x6,
                  Path_0x7,
                  Path_0x8,
                  Path_0x9)
############################################################################
x0 <- read.csv(file = 'General-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
Path_0x0 <- as.numeric(x0 %>% select(value))


x1 <- read.csv(file = 'General-#1.csv')
x1 <- x1 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x1 <- x1 %>% filter(name == "totalTime")
Path_0x1 <- as.numeric(x1 %>% select(value))


x2 <- read.csv(file = 'General-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
Path_0x2 <- as.numeric(x2 %>% select(value))


x3 <- read.csv(file = 'General-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
Path_0x3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'General-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
Path_0x4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'General-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
Path_0x5 <- as.numeric(x5 %>% select(value))


x6 <- read.csv(file = 'General-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
Path_0x6 <- as.numeric(x6 %>% select(value))


x7 <- read.csv(file = 'General-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
Path_0x7 <- as.numeric(x7 %>% select(value))


x8 <- read.csv(file = 'General-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
Path_0x8 <- as.numeric(x8 %>% select(value))


x9 <- read.csv(file = 'General-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
Path_0x9 <- as.numeric(x9 %>% select(value))




vectorPath_5x0<-c(Path_0x0,
                  Path_0x1,
                  Path_0x2,
                  Path_0x3,
                  Path_0x4,
                  Path_0x5,
                  Path_0x6,
                  Path_0x7,
                  Path_0x8,
                  Path_0x9)
############################################################################
############################################################################
############################################################################
############################################################################

x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[0].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


  vectorwithTLSx0<-c(withTLSx0,
                    withTLSx1,
                    withTLSx2,
                    withTLSx3,
                    withTLSx4,
                    withTLSx5,
                    withTLSx6,
                    withTLSx7,
                    withTLSx8,
                    withTLSx9)

#######################################################################################
x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[1].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


vectorwithTLSx1<-c(withTLSx0,
                   withTLSx1,
                   withTLSx2,
                   withTLSx3,
                   withTLSx4,
                   withTLSx5,
                   withTLSx6,
                   withTLSx7,
                   withTLSx8,
                   withTLSx9)
#######################################################################################
x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[2].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


vectorwithTLSx2<-c(withTLSx0,
                   withTLSx1,
                   withTLSx2,
                   withTLSx3,
                   withTLSx4,
                   withTLSx5,
                   withTLSx6,
                   withTLSx7,
                   withTLSx8,
                   withTLSx9)
#######################################################################################
x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[3].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


vectorwithTLSx3<-c(withTLSx0,
                   withTLSx1,
                   withTLSx2,
                   withTLSx3,
                   withTLSx4,
                   withTLSx5,
                   withTLSx6,
                   withTLSx7,
                   withTLSx8,
                   withTLSx9)
#######################################################################################
x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[4].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


vectorwithTLSx4<-c(withTLSx0,
                   withTLSx1,
                   withTLSx2,
                   withTLSx3,
                   withTLSx4,
                   withTLSx5,
                   withTLSx6,
                   withTLSx7,
                   withTLSx8,
                   withTLSx9)
#######################################################################################
x0 <- read.csv(file = 'TLS-#0.csv')
x0 <- x0 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x0 <- x0 %>% filter(name == "totalTime")
withTLSx0 <- as.numeric(x0 %>% select(value))

x1 <- read.csv(file = 'TLS-#1.csv')
x1 <- x0 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x1 <- x0 %>% filter(name == "totalTime")
withTLSx1 <- as.numeric(x1 %>% select(value))

x2 <- read.csv(file = 'TLS-#2.csv')
x2 <- x2 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x2 <- x2 %>% filter(name == "totalTime")
withTLSx2 <- as.numeric(x2 %>% select(value))

x3 <- read.csv(file = 'TLS-#3.csv')
x3 <- x3 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x3 <- x3 %>% filter(name == "totalTime")
withTLSx3 <- as.numeric(x3 %>% select(value))

x4 <- read.csv(file = 'TLS-#4.csv')
x4 <- x4 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x4 <- x4 %>% filter(name == "totalTime")
withTLSx4 <- as.numeric(x4 %>% select(value))


x5 <- read.csv(file = 'TLS-#5.csv')
x5 <- x5 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x5 <- x5 %>% filter(name == "totalTime")
withTLSx5 <- as.numeric(x5 %>% select(value))

x6 <- read.csv(file = 'TLS-#6.csv')
x6 <- x6 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x6 <- x6 %>% filter(name == "totalTime")
withTLSx6 <- as.numeric(x6 %>% select(value))

x7 <- read.csv(file = 'TLS-#7.csv')
x7 <- x7 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x7 <- x7 %>% filter(name == "totalTime")
withTLSx7 <- as.numeric(x7 %>% select(value))

x8 <- read.csv(file = 'TLS-#8.csv')
x8 <- x8 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x8 <- x8 %>% filter(name == "totalTime")
withTLSx8 <- as.numeric(x8 %>% select(value))

x9 <- read.csv(file = 'TLS-#9.csv')
x9 <- x9 %>% filter(module == "RSUExampleScenariomine.node[5].veinsmobility")
x9 <- x9 %>% filter(name == "totalTime")
withTLSx9 <- as.numeric(x9 %>% select(value))


vectorwithTLSx5<-c(withTLSx0,
                   withTLSx1,
                   withTLSx2,
                   withTLSx3,
                   withTLSx4,
                   withTLSx5,
                   withTLSx6,
                   withTLSx7,
                   withTLSx8,
                   withTLSx9)
#######################################################################################
#save data in template
TrafficLightRsuAppTemplate <- read_csv("/home/storm/Desktop/Smart traffic light/Variable-route/dataSensors.csv") 



for (k in 1:10){
  TrafficLightRsuAppTemplate[60+k,1] <- vectorPath_0x0[k]#
  TrafficLightRsuAppTemplate[70+k,1] <- vectorPath_1x0[k]#
  TrafficLightRsuAppTemplate[80+k,1] <- vectorPath_2x0[k]#
  TrafficLightRsuAppTemplate[90+k,1] <- vectorPath_3x0[k]#
  TrafficLightRsuAppTemplate[100+k,1] <- vectorPath_4x0[k]#
  TrafficLightRsuAppTemplate[110+k,1] <- vectorPath_5x0[k]#
}


for (k in 1:10){
  TrafficLightRsuAppTemplate[k,1] <- vectorwithTLSx0[k]#
  TrafficLightRsuAppTemplate[10+k,1] <- vectorwithTLSx1[k]#
  TrafficLightRsuAppTemplate[20+k,1] <- vectorwithTLSx2[k]#
  TrafficLightRsuAppTemplate[30+k,1] <- vectorwithTLSx3[k]#
  TrafficLightRsuAppTemplate[40+k,1] <- vectorwithTLSx4[k]#
  TrafficLightRsuAppTemplate[50+k,1] <- vectorwithTLSx5[k]#
}
###############################################################################


tg <- TrafficLightRsuAppTemplate

tgc <- summarySE(tg, measurevar="len", groupvars=c("supp","dose"))
tgc


conflicts()
ggplot(tgc, aes(x=dose, y=len, colour=supp, fill=supp)) + 
  geom_col(position = position_dodge2(preserve = "single")) +
  #geom_errorbar(aes(ymin=len-ci, ymax=len+ci),  width=5, position=position_dodge(5))
  xlab(expression(paste("Vehicle ID"))) +
  ylab("Trip time duration [s]") +
  #scale_color_manual(values = c("#11A0D7","#083566","#000000")) +
  scale_y_continuous(breaks=c(0,50,100,150,200,250,300,350,400,450), limits=c(0,470))+
  theme_bw() +
  theme(legend.title=element_blank(),
        legend.justification=c(1,0),
        legend.position=c(0.9,0.1),
        legend.direction = "horizontal",
        panel.border = element_rect(colour = "black", fill=NA, size=1)
        
  )  + 
  theme(legend.background = element_rect(colour="grey", size=0.5),axis.text=element_text(size=14),
        axis.title=element_text(size=14),legend.text=element_text(size=14,colour="black",face="bold"))+
  theme(
    legend.key = element_rect(fill = "white", colour = "white"),
    legend.key.size = unit(0.4, "in")
  )+ 
  theme(panel.grid.major = element_line(colour = "grey", linetype = "dashed"))


# conflicts()
# ggplot(tgc, aes(x=dose, y=len, colour=supp, group=supp)) + 
#   geom_line(lwd=1.25)+
#   #geom_smooth()+
#   geom_errorbar(aes(ymin=len-ci, ymax=len+ci),  width=5, position=position_dodge(5)) + 
#   #geom_line(position=pd) +
#   #geom_point(position=pd, size=3, fill="white") + # 21 is filled circle
#   
#   geom_point(aes(shape=supp),size=5)+# position=pd)+
#   scale_shape_manual(values=c(17,15,19))+ #9,16,17,15,8))+
#   scale_fill_manual(values=c("green", "green","green")) + 
#   
#   #scale_x_continuous(breaks=c(0,20,40,60,80,100))+
#   
#   
#   xlab(expression(paste("Vehicles' density (veh/",km^{2},")"))) +
#   ylab("Trip time duration [s]") +
#   
#   scale_y_continuous(breaks=c(0,50,100,150,200,250,300,350,400,450,500), limits=c(0,500))+
#   
#   scale_color_manual(values = c("#11A0D7","#083566","#000000")) +
#   
#   
#   
#   theme_bw() +
#   theme(legend.title=element_blank(),
#         legend.justification=c(1,0),
#         legend.position=c(0.9,0.1),
#         legend.direction = "horizontal",
#         panel.border = element_rect(colour = "black", fill=NA, size=1)
#         
#   )  +             # Position legend in bottom right
#   
#   
#   theme(legend.background = element_rect(colour="grey", size=0.5),axis.text=element_text(size=14),
#         axis.title=element_text(size=14),legend.text=element_text(size=14,colour="black",face="bold"))+
#   theme(
#     legend.key = element_rect(fill = "white", colour = "white"),
#     legend.key.size = unit(0.4, "in")
#   )+ 
#   theme(panel.grid.major = element_line(colour = "grey", linetype = "dashed"))

