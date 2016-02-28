Wine.create!([
  {name: "Corbieres", description: "strong red wine", origin: "south-west of France"},
  {name: "Beaujolais", description: "primeur wine", origin: "Beaujolais"},
  {name: "Bordeaux", description: "wine for meat", origin: "Bordeaux"}
])
WineReview.create!([
  {expertname: "Jean francois bernard", review: "grande qualite de vin. A boir tous le jours ", rating: 5, wine_id: 3},
  {expertname: "Luois de funes", review: "a boire avec moderation", rating: 3, wine_id: 2},
  {expertname: "Patrick Dupont", review: "not happy", rating: 1, wine_id: 1},
  {expertname: "Domini", review: "xzcdzvxcbxcv", rating: 4, wine_id: 3},
  {expertname: "saddsvfvx", review: "jhbjbljbjhb", rating: 2, wine_id: 1},
  {expertname: "mikael", review: "cxvxcbcvbcxvxvc ", rating: 1, wine_id: 2}
])
