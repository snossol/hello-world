using Plots
using Dates

Berlin_Infizierte = [58,90,137,174,216,283,332,383,519,688,868,1025,1071,1219,1425,1645,1937,2152,2337]
Berlin_Aenderung = Berlin_Infizierte[2:end]-Berlin_Infizierte[1:end-1]
x=range(0,16,step=1.0)
k_Berlin = (log(383.0/58)/7)
k_Berlin2 = (log(1425.0/1025)/3)
plot(58.0*exp.(k_Berlin*x),legend=:top)
plot!(Berlin_Infizierte,seriestype=:scatter)



Berlinapprox = [[Date(2020,3,i) for i=10:21] [58.0*exp(k_Berlin*x) for x=0.0:11.0]]
Berlinapprox = [[Date(2020,3,i) for i=21:31] [1025.0*exp(k_Berlin2*x) for x=0.0:10.0]]


NRW_Infizierte = [648,801,1041,1433,1636,2100,2744,3375,4268,4971,6301,6849,7361,8224,9087]
NRW_Aenderung = NRW_Infizierte[2:end]-NRW_Infizierte[1:end-1]
x=range(0,15,step=1.0)
k_NRW = (log(NRW_Infizierte[8]/NRW_Infizierte[1])/7)
k_NRW2 = (log(1425.0/1025)/3)
plot(NRW_Infizierte[1]*exp.(k_NRW*x),legend=:top)
plot!(NRW_Infizierte,seriestype=:scatter)



Bayern_Infizierte = [314,366,500,558,681,886,1067,1352,1798,2282,3107,3695,4457,5719,6362]
Bayern_Aenderung = NRW_Infizierte[2:end]-NRW_Infizierte[1:end-1]
x=range(0,14,step=1.0)
k_Bayern = (log(Bayern_Infizierte[8]/Bayern_Infizierte[1])/7)
k_NRW2 = (log(1425.0/1025)/3)
plot(Bayern_Infizierte[1]*exp.(k_Bayern*x),legend=:top)
plot!(Bayern_Infizierte,seriestype=:scatter)




Brandenburg_Infizierte = [16,24,30,44,61,84,94,114,171,204]


Deutschland_Infizierte = [1567,1968,2747,3677,4587,5815,7274,9362,
    12329,15322,19850,22366,24875,29056,32991,37323,43211,49039,54268,57609,0,0]
Deutschland_Aenderung = Deutschland_Infizierte[2:end]-Deutschland_Infizierte[1:end-1]
xrange=range(0,21,step=1.0)
xdate = [[Date(2020,3,i) for i=10:31]; [Date(2020,4,i) for i=1:30]]
k_Deutschland = (log(Deutschland_Infizierte[8]/Deutschland_Infizierte[1])/7)
k_Deutschland2 = (log(Deutschland_Infizierte[15]/Deutschland_Infizierte[11])/4)
log(2)/k_Deutschland
log(2)/k_Deutschland2
plot(xdate[1:22],[Deutschland_Infizierte[1]*exp.(k_Deutschland*xrange[1:10]); Deutschland_Infizierte[11]*exp.(k_Deutschland2*xrange[1:12])],legend=:top)
plot!(xdate[1:22],Deutschland_Infizierte[1]*exp.(k_Deutschland*xrange[1:22]),legend=:top)
plot!(xdate[1:22],Deutschland_Infizierte,seriestype=:scatter)

Deutschlandapprox = [[Date(2020,3,i) for i=10:21] [Deutschland_Infizierte[1]*exp(k_Deutschland*x) for x=0.0:11.0]]
Deutschlandapprox = [[Date(2020,3,i) for i=20:31] [Deutschland_Infizierte[11]*exp(k_Deutschland2*x) for x=0.0:11.0]]
Deutschlandapprox



GermanyDeaths = [6,8,9,13,17,26,28,44,68,84,94,123,159,206,262,323,398,421]
GermanyDeaths_Aenderung = GermanyDeaths[2:end]-GermanyDeaths[1:end-1]
plot(GermanyDeaths,seriestype=:scatter)
kGerDea = log(68.0/6)/8
kGerDea = log(44.0/6)/7
y=[6.0*exp(kGerDea*x) for x=0.0:8.0]
plot(0:8,y)
plot!(0:8,GermanyDeaths,seriestype=:scatter)

[[Date(2020,3,i) for i=12:30] [6.0*exp(kGerDea*x) for x=0.0:18.0]]
[[Date(2020,3,i) for i=12:30] [6.0*kGerDea*exp(kGerDea*x) for x=0.0:18.0]]




Korea_Infizierte = [3736,4335,5186,5621,6088,6593,7041,7314,7478,7513,7755,7869,7979,8086,8162,8320,8413,8565,8652,8799,8897,8897,9037]
Korea_Aenderung = Korea_Infizierte[2:end]-Korea_Infizierte[1:end-1]
x=range(0,22,step=1.0)
k_Korea = (log(Korea_Infizierte[8]/Korea_Infizierte[1])/7)
plot(x,Korea_Infizierte[1]*exp.(k_Korea*x),legend=:top)
plot!(x,Korea_Infizierte,seriestype=:scatter)


plot(Deutschland_Infizierte,seriestype=:scatter,legend=:right)
plot(GB_Infizierte,seriestype=:scatter,legend=:right)



GB_Infizierte = [6,8,8,8,21,21,56,56,72,138,178,234,276]
kGB = log(234.0/6.0)/11.0
[[Date(2020,3,i) for i=12:30] [6.0*exp(kGB*x) for x=0.0:18.0]]


DeutschlandApprox = [1565*exp(0.253*i) for i=1:20]
GermanyAll = [[Date(2020,3,i) for i=10:31] [1565*exp(0.253*i) for i=0:21]]
GermanyRate = [[Date(2020,3,i) for i=15:31] [396*exp(0.253*i) for i=5:21]]
GermanyAll2 = [[Date(2020,4,i) for i=1:21] [1565*exp(0.253*i) for i=22:42]]







USA_Dead = [200,244,306,356,415,696,926,1178,1581,2010,2191]
USA_Change_Dead = USA_Dead[2:end]-USA_Dead[1:end-1]
x=range(0,10,step=1.0)
k_USA = (log(USA_Dead[7]/USA_Dead[1])/6)
log(2)/k_USA
plot([Date(2020,3,i) for i=19:29],USA_Dead[1]*exp.(k_USA*x),legend=:top)
plot!([Date(2020,3,i) for i=19:29],USA_Dead,seriestype=:scatter)

USAAll = [[Date(2020,3,i) for i=19:31] [USA_Dead[1]*exp(k_USA*i) for i=0:12]]

USAAll = [[Date(2020,4,i) for i=1:14] [USA_Dead[1]*exp(k_USA*i) for i=13:26]]
