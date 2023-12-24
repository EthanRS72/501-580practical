library(rdd)
c1_rsq <- c()
c2_rsq <- c()
c3_rsq <- c()
#Cluster 1 - 52 projects - (pink)
#	smallstep/certificates
commits_certificates <- data.frame(read.csv2('commits_certificates.csv', sep = ","))
commits_certificates$has_ci <- as.factor(commits_certificates$has_ci)
commits_certificates$is_core <- as.factor(commits_certificates$is_core)
certificates_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_certificates))
c1_rsq <- c(c1_rsq, certificates_sum$r.squared)

#texstudio-org/texstudio
commits_texstudio <- data.frame(read.csv2('commits_texstudio.csv', sep = ","))
commits_texstudio$has_ci <- as.factor(commits_texstudio$has_ci)
commits_texstudio$is_core <- as.factor(commits_texstudio$is_core)
texstudio_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_texstudio))
c1_rsq <- c(c1_rsq, texstudio_sum$r.squared)

#	apache/dubbo-go
commits_dubbogo <- data.frame(read.csv2('commits_dubbo-go.csv', sep = ","))
commits_dubbogo$has_ci <- as.factor(commits_dubbogo$has_ci)
commits_dubbogo$is_core <- as.factor(commits_dubbogo$is_core)
dubbogo_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_dubbogo))
c1_rsq <- c(c1_rsq, dubbogo_sum$r.squared)

#suttacentral/suttacentral
commits_suttacentral <- data.frame(read.csv2('commits_suttacentral.csv', sep = ","))
commits_suttacentral$has_ci <- as.factor(commits_suttacentral$has_ci)
commits_suttacentral$is_core <- as.factor(commits_suttacentral$is_core)
suttacentral_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_suttacentral))
c1_rsq <- c(c1_rsq, suttacentral_sum$r.squared)

#Dallinger/Dallinger
commits_dallinger <- data.frame(read.csv2('commits_dallinger.csv', sep = ","))
commits_dallinger$has_ci <- as.factor(commits_dallinger$has_ci)
commits_dallinger$is_core <- as.factor(commits_dallinger$is_core)
dallinger_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_dallinger))
c1_rsq <- c(c1_rsq, dallinger_sum$r.squared)

#saulpw/visidata
commits_visidata <- data.frame(read.csv2('commits_visidata.csv', sep = ","))
commits_visidata$has_ci <- as.factor(commits_visidata$has_ci)
commits_visidata$is_core <- as.factor(commits_visidata$is_core)
visidata_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_visidata))
c1_rsq <- c(c1_rsq, visidata_sum$r.squared)

#MetaMask/metamask-mobile
commits_metamask <- data.frame(read.csv2('commits_metamask.csv', sep = ","))
commits_metamask$has_ci <- as.factor(commits_metamask$has_ci)
commits_metamask$is_core <- as.factor(commits_metamask$is_core)
metamask_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_metamask))
c1_rsq <- c(c1_rsq, metamask_sum$r.squared)

#TurningWheel/Barony
commits_barony <- data.frame(read.csv2('commits_barony.csv', sep = ","))
commits_barony$has_ci <- as.factor(commits_barony$has_ci)
commits_barony$is_core <- as.factor(commits_barony$is_core)
barony_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_barony))
c1_rsq <- c(c1_rsq, barony_sum$r.squared)

#nextcloud/polls
commits_polls <- data.frame(read.csv2('commits_polls.csv', sep = ","))
commits_polls$has_ci <- as.factor(commits_polls$has_ci)
commits_polls$is_core <- as.factor(commits_polls$is_core)
polls_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_polls))
c1_rsq <- c(c1_rsq, polls_sum$r.squared)

#artalar/reatom
commits_reatom <- data.frame(read.csv2('commits_reatom.csv', sep = ","))
commits_reatom$has_ci <- as.factor(commits_reatom$has_ci)
commits_reatom$is_core <- as.factor(commits_reatom$is_core)
reatom_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_reatom))
c1_rsq <- c(c1_rsq, reatom_sum$r.squared)

#KhronosGroup/glTF-Blender-IO
commits_gltf <- data.frame(read.csv2('commits_gltf.csv', sep = ","))
commits_gltf$has_ci <- as.factor(commits_gltf$has_ci)
commits_gltf$is_core <- as.factor(commits_gltf$is_core)
gltf_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_gltf))
c1_rsq <- c(c1_rsq, gltf_sum$r.squared)


#weaviate/weaviate
commits_weaviate <- data.frame(read.csv2('commits_weaviate.csv', sep = ","))
commits_weaviate$has_ci <- as.factor(commits_weaviate$has_ci)
commits_weaviate$is_core <- as.factor(commits_weaviate$is_core)
weaviate_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_weaviate))
c1_rsq <- c(c1_rsq, weaviate_sum$r.squared)

#relative-ci/bundle-stats
commits_bundlestats <- data.frame(read.csv2('commits_bundle-stats.csv', sep = ","))
commits_bundlestats$has_ci <- as.factor(commits_bundlestats$has_ci)
commits_bundlestats$is_core <- as.factor(commits_bundlestats$is_core)
bundlestats_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_bundlestats))
c1_rsq <- c(c1_rsq, bundlestats_sum$r.squared)

#online-go/online-go.com
commits_onlinego <- data.frame(read.csv2('commits_online-go.csv', sep = ","))
commits_onlinego$has_ci <- as.factor(commits_onlinego$has_ci)
commits_onlinego$is_core <- as.factor(commits_onlinego$is_core)
onlinego_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_onlinego))
c1_rsq <- c(c1_rsq, onlinego_sum$r.squared)

#archesproject/arches
commits_arches <- data.frame(read.csv2('commits_arches.csv', sep = ","))
commits_arches$has_ci <- as.factor(commits_arches$has_ci)
commits_arches$is_core <- as.factor(commits_arches$is_core)
arches_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_arches))
c1_rsq <- c(c1_rsq, arches_sum$r.squared)

#DraftBot-A-Discord-Adventure/DraftBot
commits_draftbot <- data.frame(read.csv2('commits_draftbot.csv', sep = ","))
commits_draftbot$has_ci <- as.factor(commits_draftbot$has_ci)
commits_draftbot$is_core <- as.factor(commits_draftbot$is_core)
draftbot_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_draftbot))
c1_rsq <- c(c1_rsq, draftbot_sum$r.squared)

#SUI-Components/sui
commits_sui <- data.frame(read.csv2('commits_sui.csv', sep = ","))
commits_sui$has_ci <- as.factor(commits_sui$has_ci)
commits_sui$is_core <- as.factor(commits_sui$is_core)
sui_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_sui))
c1_rsq <- c(c1_rsq, sui_sum$r.squared)

#jens-maus/RaspberryMatic
commits_raspberrymatic <- data.frame(read.csv2('commits_raspberrymatic.csv', sep = ","))
commits_raspberrymatic$has_ci <- as.factor(commits_raspberrymatic$has_ci)
commits_raspberrymatic$is_core <- as.factor(commits_raspberrymatic$is_core)
raspberrymatic_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_raspberrymatic))
c1_rsq <- c(c1_rsq, raspberrymatic_sum$r.squared)

#nextcloud/deck
commits_deck <- data.frame(read.csv2('commits_deck.csv', sep = ","))
commits_deck$has_ci <- as.factor(commits_deck$has_ci)
commits_deck$is_core <- as.factor(commits_deck$is_core)
deck_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_deck))
c1_rsq <- c(c1_rsq, deck_sum$r.squared)

#postmanlabs/postman-docs
commits_postmandocs <- data.frame(read.csv2('commits_postman-docs.csv', sep = ","))
commits_postmandocs$has_ci <- as.factor(commits_postmandocs$has_ci)
commits_postmandocs$is_core <- as.factor(commits_postmandocs$is_core)
postmandocs_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_postmandocs))
c1_rsq <- c(c1_rsq, postmandocs_sum$r.squared)

#RetroAchievements/RAWeb
commits_raweb <- data.frame(read.csv2('commits_raweb.csv', sep = ","))
commits_raweb$has_ci <- as.factor(commits_raweb$has_ci)
commits_raweb$is_core <- as.factor(commits_raweb$is_core)
raweb_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_raweb))
c1_rsq <- c(c1_rsq, raweb_sum$r.squared)

#scrtlabs/SecretNetwork
commits_secretnetwork <- data.frame(read.csv2('commits_secretnetwork.csv', sep = ","))
commits_secretnetwork$has_ci <- as.factor(commits_secretnetwork$has_ci)
commits_secretnetwork$is_core <- as.factor(commits_secretnetwork$is_core)
secretnetwork_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_secretnetwork))
c1_rsq <- c(c1_rsq, secretnetwork_sum$r.squared)

#Smithay/smithay
commits_smithay <- data.frame(read.csv2('commits_smithay.csv', sep = ","))
commits_smithay$has_ci <- as.factor(commits_smithay$has_ci)
commits_smithay$is_core <- as.factor(commits_smithay$is_core)
smithay_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_smithay))
c1_rsq <- c(c1_rsq, smithay_sum$r.squared)


#weseek/growi
commits_growi <- data.frame(read.csv2('commits_growi.csv', sep = ","))
commits_growi$has_ci <- as.factor(commits_growi$has_ci)
commits_growi$is_core <- as.factor(commits_growi$is_core)
growi_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_growi))
c1_rsq <- c(c1_rsq, growi_sum$r.squared)

#aws/aws-sdk-js-v3
commits_awssdk <- data.frame(read.csv2('commits_aws-sdk.csv', sep = ","))
commits_awssdk$has_ci <- as.factor(commits_awssdk$has_ci)
commits_awssdk$is_core <- as.factor(commits_awssdk$is_core)
awssdk_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_awssdk))
c1_rsq <- c(c1_rsq, awssdk_sum$r.squared)

#rotki/rotki
commits_rotki <- data.frame(read.csv2('commits_rotki.csv', sep = ","))
commits_rotki$has_ci <- as.factor(commits_rotki$has_ci)
commits_rotki$is_core <- as.factor(commits_rotki$is_core)
rotki_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_rotki))
c1_rsq <- c(c1_rsq, rotki_sum$r.squared)

#EDCD/EDDI
commits_eddi <- data.frame(read.csv2('commits_eddi.csv', sep = ","))
commits_eddi$has_ci <- as.factor(commits_eddi$has_ci)
commits_eddi$is_core <- as.factor(commits_eddi$is_core)
eddi_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_eddi))
c1_rsq <- c(c1_rsq, eddi_sum$r.squared)

#kubernetes-sigs/cluster-api-provider-vsphere
commits_clusterapi <- data.frame(read.csv2('commits_cluster-api.csv', sep = ","))
commits_clusterapi$has_ci <- as.factor(commits_clusterapi$has_ci)
commits_clusterapi$is_core <- as.factor(commits_clusterapi$is_core)
clusterapi_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_clusterapi))
c1_rsq <- c(c1_rsq, clusterapi_sum$r.squared)

#synclounge/synclounge
commits_synclounge <- data.frame(read.csv2('commits_synclounge.csv', sep = ","))
commits_synclounge$has_ci <- as.factor(commits_synclounge$has_ci)
commits_synclounge$is_core <- as.factor(commits_synclounge$is_core)
synclounge_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_synclounge))
c1_rsq <- c(c1_rsq, synclounge_sum$r.squared)

#pmmp/PocketMine-MP
commits_pocketminemp <- data.frame(read.csv2('commits_PocketMine-MP.csv', sep = ","))
commits_pocketminemp$has_ci <- as.factor(commits_pocketminemp$has_ci)
commits_pocketminemp$is_core <- as.factor(commits_pocketminemp$is_core)
pocketminemp_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_pocketminemp))
c1_rsq <- c(c1_rsq, pocketminemp_sum$r.squared)

#GIScience/openrouteservice
commits_openrouteservice <- data.frame(read.csv2('commits_openrouteservice.csv', sep = ","))
commits_openrouteservice$has_ci <- as.factor(commits_openrouteservice$has_ci)
commits_openrouteservice$is_core <- as.factor(commits_openrouteservice$is_core)
openrouteservice_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_openrouteservice))
c1_rsq <- c(c1_rsq, openrouteservice_sum$r.squared)

#SamR1/FitTrackee
commits_fittrackee <- data.frame(read.csv2('commits_fittrackee.csv', sep = ","))
commits_fittrackee$has_ci <- as.factor(commits_fittrackee$has_ci)
commits_fittrackee$is_core <- as.factor(commits_fittrackee$is_core)
fittrackee_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_fittrackee))
c1_rsq <- c(c1_rsq, fittrackee_sum$r.squared)


#navikt/aksel
commits_aksel <- data.frame(read.csv2('commits_aksel.csv', sep = ","))
commits_aksel$has_ci <- as.factor(commits_aksel$has_ci)
commits_aksel$is_core <- as.factor(commits_aksel$is_core)
aksel_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_aksel))
c1_rsq <- c(c1_rsq, aksel_sum$r.squared)

#epam/ketcher
commits_ketcher <- data.frame(read.csv2('commits_ketcher.csv', sep = ","))
commits_ketcher$has_ci <- as.factor(commits_ketcher$has_ci)
commits_ketcher$is_core <- as.factor(commits_ketcher$is_core)
ketcher_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_ketcher))
c1_rsq <- c(c1_rsq, ketcher_sum$r.squared)

#PhantomBot/PhantomBot
commits_phantombot <- data.frame(read.csv2('commits_phantombot.csv', sep = ","))
commits_phantombot$has_ci <- as.factor(commits_phantombot$has_ci)
commits_phantombot$is_core <- as.factor(commits_phantombot$is_core)
phantombot_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_phantombot))
c1_rsq <- c(c1_rsq, phantombot_sum$r.squared)

#pokeclicker/pokeclicker
commits_pokeclicker <- data.frame(read.csv2('commits_pokeclicker.csv', sep = ","))
commits_pokeclicker$has_ci <- as.factor(commits_pokeclicker$has_ci)
commits_pokeclicker$is_core <- as.factor(commits_pokeclicker$is_core)
pokeclicker_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_pokeclicker))
c1_rsq <- c(c1_rsq, pokeclicker_sum$r.squared)

#WalletConnect/walletconnect-monorepo
commits_walletcollect <- data.frame(read.csv2('commits_walletcollect.csv', sep = ","))
commits_walletcollect$has_ci <- as.factor(commits_walletcollect$has_ci)
commits_walletcollect$is_core <- as.factor(commits_walletcollect$is_core)
walletcollect_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_walletcollect))
c1_rsq <- c(c1_rsq, walletcollect_sum$r.squared)

#SUI-Components/sui-components
commits_suicomponents <- data.frame(read.csv2('commits_sui-components.csv', sep = ","))
commits_suicomponents$has_ci <- as.factor(commits_suicomponents$has_ci)
commits_suicomponents$is_core <- as.factor(commits_suicomponents$is_core)
suicomponents_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_suicomponents))
c1_rsq <- c(c1_rsq, suicomponents_sum$r.squared)

#Hamlib/Hamlib
commits_hamlib <- data.frame(read.csv2('commits_hamlib.csv', sep = ","))
commits_hamlib$has_ci <- as.factor(commits_hamlib$has_ci)
commits_hamlib$is_core <- as.factor(commits_hamlib$is_core)
hamlib_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_hamlib))
c1_rsq <- c(c1_rsq, hamlib_sum$r.squared)

#wwmm/easyeffects
commits_easyeffects <- data.frame(read.csv2('commits_easyeffects.csv', sep = ","))
commits_easyeffects$has_ci <- as.factor(commits_easyeffects$has_ci)
commits_easyeffects$is_core <- as.factor(commits_easyeffects$is_core)
easyeffects_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_easyeffects))
c1_rsq <- c(c1_rsq, easyeffects_sum$r.squared)

#WWBN/AVideo
commits_avideo <- data.frame(read.csv2('commits_avideo.csv', sep = ","))
commits_avideo$has_ci <- as.factor(commits_avideo$has_ci)
commits_avideo$is_core <- as.factor(commits_avideo$is_core)
avideo_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_avideo))
c1_rsq <- c(c1_rsq, avideo_sum$r.squared)

#irislib/iris-messenger
commits_iris <- data.frame(read.csv2('commits_iris.csv', sep = ","))
commits_iris$has_ci <- as.factor(commits_iris$has_ci)
commits_iris$is_core <- as.factor(commits_iris$is_core)
iris_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_iris))
c1_rsq <- c(c1_rsq, iris_sum$r.squared)

#mullvad/mullvadvpn-app
commits_mullvad <- data.frame(read.csv2('commits_mullvad.csv', sep = ","))
commits_mullvad$has_ci <- as.factor(commits_mullvad$has_ci)
commits_mullvad$is_core <- as.factor(commits_mullvad$is_core)
mullvad_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_mullvad))
c1_rsq <- c(c1_rsq, mullvad_sum$r.squared)

#ceph/ceph-csi
commits_cephcsi <- data.frame(read.csv2('commits_ceph-csi.csv', sep = ","))
commits_cephcsi$has_ci <- as.factor(commits_cephcsi$has_ci)
commits_cephcsi$is_core <- as.factor(commits_cephcsi$is_core)
cephcsi_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_cephcsi))
c1_rsq <- c(c1_rsq, cephcsi_sum$r.squared)

#primer/react
commits_react <- data.frame(read.csv2('commits_react.csv', sep = ","))
commits_react$has_ci <- as.factor(commits_react$has_ci)
commits_react$is_core <- as.factor(commits_react$is_core)
react_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_react))
c1_rsq <- c(c1_rsq, react_sum$r.squared)

#doccano/doccano
commits_doccano <- data.frame(read.csv2('commits_doccano.csv', sep = ","))
commits_doccano$has_ci <- as.factor(commits_doccano$has_ci)
commits_doccano$is_core <- as.factor(commits_doccano$is_core)
doccano_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_doccano))
c1_rsq <- c(c1_rsq, doccano_sum$r.squared)

#reframe-hpc/reframe
commits_reframe <- data.frame(read.csv2('commits_reframe.csv', sep = ","))
commits_reframe$has_ci <- as.factor(commits_reframe$has_ci)
commits_reframe$is_core <- as.factor(commits_reframe$is_core)
reframe_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_reframe))
c1_rsq <- c(c1_rsq, reframe_sum$r.squared)

#cubefs/cubefs
commits_cubefs <- data.frame(read.csv2('commits_cubefs.csv', sep = ","))
commits_cubefs$has_ci <- as.factor(commits_cubefs$has_ci)
commits_cubefs$is_core <- as.factor(commits_cubefs$is_core)
cubefs_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_cubefs))
c1_rsq <- c(c1_rsq, cubefs_sum$r.squared)

#fredlcore/BSB-LAN
commits_bsblan <- data.frame(read.csv2('commits_bsb-lan.csv', sep = ","))
commits_bsblan$has_ci <- as.factor(commits_bsblan$has_ci)
commits_bsblan$is_core <- as.factor(commits_bsblan$is_core)
bsblan_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_bsblan))
c1_rsq <- c(c1_rsq, bsblan_sum$r.squared)

#birchill/10ten-ja-reader
commits_tenja <- data.frame(read.csv2('commits_10ja.csv', sep = ","))
commits_tenja$has_ci <- as.factor(commits_tenja$has_ci)
commits_tenja$is_core <- as.factor(commits_tenja$is_core)
tenja_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_tenja))
c1_rsq <- c(c1_rsq, tenja_sum$r.squared)

#NVIDIA/NeMo
commits_nemo <- data.frame(read.csv2('commits_nemo.csv', sep = ","))
commits_nemo$has_ci <- as.factor(commits_nemo$has_ci)
commits_nemo$is_core <- as.factor(commits_nemo$is_core)
nemo_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_nemo))
c1_rsq <- c(c1_rsq, nemo_sum$r.squared)

#SAP/ui5-webcomponents
commits_ui5 <- data.frame(read.csv2('commits_ui5.csv', sep = ","))
commits_ui5$has_ci <- as.factor(commits_ui5$has_ci)
commits_ui5$is_core <- as.factor(commits_ui5$is_core)
ui5_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_ui5))
c1_rsq <- c(c1_rsq, ui5_sum$r.squared)

#Cluster 2 - 3 projects - (green)
#microsoft/azuredatastudio
commits_azure <- data.frame(read.csv2('commits_azure.csv', sep = ","))
commits_azure$has_ci <- as.factor(commits_azure$has_ci)
commits_azure$is_core <- as.factor(commits_azure$is_core)
azure_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_azure))
c2_rsq <- c(c2_rsq, azure_sum$r.squared)

#xamarin/xamarin-macios
commits_xamarin <- data.frame(read.csv2('commits_xamarin.csv', sep = ","))
commits_xamarin$has_ci <- as.factor(commits_xamarin$has_ci)
commits_xamarin$is_core <- as.factor(commits_xamarin$is_core)
xamarin_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_xamarin))
c2_rsq <- c(c2_rsq, xamarin_sum$r.squared)

#pingcap/docs
commits_docs <- data.frame(read.csv2('commits_docs.csv', sep = ","))
commits_docs$has_ci <- as.factor(commits_docs$has_ci)
commits_docs$is_core <- as.factor(commits_docs$is_core)
docs_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_docs))
c2_rsq <- c(c2_rsq, docs_sum$r.squared)

#Cluster 3 - 10 projects - (blue)
#umijs/umi
commits_umi <- data.frame(read.csv2('commits_umi.csv', sep = ","))
commits_umi$has_ci <- as.factor(commits_umi$has_ci)
commits_umi$is_core <- as.factor(commits_umi$is_core)
umi_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_umi))
c3_rsq <- c(c3_rsq, umi_sum$r.squared)

#netbox-community/netbox
commits_netbox <- data.frame(read.csv2('commits_netbox.csv', sep = ","))
commits_netbox$has_ci <- as.factor(commits_netbox$has_ci)
commits_netbox$is_core <- as.factor(commits_netbox$is_core)
netbox_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_netbox))
c3_rsq <- c(c3_rsq, netbox_sum$r.squared)

#grafana/loki
commits_loki <- data.frame(read.csv2('commits_loki.csv', sep = ","))
commits_loki$has_ci <- as.factor(commits_loki$has_ci)
commits_loki$is_core <- as.factor(commits_loki$is_core)
loki_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_loki))
c3_rsq <- c(c3_rsq, loki_sum$r.squared)

#awsdocs/aws-doc-sdk-examples
commits_awsdoc <- data.frame(read.csv2('commits_aws-doc.csv', sep = ","))
commits_awsdoc$has_ci <- as.factor(commits_awsdoc$has_ci)
commits_awsdoc$is_core <- as.factor(commits_awsdoc$is_core)
awsdoc_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_awsdoc))
c3_rsq <- c(c3_rsq, awsdoc_sum$r.squared)

#vueuse/vueuse
commits_vueuse <- data.frame(read.csv2('commits_vueuse.csv', sep = ","))
commits_vueuse$has_ci <- as.factor(commits_vueuse$has_ci)
commits_vueuse$is_core <- as.factor(commits_vueuse$is_core)
vueuse_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_vueuse))
c3_rsq <- c(c3_rsq, vueuse_sum$r.squared)

#yuzu-emu/yuzu
commits_yuzu <- data.frame(read.csv2('commits_yuzu.csv', sep = ","))
commits_yuzu$has_ci <- as.factor(commits_yuzu$has_ci)
commits_yuzu$is_core <- as.factor(commits_yuzu$is_core)
yuzu_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_yuzu))
c3_rsq <- c(c3_rsq, yuzu_sum$r.squared)

#TanStack/query
commits_query <- data.frame(read.csv2('commits_query.csv', sep = ","))
commits_query$has_ci <- as.factor(commits_query$has_ci)
commits_query$is_core <- as.factor(commits_query$is_core)
query_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_query))
c3_rsq <- c(c3_rsq, query_sum$r.squared)

#lvgl/lvgl
commits_lvgl <- data.frame(read.csv2('commits_lvgl.csv', sep = ","))
commits_lvgl$has_ci <- as.factor(commits_lvgl$has_ci)
commits_lvgl$is_core <- as.factor(commits_lvgl$is_core)
lvgl_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_lvgl))
c3_rsq <- c(c3_rsq, lvgl_sum$r.squared)

#arendst/Tasmota
commits_tasmota <- data.frame(read.csv2('commits_tasmota.csv', sep = ","))
commits_tasmota$has_ci <- as.factor(commits_tasmota$has_ci)
commits_tasmota$is_core <- as.factor(commits_tasmota$is_core)
tasmota_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_tasmota))
c3_rsq <- c(c3_rsq, tasmota_sum$r.squared)

#Aircoookie/WLED
commits_wled <- data.frame(read.csv2('commits_wled.csv', sep = ","))
commits_wled$has_ci <- as.factor(commits_wled$has_ci)
commits_wled$is_core <- as.factor(commits_wled$is_core)
wled_sum <- summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_wled))
c3_rsq <- c(c3_rsq, wled_sum$r.squared)

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
