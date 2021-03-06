# Script to export dataframe to package

dfs <- list(
  voterregus::loadAlaska(),
  voterregus::loadArizona(),
  voterregus::loadCalifornia(),
  voterregus::loadColorado(),
  voterregus::loadConnecticut(),
  voterregus::loadDelaware(),
  voterregus::loadDC(),
  voterregus::loadFlorida(),
  voterregus::loadIowa(),
  voterregus::loadKansas(),
  voterregus::loadLouisiana(),
  voterregus::loadMaine(),
  voterregus::loadMaryland(),
  voterregus::loadMassachusetts(),
  voterregus::loadNebraska(),
  voterregus::loadNevada(),
  voterregus::loadNewHampshire(),
  voterregus::loadNewJersey(),
  voterregus::loadNewMexico(),
  voterregus::loadNewYork()
)

PartyRegistration <- dplyr::select(dplyr::mutate(dplyr::bind_rows(dfs), State=substr(County, 1, 2)), State, County, D, G, L, N, O, R)
devtools::use_data(PartyRegistration, overwrite=TRUE)
