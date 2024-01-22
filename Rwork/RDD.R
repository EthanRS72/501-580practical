library(rdrobust)
c1_rsq <- c()
c2_rsq <- c()
c3_rsq <- c()
#Cluster 1 - 37 projects - (pink)
#	apache/dubbo-go
commits_dubbogo <- data.frame(read.csv2('commits_dubbo-go2.csv', sep = ","))
commits_dubbogo$days_since_first <- as.numeric(commits_dubbogo$days_since_first)

justxuewei <- rdrobust::rdrobust(commits_dubbogo$num_issues, commits_dubbogo$days_since_first, c = 1016.36)
justxuewei$coef[3]
justxuewei$pv[3]   

zouyx <- rdrobust::rdrobust(commits_dubbogo$num_issues, commits_dubbogo$days_since_first, c = 416.29)
zouyx$coef[3]
zouyx$pv[3]  

Patrick0308 <- rdrobust::rdrobust(commits_dubbogo$num_issues, commits_dubbogo$days_since_first, c = 506.57)
Patrick0308$coef[3]
Patrick0308$pv[3]  

LaurenceLiZhixin <- rdrobust::rdrobust(commits_dubbogo$num_issues, commits_dubbogo$days_since_first, c = 792.74)
LaurenceLiZhixin$coef[3]
LaurenceLiZhixin$pv[3]  


#archesproject/arches
commits_arches <- data.frame(read.csv2('commits_arches2.csv', sep = ","))
commits_arches$days_since_first <- as.numeric(commits_arches$days_since_first)

njkim <- rdrobust::rdrobust(commits_arches$num_issues, commits_arches$days_since_first, c = 1151.76)
njkim$coef[3]
njkim$pv[3] 

aarongundel <- rdrobust::rdrobust(commits_arches$num_issues, commits_arches$days_since_first, c = 1997.3)
aarongundel$coef[3]
aarongundel$pv[3] 

chrabyrd <- rdrobust::rdrobust(commits_arches$num_issues, commits_arches$days_since_first, c = 1660.03)
chrabyrd$coef[3]
chrabyrd$pv[3] 

whatisgalen <- rdrobust::rdrobust(commits_arches$num_issues, commits_arches$days_since_first, c = 1122.76)
whatisgalen$coef[3]
whatisgalen$pv[3] 

sticklerci <- rdrobust::rdrobust(commits_arches$num_issues, commits_arches$days_since_first, c = 916.59)
sticklerci$coef[3]
sticklerci$pv[3] 

#aws/aws-sdk-js-v3
commits_awssdk <- data.frame(read.csv2('commits_aws-sdk2.csv', sep = ","))
commits_awssdk$days_since_first <- as.numeric(commits_awssdk$days_since_first)

trivikr <- rdrobust::rdrobust(commits_awssdk$num_issues, commits_awssdk$days_since_first, c = 649.31)
trivikr$coef[3]
trivikr$pv[3] 

srchase <- rdrobust::rdrobust(commits_awssdk$num_issues, commits_awssdk$days_since_first, c = 650.06)
srchase$coef[3]
srchase$pv[3] 

kuhe <- rdrobust::rdrobust(commits_awssdk$num_issues, commits_awssdk$days_since_first, c = 1838.97)
kuhe$coef[3]
kuhe$pv[3] 

#ceph/ceph-csi
commits_cephcsi <- data.frame(read.csv2('commits_ceph-csi2.csv', sep = ","))
commits_cephcsi$days_since_first <- as.numeric(commits_cephcsi$days_since_first)

humblec <- rdrobust::rdrobust(commits_cephcsi$num_issues, commits_cephcsi$days_since_first, c = 372.96)
humblec$coef[3]
humblec$pv[3] 

RakshithR <- rdrobust::rdrobust(commits_cephcsi$num_issues, commits_cephcsi$days_since_first, c = 1164.36)
RakshithR$coef[3]
RakshithR$pv[3] 

Madhu1 <- rdrobust::rdrobust(commits_cephcsi$num_issues, commits_cephcsi$days_since_first, c = 372.36)
Madhu1$coef[3]
Madhu1$pv[3] 

nixpanic <- rdrobust::rdrobust(commits_cephcsi$num_issues, commits_cephcsi$days_since_first, c = 563.12)
nixpanic$coef[3]
nixpanic$pv[3] 

#cubefs/cubefs
commits_cubefs <- data.frame(read.csv2('commits_cubefs2.csv', sep = ","))
commits_cubefs$days_since_first <- as.numeric(commits_cubefs$days_since_first)

mervinkid <- rdrobust::rdrobust(commits_cubefs$num_issues, commits_cubefs$days_since_first, c = 291.28)
mervinkid$coef[3]
mervinkid$pv[3] 

Victor1319 <- rdrobust::rdrobust(commits_cubefs$num_issues, commits_cubefs$days_since_first, c = 597.61)
Victor1319$coef[3]
Victor1319$pv[3] 

leonrayang <- rdrobust::rdrobust(commits_cubefs$num_issues, commits_cubefs$days_since_first, c = 760.72)
leonrayang$coef[3]
leonrayang$pv[3] 

sejust <- rdrobust::rdrobust(commits_cubefs$num_issues, commits_cubefs$days_since_first, c = 1232.12)
sejust$coef[3]
sejust$pv[3] 


#Dallinger/Dallinger
commits_dallinger <- data.frame(read.csv2('commits_dallinger2.csv', sep = ","))
commits_dallinger$days_since_first <- as.numeric(commits_dallinger$days_since_first)

fmhoeger <- rdrobust::rdrobust(commits_dallinger$num_issues, commits_dallinger$days_since_first, c = 1658.77)
fmhoeger$coef[3]
fmhoeger$pv[3] 


#DraftBot-A-Discord-Adventure/DraftBot
commits_draftbot <- data.frame(read.csv2('commits_draftbot2.csv', sep = ","))
commits_draftbot$days_since_first <- as.numeric(commits_draftbot$days_since_first)

romain22222 <- rdrobust::rdrobust(commits_draftbot$num_issues, commits_draftbot$days_since_first, c = 703.61)
romain22222$coef[3]
romain22222$pv[3] 

Feiryn <- rdrobust::rdrobust(commits_draftbot$num_issues, commits_draftbot$days_since_first, c = 1128.81)
Feiryn$coef[3]
Feiryn$pv[3] 

niqore <- rdrobust::rdrobust(commits_draftbot$num_issues, commits_draftbot$days_since_first, c = 480)
niqore$coef[3]
niqore$pv[3] 

#epam/ketcher
commits_ketcher <- data.frame(read.csv2('commits_ketcher2.csv', sep = ","))
commits_ketcher$days_since_first <- as.numeric(commits_ketcher$days_since_first)

AndreiMazol <- rdrobust::rdrobust(commits_ketcher$num_issues, commits_ketcher$days_since_first, c = 1029.75)
AndreiMazol$coef[3]
AndreiMazol$pv[3] 

#fredlcore/BSB-LAN
commits_bsblan <- data.frame(read.csv2('commits_bsb-lan2.csv', sep = ","))
commits_bsblan$days_since_first <- as.numeric(commits_bsblan$days_since_first)

dukess <- rdrobust::rdrobust(commits_bsblan$num_issues, commits_bsblan$days_since_first, c = 1161.26)
dukess$coef[3]
dukess$pv[3] 

#GIScience/openrouteservice
commits_openrouteservice <- data.frame(read.csv2('commits_openrouteservice2.csv', sep = ","))
commits_openrouteservice$days_since_first <- as.numeric(commits_openrouteservice$days_since_first)

koebi <- rdrobust::rdrobust(commits_openrouteservice$num_issues, commits_openrouteservice$days_since_first, c = 1054.2)
koebi$coef[3]
koebi$pv[3] 

MichaelsJP <- rdrobust::rdrobust(commits_openrouteservice$num_issues, commits_openrouteservice$days_since_first, c = 564.72)
MichaelsJP$coef[3]
MichaelsJP$pv[3] 

takb <- rdrobust::rdrobust(commits_openrouteservice$num_issues, commits_openrouteservice$days_since_first, c = 495)
takb$coef[3]
takb$pv[3] 

#kubernetes-sigs/cluster-api-provider-vsphere
commits_clusterapi <- data.frame(read.csv2('commits_cluster-api2.csv', sep = ","))
commits_clusterapi$days_since_first <- as.numeric(commits_clusterapi$days_since_first)

srm09 <- rdrobust::rdrobust(commits_clusterapi$num_issues, commits_clusterapi$days_since_first, c = 871.4)
srm09$coef[3]
srm09$pv[3] 

yastij <- rdrobust::rdrobust(commits_clusterapi$num_issues, commits_clusterapi$days_since_first, c = 381.3)
yastij$coef[3]
yastij$pv[3] 

#MetaMask/metamask-mobile
commits_metamask <- data.frame(read.csv2('commits_metamask2.csv', sep = ","))
commits_metamask$days_since_first<- as.numeric(commits_metamask$days_since_first)

andrepimenta <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 626.93)
andrepimenta$coef[3]
andrepimenta$pv[3]

cortisiko <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 1169.63)
cortisiko$coef[3]
cortisiko$pv[3]

tommasini <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 1319.4)
tommasini$coef[3]
tommasini$pv[3]

sethkfman <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 983.27)
sethkfman$coef[3]
sethkfman$pv[3]

blackdevelopa <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 1292.71)
blackdevelopa$coef[3]
blackdevelopa$pv[3]

wachunei <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 760.52)
wachunei$coef[3]
wachunei$pv[3]

rickycodes <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 543.46)
rickycodes$coef[3]
rickycodes$pv[3]

gantunesr <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 1428.86)
gantunesr$coef[3]
gantunesr$pv[3]

CalL <- rdrobust::rdrobust(commits_metamask$num_issues, commits_metamask$days_since_first, c = 1105.66)
CalL$coef[3]
CalL$pv[3]
 
#mullvad/mullvadvpn-app
commits_mullvad <- data.frame(read.csv2('commits_mullvad2.csv', sep = ","))
commits_mullvad$days_since_first<- as.numeric(commits_mullvad$days_since_first)

albinmullvad <- rdrobust::rdrobust(commits_mullvad$num_issues, commits_mullvad$days_since_first, c = 1363.94)
albinmullvad$coef[3]
albinmullvad$pv[3]

dlon <- rdrobust::rdrobust(commits_mullvad$num_issues, commits_mullvad$days_since_first, c = 649.26)
dlon$coef[3]
dlon$pv[3]

raksooo <- rdrobust::rdrobust(commits_mullvad$num_issues, commits_mullvad$days_since_first, c = 765.51)
raksooo$coef[3]
raksooo$pv[3]

#navikt/aksel
commits_aksel <- data.frame(read.csv2('commits_aksel2.csv', sep = ","))
commits_aksel$days_since_first<- as.numeric(commits_aksel$days_since_first)

andnorda <- rdrobust::rdrobust(commits_aksel$num_issues, commits_aksel$days_since_first, c = 1166.67)
andnorda$coef[3]
andnorda$pv[3]

KenAJoh <- rdrobust::rdrobust(commits_aksel$num_issues, commits_aksel$days_since_first, c = 1043.29)
KenAJoh$coef[3]
KenAJoh$pv[3]

#nextcloud/deck
commits_deck <- data.frame(read.csv2('commits_deck2.csv', sep = ","))
commits_deck$days_since_first<- as.numeric(commits_deck$days_since_first)

jakobroehrl <- rdrobust::rdrobust(commits_deck$num_issues, commits_deck$days_since_first, c = 696.14)
jakobroehrl$coef[3]
jakobroehrl$pv[3]

#nextcloud/polls
commits_polls <- data.frame(read.csv2('commits_polls2.csv', sep = ","))
commits_polls$days_since_first<- as.numeric(commits_polls$days_since_first)

dartcafe <- rdrobust::rdrobust(commits_polls$num_issues, commits_polls$days_since_first, c = 556)
dartcafe$coef[3]
dartcafe$pv[3]

#NVIDIA/NeMo
commits_nemo <- data.frame(read.csv2('commits_nemo2.csv', sep = ","))
commits_nemo$days_since_first<- as.numeric(commits_nemo$days_since_first)

michalivne <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 703.01)
michalivne$coef[3]
michalivne$pv[3]

PeganovAnton <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 459.59)
PeganovAnton$coef[3]
PeganovAnton$pv[3]

anteju <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 1061.63)
anteju$coef[3]
anteju$pv[3]

Zhilin123 <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 915.37)
Zhilin123$coef[3]
Zhilin123$pv[3]

MaximumEntropy <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 472.07)
MaximumEntropy$coef[3]
MaximumEntropy$pv[3]

fayejf <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 298.05)
fayejf$coef[3]
fayejf$pv[3]

aklife97 <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 598.21)
aklife97$coef[3]
aklife97$pv[3]

tango4j <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 697.3)
tango4j$coef[3]
tango4j$pv[3]

arendu <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 1115)
arendu$coef[3]
arendu$pv[3]

XuesongYang <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 1010.32)
XuesongYang$coef[3]
XuesongYang$pv[3]

stevehuang52 <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 1003.24)
stevehuang52$coef[3]
stevehuang52$pv[3]

yidong72 <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 854.36)
yidong72$coef[3]
yidong72$pv[3]

vadam5 <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 618.42)
vadam5$coef[3]
vadam5$pv[3]

rlangman <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 1081.54)
rlangman$coef[3]
rlangman$pv[3]

bmwshop <- rdrobust::rdrobust(commits_nemo$num_issues, commits_nemo$days_since_first, c = 861.31)
bmwshop$coef[3]
bmwshop$pv[3]


#online-go/online-go.com
commits_onlinego <- data.frame(read.csv2('commits_online-go2.csv', sep = ","))
commits_onlinego$days_since_first<- as.numeric(commits_onlinego$days_since_first)

BHydden <- rdrobust::rdrobust(commits_onlinego$num_issues, commits_onlinego$days_since_first, c = 826.22)
BHydden$coef[3]
BHydden$pv[3]

benjaminpjones <- rdrobust::rdrobust(commits_onlinego$num_issues, commits_onlinego$days_since_first, c = 1336.25)
benjaminpjones$coef[3]
benjaminpjones$pv[3]

#pokeclicker/pokeclicker
commits_pokeclicker <- data.frame(read.csv2('commits_pokeclicker2.csv', sep = ","))
commits_pokeclicker$days_since_first<- as.numeric(commits_pokeclicker$days_since_first)

Ultima1990 <- rdrobust::rdrobust(commits_pokeclicker$num_issues, commits_pokeclicker$days_since_first, c = 1186.46)
Ultima1990$coef[3]
Ultima1990$pv[3]

RedSparr0w <- rdrobust::rdrobust(commits_pokeclicker$num_issues, commits_pokeclicker$days_since_first, c = 697)
RedSparr0w$coef[3]
RedSparr0w$pv[3]

#postmanlabs/postman-docs
commits_postmandocs <- data.frame(read.csv2('commits_postman-docs2.csv', sep = ","))
commits_postmandocs$days_since_first<- as.numeric(commits_postmandocs$days_since_first)

brandonmcastillo <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 1565.35)
brandonmcastillo$coef[3]
brandonmcastillo$pv[3]

markanthonypostman <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 1995.53)
markanthonypostman$coef[3]
markanthonypostman$pv[3]

ch264 <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 1266.08)
ch264$coef[3]
ch264$pv[3]

claireriley <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 752.17)
claireriley$coef[3]
claireriley$pv[3]

jkonrathpostman <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 1854.83)
jkonrathpostman$coef[3]
jkonrathpostman$pv[3]

tristandenyer <- rdrobust::rdrobust(commits_postmandocs$num_issues, commits_postmandocs$days_since_first, c = 1141.26)
tristandenyer$coef[3]
tristandenyer$pv[3]

#primer/react
commits_react <- data.frame(read.csv2('commits_react2.csv', sep = ","))
commits_react$days_since_first<- as.numeric(commits_react$days_since_first)

mperrotti <- rdrobust::rdrobust(commits_react$num_issues, commits_react$days_since_first, c = 1330.47)
mperrotti$coef[3]
mperrotti$pv[3]

primercss <- rdrobust::rdrobust(commits_react$num_issues, commits_react$days_since_first, c = 1262.6)
primercss$coef[3]
primercss$pv[3]

siddharthkp <- rdrobust::rdrobust(commits_react$num_issues, commits_react$days_since_first, c = 1297.33)
siddharthkp$coef[3]
siddharthkp$pv[3]

#reframe-hpc/reframe
commits_reframe <- data.frame(read.csv2('commits_reframe2.csv', sep = ","))
commits_reframe$days_since_first<- as.numeric(commits_reframe$days_since_first)

ChristopherBignamini <- rdrobust::rdrobust(commits_reframe$num_issues, commits_reframe$days_since_first, c = 583.24)
ChristopherBignamini$coef[3]
ChristopherBignamini$pv[3]

ekouts <- rdrobust::rdrobust(commits_reframe$num_issues, commits_reframe$days_since_first, c = 916.17)
ekouts$coef[3]
ekouts$pv[3]

#RetroAchievements/RAWeb
commits_raweb <- data.frame(read.csv2('commits_raweb2.csv', sep = ","))
commits_raweb$days_since_first<- as.numeric

Jamiras <- rdrobust::rdrobust(commits_raweb$num_issues, commits_raweb$days_since_first, c = 1325.05)
Jamiras$coef[3]
Jamiras$pv[3]

MrOwnership <- rdrobust::rdrobust(commits_raweb$num_issues, commits_raweb$days_since_first, c = 496.27)
MrOwnership$coef[3]
MrOwnership$pv[3]

#rotki/rotki
commits_rotki <- data.frame(read.csv2('commits_rotki2.csv', sep = ","))
commits_rotki$days_since_first<- as.numeric(commits_rotki$days_since_first)

lukicenturi <- rdrobust::rdrobust(commits_rotki$num_issues, commits_rotki$days_since_first, c = 1353.07)
lukicenturi$coef[3]
lukicenturi$pv[3]

yabirgb <- rdrobust::rdrobust(commits_rotki$num_issues, commits_rotki$days_since_first, c = 1080.37)
yabirgb$coef[3]
yabirgb$pv[3]

#SAP/ui5-webcomponents
commits_ui5 <- data.frame(read.csv2('commits_ui52.csv', sep = ","))
commits_ui5$days_since_first<- as.numeric(commits_ui5$days_since_first)

hinzzx <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 1256.84)
hinzzx$coef[3]
hinzzx$pv[3]

TeodorTaushanov <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 742.38)
TeodorTaushanov$coef[3]
TeodorTaushanov$pv[3]

ndeshev <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 642.02)
ndeshev$coef[3]
ndeshev$pv[3]

nnaydenow <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 283.95)
nnaydenow$coef[3]
nnaydenow$pv[3]

gmkv <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 595.92)
gmkv$coef[3]
gmkv$pv[3]

unazko <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 462.95)
unazko$coef[3]
unazko$pv[3]

dimovpetar <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 350.84)
dimovpetar$coef[3]
dimovpetar$pv[3]

dobrinyonkov <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 659.26)
dobrinyonkov$coef[3]
dobrinyonkov$pv[3]

servicetipgit <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 437)
servicetipgit$coef[3]
servicetipgit$pv[3]

niyap <- rdrobust::rdrobust(commits_ui5$num_issues, commits_ui5$days_since_first, c = 276.91)
niyap$coef[3]
niyap$pv[3]


#scrtlabs/SecretNetwork
commits_secretnetwork <- data.frame(read.csv2('commits_secretnetwork2.csv', sep = ","))
commits_secretnetwork$days_since_first<- as.numeric(commits_secretnetwork$days_since_first)

liorbond <- rdrobust::rdrobust(commits_secretnetwork$num_issues, commits_secretnetwork$days_since_first, c = 841.31)
liorbond$coef[3]
liorbond$pv[3]

#	smallstep/certificates
commits_certificates <- data.frame(read.csv2('commits_certificates2.csv', sep = ","))
commits_certificates$days_since_first<- as.numeric(commits_certificates$days_since_first)

tashian <- rdrobust::rdrobust(commits_certificates$num_issues, commits_certificates$days_since_first, c = 478.93)
tashian$coef[3]
tashian$pv[3]

hslatman <- rdrobust::rdrobust(commits_certificates$num_issues, commits_certificates$days_since_first, c = 831.8)
hslatman$coef[3]
hslatman$pv[3]

#Smithay/smithay
commits_smithay <- data.frame(read.csv2('commits_smithay2.csv', sep = ","))
commits_smithay$days_since_first<- as.numeric(commits_smithay$days_since_first)

i509VCB <- rdrobust::rdrobust(commits_smithay$num_issues, commits_smithay$days_since_first, c = 1626.53)
i509VCB$coef[3]
i509VCB$pv[3]

cmeissl <- rdrobust::rdrobust(commits_smithay$num_issues, commits_smithay$days_since_first, c = 1575.1)
cmeissl$coef[3]
cmeissl$pv[3]

#SUI-Components/sui
commits_sui <- data.frame(read.csv2('commits_sui2.csv', sep = ","))
commits_sui$days_since_first<- as.numeric(commits_sui$days_since_first)

andresz1 <- rdrobust::rdrobust(commits_sui$num_issues, commits_sui$days_since_first, c = 1202.51)
andresz1$coef[3]
andresz1$pv[3]

#SUI-Components/sui-components
commits_suicomponents <- data.frame(read.csv2('commits_sui-components2.csv', sep = ","))
commits_suicomponents$days_since_first<- as.numeric(commits_suicomponents$days_since_first)

andresin87 <- rdrobust::rdrobust(commits_suicomponents$num_issues, commits_suicomponents$days_since_first, c = 1210.69)
andresin87$coef[3]
andresin87$pv[3]

midudev <- rdrobust::rdrobust(commits_suicomponents$num_issues, commits_suicomponents$days_since_first, c = 466.23)
midudev$coef[3]
midudev$pv[3]

jordevo <- rdrobust::rdrobust(commits_suicomponents$num_issues, commits_suicomponents$days_since_first, c = 1023.59)
jordevo$coef[3]
jordevo$pv[3]

#suttacentral/suttacentral
commits_suttacentral <- data.frame(read.csv2('commits_suttacentral2.csv', sep = ","))
commits_suttacentral$days_since_first<- as.numeric(commits_suttacentral$days_since_first)

ihongda <- rdrobust::rdrobust(commits_suttacentral$num_issues, commits_suttacentral$days_since_first, c = 700.9)
ihongda$coef[3]
ihongda$pv[3]

#texstudio-org/texstudio
commits_texstudio <- data.frame(read.csv2('commits_texstudio2.csv', sep = ","))
commits_texstudio$days_since_first<- as.numeric(commits_texstudio$days_since_first)

octaeder <- rdrobust::rdrobust(commits_texstudio$num_issues, commits_texstudio$days_since_first, c = 1586.84)
octaeder$coef[3]
octaeder$pv[3]

mbertucci47 <- rdrobust::rdrobust(commits_texstudio$num_issues, commits_texstudio$days_since_first, c = 1289.61)
mbertucci47$coef[3]
mbertucci47$pv[3]

muzimuzhi <- rdrobust::rdrobust(commits_texstudio$num_issues, commits_texstudio$days_since_first, c = 1586.84)
muzimuzhi$coef[3]
muzimuzhi$pv[3]

#TurningWheel/Barony
commits_barony <- data.frame(read.csv2('commits_barony2.csv', sep = ","))
commits_barony$days_since_first<- as.numeric(commits_barony$days_since_first)

WALLOFJUSTICE <- rdrobust::rdrobust(commits_barony$num_issues, commits_barony$days_since_first, c = 530.37)
WALLOFJUSTICE$coef[3]
WALLOFJUSTICE$pv[3]

#WalletConnect/walletconnect-monorepo
commits_monorepo <- data.frame(read.csv2('commits_walletcollect2.csv', sep = ","))
commits_monorepo$days_since_first<- as.numeric(commits_monorepo$days_since_first)

ganchoradkov <- rdrobust::rdrobust(commits_monorepo$num_issues, commits_monorepo$days_since_first, c = 1392.73)
ganchoradkov$coef[3]
ganchoradkov$pv[3]

bkrem <- rdrobust::rdrobust(commits_monorepo$num_issues, commits_monorepo$days_since_first, c = 1275)
bkrem$coef[3]
bkrem$pv[3]

#weaviate/weaviate
commits_weaviate <- data.frame(read.csv2('commits_weaviate2.csv', sep = ","))
commits_weaviate$days_since_first<- as.numeric(commits_weaviate$days_since_first)

etiennedi <- rdrobust::rdrobust(commits_weaviate$num_issues, commits_weaviate$days_since_first, c = 903.42)
etiennedi$coef[3]
etiennedi$pv[3]

antasmarcin <- rdrobust::rdrobust(commits_weaviate$num_issues, commits_weaviate$days_since_first, c = 1673.85)
antasmarcin$coef[3]
antasmarcin$pv[3]

#weseek/growi
commits_growi <- data.frame(read.csv2('commits_growi2.csv', sep = ","))
commits_growi$days_since_first<- as.numeric(commits_growi$days_since_first)

mudanagrune <- rdrobust::rdrobust(commits_growi$num_issues, commits_growi$days_since_first, c = 1704.65)
mudanagrune$coef[3]
mudanagrune$pv[3]

kaoritokashiki <- rdrobust::rdrobust(commits_growi$num_issues, commits_growi$days_since_first, c = 1041.84)
kaoritokashiki$coef[3]
kaoritokashiki$pv[3]

miya <- rdrobust::rdrobust(commits_growi$num_issues, commits_growi$days_since_first, c = 1488.45)
miya$coef[3]
miya$pv[3]

itizawa <- rdrobust::rdrobust(commits_growi$num_issues, commits_growi$days_since_first, c = 787.91)
itizawa$coef[3]
itizawa$pv[3]

#wwmm/easyeffects
commits_easyeffects <- data.frame(read.csv2('commits_easyeffects2.csv', sep = ","))
commits_easyeffects$days_since_first<- as.numeric(commits_easyeffects$days_since_first)

weblate <- rdrobust::rdrobust(commits_easyeffects$num_issues, commits_easyeffects$days_since_first, c = 1756.56)
weblate$coef[3]
weblate$pv[3]




#Cluster 2 - 3 projects - (green)
#microsoft/azuredatastudio
commits_azure <- data.frame(read.csv2('commits_azure2.csv', sep = ","))
commits_azure$days_since_first<- as.numeric(commits_azure$days_since_first)

cssuh <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 954.62)
cssuh$coef[3]
cssuh$pv[3]

SakshiSharma <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 751.35)
SakshiSharma$coef[3]
SakshiSharma$pv[3]

barbaravaldez <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 882.35)
barbaravaldez$coef[3]
barbaravaldez$pv[3]

lewissanchez <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 1367.98)
lewissanchez$coef[3]
lewissanchez$pv[3]

smartguest <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 703.96)
smartguest$coef[3]
smartguest$pv[3]

Benjin <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 649.13)
Benjin$coef[3]
Benjin$pv[3]

lucyzhang929 <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 600.92)
lucyzhang929$coef[3]
lucyzhang929$pv[3]

CharlesGagnon <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 485.15)
CharlesGagnon$coef[3]
CharlesGagnon$pv[3]

brianharris <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 1294.59)
brianharris$coef[3]
brianharris$pv[3]

VasuBhog <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 979.35)
VasuBhog$coef[3]
VasuBhog$pv[3]

udeeshagautam <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 448.1)
udeeshagautam$coef[3]
udeeshagautam$pv[3]

csigs <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 1176.67)
csigs$coef[3]
csigs$pv[3]

MaddyDev <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 490.58)
MaddyDev$coef[3]
MaddyDev$pv[3]

aasimkhan30 <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 670.23)
aasimkhan30$coef[3]
aasimkhan30$pv[3]

kisantia <- rdrobust::rdrobust(commits_azure$num_issues, commits_azure$days_since_first, c = 391.22)
kisantia$coef[3]
kisantia$pv[3]

#pingcap/docs
commits_docs <- data.frame(read.csv2('commits_docs2.csv', sep = ","))
commits_docs$days_since_first<- as.numeric(commits_docs$days_since_first)

lilin90 <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 402.51)
lilin90$coef[3]
lilin90$pv[3]

ranhuang <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 1294.8)
ranhuang$coef[3]
ranhuang$pv[3]

morgo <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 758.58)
morgo$coef[3]
morgo$pv[3]

TomShawn <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 933.67)
TomShawn$coef[3]
TomShawn$pv[3]

yikeke <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 715.41)
yikeke$coef[3]
yikeke$pv[3]

hfxsd <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 1836.58)
hfxsd$coef[3]
hfxsd$pv[3]

CaitinChen <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 558.49)
CaitinChen$coef[3]
CaitinChen$pv[3]

dveeden <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 1560.99)
dveeden$coef[3]
dveeden$pv[3]

qiancai <- rdrobust::rdrobust(commits_docs$num_issues, commits_docs$days_since_first, c = 1673.31)
qiancai$coef[3]
qiancai$pv[3]

#xamarin/xamarin-macios
commits_xamarin <- data.frame(read.csv2('commits_xamarin2.csv', sep = ","))
commits_xamarin$days_since_first<- as.numeric(commits_xamarin$days_since_first)

tjdevel709 <- rdrobust::rdrobust(commits_xamarin$num_issues, commits_xamarin$days_since_first, c = 1155.98)
tjdevel709$coef[3]
tjdevel709$pv[3]

mobiletools<- rdrobust::rdrobust(commits_xamarin$num_issues, commits_xamarin$days_since_first, c = 1717.35)
mobiletools$coef[3]
mobiletools$pv[3]

monojenkins<- rdrobust::rdrobust(commits_xamarin$num_issues, commits_xamarin$days_since_first, c = 906.66)
monojenkins$coef[3]
monojenkins$pv[3]








#Cluster 3 - 10 projects - (blue)
#Aircoookie/WLED
commits_wled <- data.frame(read.csv2('commits_wled2.csv', sep = ","))
commits_wled$days_since_first<- as.numeric(commits_wled$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_wled$num_issues, commits_wled$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]


#arendst/Tasmota
commits_tasmota <- data.frame(read.csv2('commits_tasmota2.csv', sep = ","))
commits_tasmota$days_since_first<- as.numeric(commits_tasmota$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_tasmota$num_issues, commits_tasmota$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#awsdocs/aws-doc-sdk-examples
commits_awsdoc <- data.frame(read.csv2('commits_aws-doc2.csv', sep = ","))
commits_awsdoc$days_since_first<- as.numeric(commits_awsdoc$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_awsdoc$num_issues, commits_awsdoc$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_awsdoc$num_issues, commits_awsdoc$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_awsdoc$num_issues, commits_awsdoc$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_awsdoc$num_issues, commits_awsdoc$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_awsdoc$num_issues, commits_awsdoc$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#grafana/loki
commits_loki <- data.frame(read.csv2('commits_loki2.csv', sep = ","))
commits_loki$days_since_first<- as.numeric(commits_loki$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_loki$num_issues, commits_loki$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#lvgl/lvgl
commits_lvgl <- data.frame(read.csv2('commits_lvgl2.csv', sep = ","))
commits_lvgl$days_since_first<- as.numeric(commits_lvgl$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_lvgl$num_issues, commits_lvgl$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_lvgl$num_issues, commits_lvgl$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_lvgl$num_issues, commits_lvgl$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_lvgl$num_issues, commits_lvgl$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#netbox-community/netbox
commits_netbox <- data.frame(read.csv2('commits_netbox2.csv', sep = ","))
commits_netbox$days_since_first<- as.numeric(commits_netbox$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_netbox$num_issues, commits_netbox$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_netbox$num_issues, commits_netbox$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#TanStack/query
commits_query <- data.frame(read.csv2('commits_query2.csv', sep = ","))
commits_query$days_since_first<- as.numeric(commits_query$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_query$num_issues, commits_query$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_query$num_issues, commits_query$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#umijs/umi
commits_umi <- data.frame(read.csv2('commits_umi2.csv', sep = ","))
commits_umi$days_since_first<- as.numeric(commits_umi$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_umi$num_issues, commits_umi$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#vueuse/vueuse
commits_vueuse <- data.frame(read.csv2('commits_vueuse2.csv', sep = ","))
commits_vueuse$days_since_first<- as.numeric(commits_vueuse$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_vueuse$num_issues, commits_vueuse$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_vueuse$num_issues, commits_vueuse$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_vueuse$num_issues, commits_vueuse$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_vueuse$num_issues, commits_vueuse$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

#yuzu-emu/yuzu
commits_yuzu <- data.frame(read.csv2('commits_yuzu2.csv', sep = ","))
commits_yuzu$days_since_first<- as.numeric(commits_yuzu$days_since_first)

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]

blazoncek<- rdrobust::rdrobust(commits_yuzu$num_issues, commits_yuzu$days_since_first, c = 1453.49)
blazoncek$coef[3]
blazoncek$pv[3]




all_r2 <- list(c1_rsq, c2_rsq, c3_rsq)
boxplot(all_r2, ylim = c(0,1), col = c(2, 3, 4))

plot(commits_texstudio$commit_month, commits_texstudio$num_issues, col = commits_texstudio$has_ci)
plot(commits_texstudio$commit_month, commits_texstudio$num_issues, col = commits_texstudio$is_core)

ci_scores <- list(
  c1_ci <- c(-7.14,-15.06,1.14,-24.31,47.56,105.74,-12.64,-11.957,-16.74,-15.95,-54.66,-42.83,-166.086,
             23.22,-13.6,-6.3,-12.16,10.66,-118.224,-50.686,-1.83,17.69,142.82,78.98,-23.493,-29.38,-15.14,
             -16.26,2.27,-4.2,-3.78,-2.88,7.24,113.455,33.548,7.0276,5.84,-14.35,-148.24,22.59,-8.1,-18.36,
             15.2,26.215,-47.51,18.52,1.87,-9.54,-5.58,-14.06),
  c2_ci <- c(37.44,12.69),
  c3_ci <- c(141.38,27.89,-39.127,117.73,43.59,146.683,6.56)
)

#BOXPLOT AND T-test
core_scores <- list(
  c1_core <- c(1.1199,-2.57,-8.36,73.72,-8.06,-4.52,31.578,5.6,8.1,-6.64,8.7,-9.74,11.53,-29.464,5.47,-2.95,-7.849,3.37,
               20.99,10.009,-4.558,-4.82,-12.14,34.32,-4.08,-9.42,3.85,-2.1,3.67,-3.25,40.49,-106.483,3.85,-5.9,-77.92,
               5.37,38.96,8.4,-12.443,-2.45,-4.33,-1.88,-4.41,11.39,-32.01),
  c2_core <- c(247.54),
  c3_core <- c(-12.01,38.284,-14.235,60.546,-6.25,-2.51,62.56,-58.707)
)


inter_scores <- list(
  c1_inter <- c(8.38,-62.98,10.79,-4.49,-7.11,7.96,-27.285,13.83,84.8,-9.19,4.09,6.107,5.08,-23.28,-10.661,4.343,8.46,10.76,
                -14.113,32.91,2.76,-5.34,-11.01,-20.9,122.448,2.54,-5.22,9.3,93.73,2.46,-34.579,-9.33,5.332,-11.4,-5.05,
                4.85,6.28,-11.22,44.95),
  c2_inter <- c(-148.26,-2.43),
  c3_inter <- c(19.32,-34.51,13.41,28.768,4.84,-62.65,137.514)
)

boxplot(ci_scores, col = c(2,3,4))
boxplot(core_scores, col = c(2,3,4))
boxplot(inter_scores, col = c(2,3,4))


t.test(c1_ci)
t.test(c2_ci)
t.test(c3_ci)
t.test(c1_ci,c2_ci)
t.test(c2_ci, c3_ci)
t.test(c1_ci, c3_ci)


t.test(c1_core)
t.test(c2_core)
t.test(c3_core)
t.test(c1_core,c2_core)
t.test(c2_core, c3_core)
t.test(c1_core, c3_core)


t.test(c1_inter)
t.test(c2_inter)
t.test(c3_inter)
t.test(c1_inter,c2_inter)
t.test(c2_inter, c3_inter)
t.test(c1_inter, c3_inter)
