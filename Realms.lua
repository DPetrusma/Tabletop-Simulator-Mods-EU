--[[
  ------------------------------------------------
  ------------------------------------------------
                Realm Set-up Data
  ------------------------------------------------
  ------------------------------------------------
--]]
SETUP_DATA = {
  ['000'] = {
    ['default'] = {
      religion = RELIGION.catholic,    -- Realm Religion
      coin = 15,                       -- Starting Coins
      monarch_power = {3, 3, 3},       -- Starting Monarch Power
      bot_power = 9,                   -- Starting Bot Power
      l_towns = { },                   -- Large Towns
      s_towns = { },                   -- Small Towns
      vassals = { },                   -- Vassals
      unrest = { },                    -- Towns or Vassals flipped to the unrest side
      allies = { },                    -- Towns used for ally makers
      marriages = { },                 -- Towns used for marriage markers
      truces = { },                    -- Towns used for truce markers
      claims = { },                    -- Claim Marker 2D positions
      core = { },                      -- Core Marker 2D positions
      influence = { },                 -- Influence & Colonist Cube 2D positions
      merchants = { },                 -- Marchant 2D positions
      figurines = { },                 -- Army & Fleet Figurine 2D positions (List with 'none' used to skip an entry)
      soldiers = { },                  -- Soldiers placed directly on the board (2D positions)
      ships = { },                     -- Ships placed on the map (2D positions)
      ships_bot = { },                 -- Ships placed by a bot. (2D positions)
      army1 = { 2, 0, 0 },             -- Army 1 composition (Infantry, Cavalry, Artillery)
      army2 = 0,                       -- Army 2 composition (Infantry, Cavalry, Artillery)
      army3 = 0,                       -- Army 3 composition (Infantry, Cavalry, Artillery)
      fleet = 0,                       -- Fleet composition (Light Ships, Heavy Ships, Galleys)
      extra_manpower = 0,              -- Extra manpower available to the realm (e.g. from tokens)
      events = {},                     -- Events to be placed for inactive bots (list of codes)
    },
  },
  [REALM.austria] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '27e718',
      ruler = { deck_guid = Setup_Card_Deck_GUID, card_guid = 'd69ea5', flip = false, ill = false },
      l_towns = { WesternMap.wien },
      s_towns = { WesternMap.osterreich, WesternMap.steiermark, WesternMap.karnten, WesternMap.lienz,
                  WesternMap.tirol, WesternMap.krain, WesternMap.sundgau },
      marriages = { WesternMap.pest },
      influence = { {1.57, -0.63}, {1.57, -0.25}, {6.23, 0.09}, {6.23, -0.28}, {3.98, 0.37}, {-0.36, -3.42},
                    {2.17, -4.68}, {4.26, -3.45}, },
      merchants = { {3.64, -0.55}, {0.91, 1.21} }, --Wien, Saxony
      figurines = { {4.19, -1.70} },
      ships = { {4.17, -5.45} },
      ships_bot = { {3.86, -5.02} },
      capital = WesternMap.wien
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '27e718',
      religion = RELIGION.counter_reformed,
      ruler = { deck_guid = Setup_Card_Deck_GUID, card_guid = 'd69ea5', flip = true, ill = true },
      l_towns = { WesternMap.wien, WesternMap.praha },
      s_towns = { WesternMap.osterreich, WesternMap.steiermark, WesternMap.karnten, WesternMap.lienz,
                  WesternMap.tirol, WesternMap.olomouc, WesternMap.budejovice, WesternMap.rudohori,
                  WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes, WesternMap.sundgau,
                  WesternMap.zagreb, WesternMap.rijeka, WesternMap.krain, WesternMap.silesia },
      allies = { WesternMap.munchen },
      marriages = { WesternMap.madrid, WesternMap.firenze },
      influence = { {1.37, -0.03}, {0.87, -3.19}, {2.37, -4.33} },
      merchants = { {3.66, -0.69}, {5.69, -7.57} },
      figurines = { {4.23, -1.70} },
      ships = { {4.33, -5.51} },
      ships_bot = { {3.86, -5.02} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.wien
    },
    ['S104'] = {
      parent = {REALM.austria, '1444'},
      ruler = { deck_guid = Event_Deck_GUIDs.age1r, card_guid = 'c5a036', flip = false, ill = false },
      l_towns = { WesternMap.wien },
      s_towns = { WesternMap.osterreich, WesternMap.steiermark, WesternMap.karnten, WesternMap.lienz,
                  WesternMap.tirol, WesternMap.krain, WesternMap.sundgau, WesternMap.artois,
                  WesternMap.franchecomte, WesternMap.amsterdam, WesternMap.zeeland, WesternMap.breda,
                  WesternMap.antwerpen, WesternMap.brugge, WesternMap.gent, WesternMap.namur, WesternMap.luxembourg, },
      marriages = { WesternMap.pest },
      claims = { {4.43, 0.75} },
      influence = { {1.57, -0.63}, {1.57, -0.25}, {6.23, 0.09}, {6.23, -0.28}, {3.78, 1.61},
                    {4.15, -3.37}, {-0.32, 0.16} },
      merchants = { {5.55, -7.46}, {3.42, -0.43} },
    },
    ['S204'] = {
      parent = {REALM.austria, '1618'},
      religion = RELIGION.catholic,
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = '363ed7', flip = false, ill = false },
      l_towns = { WesternMap.wien, WesternMap.praha, WesternMap.milano },
      s_towns = { WesternMap.osterreich, WesternMap.steiermark, WesternMap.karnten, WesternMap.lienz,
                  WesternMap.tirol, WesternMap.olomouc, WesternMap.budejovice, WesternMap.rudohori,
                  WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes, WesternMap.pest,
                  EasternMap.szabolcs, EasternMap.hunyad, EasternMap.torda, WesternMap.krain,
                  WesternMap.rijeka, WesternMap.zagreb, WesternMap.cremona, WesternMap.brugge,
                  WesternMap.namur, WesternMap.luxembourg, EasternMap.lwow },
      unrest = { EasternMap.lwow },
      allies = { WesternMap.savoie },
      marriages = { WesternMap.firenze },
      claims = { {7.87, 0.68} },
      influence = { {0.99, 0.25}, {0.99, -0.13}, {-1.08, -3.87}, {2.45, -4.36}, {-0.79, 1.65} },
    },
  },
  [REALM.castile] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '4fd5c8',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'a4772e', flip = false, ill = true },
      l_towns = { WesternMap.madrid, WesternMap.salamanca, WesternMap.sevilla },
      s_towns = { WesternMap.galicia, WesternMap.badajoz, WesternMap.cordoba, WesternMap.burgos,
                  WesternMap.murcia, WesternMap.canarias },
      claims = { {-8.81, -8.80} },
      influence = { {-5.49, -5.90}, {-5.49, -6.27}, {-10.65, -7.00}, {-2.34, -1.92}, {2.56, -4.69} },
      merchants = { {-10.91, -9.51}, {-1.87, -6.72} },
      figurines = { {-8.20, -7.11} },
      ships = { {-5.24, -8.30}, {-13.04, -6.36} },
      ships_bot = { {-13.10, -5.64}, {-5.95, -8.78} },
      events = {{'402-2', 1}, {'402-1', 1}, {'302-2', 1}, {'302-1', 1}, {'202-2', 1}, {'202-1', 1}},
      capital = WesternMap.madrid
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '4fd5c8',
      religion = RELIGION.counter_reformed,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'a4772e', flip = true, ill = true },
      l_towns = { WesternMap.madrid, WesternMap.sevilla, AmericaMap.mexico,
                  AmericaMap.centralamerica, AmericaMap.cuzco },
      s_towns = { WesternMap.murcia, WesternMap.burgos, WesternMap.cordoba, WesternMap.granada, WesternMap.gibraltar, WesternMap.canarias,
                  WesternMap.badajoz, WesternMap.salamanca, WesternMap.galicia, AmericaMap.florida, AmericaMap.antilles, AmericaMap.newgranada,
                  AmericaMap.quito, AmericaMap.charcas, AmericaMap.chile, AmericaMap.laplata, FarEastMap.philippines },
      allies = { WesternMap.lisboa, WesternMap.valencia },
      marriages = { WesternMap.porto, WesternMap.wien, WesternMap.paris },
      influence = { {-10.90, -7.09}, {-10.53, -7.09}, {2.43, -4.77} },
      merchants = { {-10.32, -8.91}, {-15.05, 9.76} },
      figurines = { {-8.27, -7.14} },
      ships = { {-12.96, -6.44}, {-15.03, 9.19}, {-14.58, 5.25}, {-16.65, 6.63}, {-18.32, -10.33} },
      ships_bot = { {-12.94, -5.59}, {-14.62, 8.73}, {-14.37, 5.84}, {-17.15, 7.23}, {-16.95, -8.32} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.madrid
    },
    ['S103'] = {
      parent = {REALM.castile, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '81aa15', flip = false, ill = false },
      s_towns = { WesternMap.galicia, WesternMap.badajoz, WesternMap.burgos, WesternMap.murcia, WesternMap.canarias,
                  WesternMap.cordoba, WesternMap.granada, WesternMap.gibraltar },
      allies = { WesternMap.valencia },
      marriages = { WesternMap.barcelona },
      claims = { },
      core = { {-8.81, -8.85} },
      influence = { {-5.49, -5.90}, {-5.49, -6.27}, {-2.34, -1.92}, {2.56, -4.69}, {-0.01, -7.19}, {0.37, -7.19} },
      ships = { {-12.57, -7.06}, {-5.16, -8.25} },
      ships_bot = { {-12.58, -7.72}, {-6.10, -8.74} },
    },
    ['S104'] = {
      parent = {REALM.castile, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '75f64d', flip = false, ill = false },
      l_towns = { WesternMap.madrid, WesternMap.salamanca, WesternMap.sevilla, WesternMap.valencia, WesternMap.napoli },
      s_towns = { WesternMap.galicia, WesternMap.badajoz, WesternMap.burgos, WesternMap.murcia, WesternMap.canarias,
                  WesternMap.cordoba, WesternMap.granada, WesternMap.gibraltar, WesternMap.navarra, WesternMap.zaragoza,
                  WesternMap.barcelona, WesternMap.baleares, WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina,
                  WesternMap.malta, WesternMap.salerno, WesternMap.bari, AmericaMap.antilles },
      claims = { AmericaMap.newgranada, AmericaMap.centralamerica },
      core = { {-8.78, -8.68}, {-6.54, -5.87} },
      influence = { {2.30, -4.41}, {2.30, -4.79}, {2.30, -5.16}, {-10.51, -5.22}, {-10.51, -5.59}, {-2.14, -1.61}, {-2.14, -1.98}  },
      figurines = { {3.44, -5.83} },
      ships = { {-12.57, -7.06}, {-5.16, -8.25}, {1.78, -7.75}, {-15.67, 9.61}, {-12.90, -6.46}, {-14.98, 9.11} },
      ships_bot = { {-13.24, -5.66}, {-6.01, -8.79}, {1.30, -7.16}, {-15.59, 9.00} },
    },
    ['S204'] = {
      parent = {REALM.castile, '1618'},
      religion = RELIGION.catholic,
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = 'b3beb5', flip = false, ill = false },
      l_towns = { WesternMap.madrid, WesternMap.sevilla, WesternMap.valencia, AmericaMap.mexico,
                  AmericaMap.centralamerica, AmericaMap.cuzco },
      s_towns = { WesternMap.murcia, WesternMap.burgos, WesternMap.cordoba, WesternMap.badajoz, WesternMap.galicia,
                  WesternMap.navarra, WesternMap.zaragoza, WesternMap.barcelona, WesternMap.baleares, WesternMap.salamanca,
                  WesternMap.granada, WesternMap.ceuta, WesternMap.canarias, WesternMap.tlemcen, WesternMap.oran,
                  AmericaMap.mississippi, AmericaMap.florida, AmericaMap.antilles, AmericaMap.newgranada,
                  AmericaMap.quito, AmericaMap.charcas, AmericaMap.chile, AmericaMap.laplata, FarEastMap.philippines },
      claims = { {-8.74, -8.81}, },
      unrest = { AmericaMap.mexico, AmericaMap.newgranada, AmericaMap.chile, AmericaMap.laplata },
      allies = { WesternMap.paris },
      marriages = { WesternMap.artois, WesternMap.napoli },
      influence = { {2.43, -4.77}, {3.46, -5.76}, {-1.39, -3.38}, {3.52, -9.53} },
      figurines = { {-8.27, -7.14}, 'none', 'none', {-12.26, -3.20} },
      ships = { {-12.96, -6.44}, {-15.03, 9.19}, {-14.58, 5.25}, {-5.17, -8.29} },
      ships_bot = { {-12.26, -3.20}, {-5.99, -8.89}, {-14.67, 8.59}, {-14.25, 6.09} },
      fleet = { 0, 1, 0}
    },
    ['S205'] = {
      parent = {REALM.castile, '1444'},
      setup_bag_guid = '4fd5c8',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'a4772e', flip = false, ill = true },
      l_towns = { WesternMap.wien, WesternMap.madrid, WesternMap.salamanca, WesternMap.valencia, WesternMap.sevilla },
      s_towns = { WesternMap.osterreich, WesternMap.steiermark, WesternMap.tirol, WesternMap.lienz, WesternMap.karnten,
                  WesternMap.murcia, WesternMap.burgos, WesternMap.galicia, WesternMap.badajoz, WesternMap.cordoba, 
                  WesternMap.gibraltar, WesternMap.granada, WesternMap.navarra, WesternMap.zaragoza,
                  WesternMap.barcelona, WesternMap.baleares, WesternMap.palermo, WesternMap.mesina, WesternMap.malta,
                  WesternMap.krain, WesternMap.sundgau, WesternMap.franchecomte, WesternMap.sardenya, WesternMap.canarias },
      vassals = { WesternMap.napoli, WesternMap.napoli, WesternMap.salerno, WesternMap.bari, WesternMap.luxembourg,
                  WesternMap.namur, WesternMap.artois, WesternMap.antwerpen, WesternMap.gent, WesternMap.brugge,
                  WesternMap.breda, WesternMap.zeeland, WesternMap.amsterdam },
      marriages = { WesternMap.pest },
      claims = { },
      core = { {-8.74, -8.75}, {-6.53, -6.08} },
      influence = { {1.54, -0.02}, {1.54, -0.40}, {5.97, -0.60}, {-2.11, 0.22}, {3.80, 1.81}, {-1.31, -3.39},
                    {1.99, -2.46}, {2.48, -4.63}, {3.80, -5.90}, {-11.23, -6.22}, {-2.06, 3.54} },
      figurines = { {-10.38, -4.33}, {4.16, -1.81} },
      ships = { {-5.24, -8.30}, {-13.04, -6.36}, {1.86, -7.83}, {-15.03, 9.10}, {-12.29, -6.38} },
      ships_bot = { {-13.08, -5.65}, {-6.10, -8.75}, {1.44, -7.12}, {-14.57, 8.64} },
      army1 = { 2, 1, 1 },
      army2 = { 2, 0, 0 },
    },
  },
  [REALM.england] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '275517',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '9dcdb4', flip = false, ill = false },
      l_towns = { WesternMap.london, WesternMap.bordeaux },
      s_towns = { WesternMap.northumberland, WesternMap.york, WesternMap.lancashire, WesternMap.pale,
                  WesternMap.shrewsbury, WesternMap.wales, WesternMap.essex, WesternMap.oxford,
                  WesternMap.wessex, WesternMap.caux, WesternMap.normandie, WesternMap.maine },
      allies = { WesternMap.lisboa },
      marriages = { WesternMap.porto },
      influence = { {-7.91, 7.54}, {-7.91, 7.92}, {-10.57, -5.67}, {-10.57, -5.29}, {-6.58, -0.01}, {-4.40, 0.84}, {-2.80, 1.66} },
      merchants = { {-4.31, 3.66}, {-10.84, -2.26} },
      figurines = { {-5.66, 3.66} },
      ships = { {-6.13, 1.38}, {-12.31, -0.74}, {-5.22, 1.80} },
      ships_bot = { {-7.19, 1.33}, {-12.41, -0.08} },
      capital = WesternMap.london
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '275517',
      religion = RELIGION.protestant,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '9dcdb4', flip = true, ill = true },
      l_towns = { WesternMap.london, WesternMap.lancashire, WesternMap.wessex },
      s_towns = { WesternMap.northumberland, WesternMap.ulaidh, WesternMap.york, WesternMap.pale, WesternMap.shrewsbury,
                  WesternMap.mhumhain, WesternMap.wales, WesternMap.essex, WesternMap.oxford },
      allies = { WesternMap.lothian, WesternMap.amsterdam },
      marriages = { WesternMap.perth, WesternMap.kobenhavn, WesternMap.pfalz },
      claims = { AmericaMap.newengland, AmericaMap.virginia },
      influence = { {-9.26, 7.03}, {-9.26, 7.40}, {-10.50, -5.55}, {-10.50, -5.17}, {-12.78, 2.12}, {-12.40, 2.12} },
      merchants = { {-4.34, 3.58}, {-6.39, 9.96} },
      figurines = { {-5.66, 3.66}, 'none', 'none', {-7.27, 1.33} },
      ships = { {-5.32, 1.64}, {-5.18, 5.63}, {-12.46, -0.80}, {-8.03, 10.03}, {-15.05, 11.02}, {-4.40, 5.63} },
      ships_bot = { {-7.27, 1.33}, {-6.03, 5.96}, {-9.10, 9.60}, {-13.04, -1.27}, {-15.31, 11.78} },
      army1 = { 2, 0, 1 },
      fleet = { 0, 2, 0 },
      capital = WesternMap.london
    },
    ['S103'] = {
      parent = {REALM.england, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '189a25', flip = false, ill = false },
      l_towns = { WesternMap.london },
      s_towns = { WesternMap.northumberland, WesternMap.york, WesternMap.lancashire, WesternMap.pale,
                  WesternMap.shrewsbury, WesternMap.wales, WesternMap.essex, WesternMap.oxford, WesternMap.wessex },
      influence = { {-7.91, 7.54}, {-7.91, 7.92}, {-2.12, 3.77}, {-2.80, 1.66} },
      merchants = { {-4.31, 3.66}, {-6.33, 9.81} },
    },
    ['S104'] = {
      parent = {REALM.england, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = 'e50b90', flip = false, ill = false },
      l_towns = { WesternMap.london },
      s_towns = { WesternMap.northumberland, WesternMap.york, WesternMap.lancashire, WesternMap.pale,
                  WesternMap.shrewsbury, WesternMap.wales, WesternMap.wessex, WesternMap.oxford,
                  WesternMap.essex },
      claims = { {-11.62, 4.19} },
      influence = { {-7.92, 8.34}, {-7.92, 7.96}, {-7.92, 7.59}, {-11.29, -6.27}, {-2.25, 3.81}, {-2.25, 4.19} },
      ships = { {-6.05, 1.26}, {-5.22, 1.80}, {-4.50, 2.56}, {-12.51, -0.17}, {-12.33, -0.81} },
      ships_bot = { {-7.29, 1.35}, {-12.51, -0.17} },
      merchants = { {-4.31, 3.66}, {-6.33, 9.81} },
    },
    ['S204'] = {
      parent = {REALM.england, '1618'},
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = '494116', flip = false, ill = false },
      l_towns = { WesternMap.london, WesternMap.lancashire, WesternMap.wessex, IndiaMap.bengal },
      s_towns = { WesternMap.northumberland, WesternMap.york, WesternMap.pale, WesternMap.ulaidh,
                  WesternMap.mhumhain, WesternMap.shrewsbury, WesternMap.wales, WesternMap.essex, WesternMap.oxford,
                  WesternMap.laighin, WesternMap.perth, WesternMap.lothian, WesternMap.aberdeen,
                  WesternMap.ayrshire, WesternMap.gibraltar, WesternMap.hannover, WesternMap.braunschweig,
                  AmericaMap.canada, AmericaMap.hudsonbay, AmericaMap.greatlakes },
      unrest = { AmericaMap.greatlakes },
      allies = { WesternMap.lisboa, WesternMap.berlin },
      marriages = { },
      claims = { AmericaMap.antilles, AfricaMap.capeofgoodhope },
      influence = { {-10.59, -5.18}, {-10.59, -5.55},  {3.12, 9.41}, {1.07, 5.78}, {-2.03, 3.42}, {-12.78, 2.12}, {-12.40, 2.12} },
      ships = { {-5.32, 1.64}, {-5.18, 5.63}, {-12.46, -0.80}, {-8.03, 10.03}, {-15.05, 11.02}, {-12.18, -6.41}, {-16.59, -3.78}, {-4.44, 2.48} },
      ships_bot = { {-7.27, 1.33}, {-6.12, 5.94}, {-8.95, 9.44}, {-12.19, -0.07}, {-15.50, 11.90} },
      fleet = { 0, 1, 0 },
    },
    ['S205'] = {
      parent = {REALM.england, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = 'e50b90', flip = false, ill = false },
      l_towns = { WesternMap.london },
      s_towns = { WesternMap.northumberland, WesternMap.york, WesternMap.lancashire, WesternMap.pale,
                  WesternMap.shrewsbury, WesternMap.wales, WesternMap.wessex, WesternMap.oxford,
                  WesternMap.essex, WesternMap.picardie },
      allies = { WesternMap.lisboa },
      marriages = { WesternMap.porto },
      claims = { {-11.65, 4.07} },
      influence = { {-7.85, 7.28}, {-7.85, 7.66}, {-7.85, 8.03}, {-1.15, 3.76}, {-1.15, 4.13}, {-10.57, -5.29} },
      merchants = { {-4.31, 3.66}, {-6.36, 9.97} },
      figurines = { {-5.66, 3.66} },
      ships = { {-6.13, 1.38}, {-12.31, -0.74}, {-5.25, 5.69}, {-5.22, 1.80} },
      ships_bot = { {-7.21, 1.36}, {-6.20, 6.06}, {-12.60, -0.10} },
    }
  },
  [REALM.france] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '346c88',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd91cb1', flip = false, ill = false },
      l_towns = { WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon },
      s_towns = { WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.limousin,
                  WesternMap.berry, WesternMap.bourbon, WesternMap.toulouse, WesternMap.montpellier  },
      allies = { WesternMap.lothian, WesternMap.provence },
      claims = { {-5.05, -3.55}, {-6.39, -0.57} },
      influence = { {-3.76, -4.11}, {-3.76, -4.48}, {-9.02, 6.84}, {-9.02, 7.22}, {-2.79, -0.79}, {-0.43, -3.04} },
      merchants = { {-3.48, -0.60}, {-10.34, -2.96} },
      figurines = { {-3.75, 0.72}, {-6.40, -3.59} },
      ships = { {-8.91, -2.66}, {-2.61, -5.52} },
      ships_bot = { {-8.89, -1.89}, {-2.68, -4.92} },
      army1 = { 2, 1, 0 },
      army2 = { 1, 0, 0 },
      events = {{'404-2', 1}, {'404-1', 1}, {'304-2', 1}, {'304-1', 1}, {'204-2', 1}, {'204-1', 1}},
      capital = WesternMap.paris
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '346c88',
      religion = RELIGION.counter_reformed,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd91cb1', flip = true, ill = false },
      l_towns = { WesternMap.paris, WesternMap.nantes, WesternMap.champagne, WesternMap.bourgogne, WesternMap.lyon,
                  WesternMap.provence, WesternMap.bordeaux },
      s_towns = { WesternMap.picardie, WesternMap.caux, WesternMap.normandie, WesternMap.rennes, WesternMap.maine,
                  WesternMap.berry, WesternMap.orleans, WesternMap.anjou, WesternMap.saintonge, WesternMap.bourbon,
                  WesternMap.poitou, WesternMap.limousin, WesternMap.montpellier, WesternMap.toulouse, WesternMap.armagnac },
      marriages = { WesternMap.madrid },
      claims = { {-2.13, -1.99}, {-3.80, 0.20}, AmericaMap.newengland, AmericaMap.canada},
      influence = { {3.09, 8.69}, {-8.79, 6.93}, {-0.39, -0.30}, {-1.25, -3.41}, {-12.78, 1.50}, {-12.40, 1.50}, },
      merchants = { {-3.74, -0.52}, {-10.34, -2.96} },
      figurines = { {-2.99, 0.26}, 'none', 'none', {-9.13, -0.90} },
      ships = { {-2.55, -5.64}, {-8.85, -2.68}, {-11.95, -0.23}, {-14.26, 11.04} },
      ships_bot = { {-2.90, -4.94}, {-8.84, -1.88}, {-14.39, 11.77}, {-12.40, -0.04} },
      army1 = { 2, 1, 1 },
      fleet = { 0, 1, 0 },
      capital = WesternMap.paris
    },
    ['S103'] = {
      parent = {REALM.france, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '493690', flip = false, ill = false },
      l_towns = { WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.bourgogne,
                  WesternMap.lyon, WesternMap.provence, WesternMap.bordeaux },
      s_towns = { WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.anjou,
                  WesternMap.limousin, WesternMap.berry, WesternMap.bourbon, WesternMap.toulouse,
                  WesternMap.montpellier, WesternMap.caux, WesternMap.normandie, WesternMap.maine,
                  WesternMap.picardie, WesternMap.artois },
      vassals = { WesternMap.rennes, WesternMap.nantes },
      allies = { WesternMap.lothian },
      marriages = { WesternMap.nantes },
      claims = { },
      core = { {-5.05, -3.55}, {-6.39, -0.57} },
      influence = { {-5.54, 0.35}, {1.69, -3.98}, {-9.02, 6.84}, {-9.02, 7.22}, {-2.79, -0.79}, {-0.43, -3.04} },
      merchants = { {-3.74, -0.52}, {-10.34, -2.96} },
      figurines = { {-3.70, 0.41} },
      army1 = { 2, 1, 0 },
      army2 = 0,
    },
    ['S104'] = {
      parent = {REALM.france, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '57c370', flip = false, ill = false },
      l_towns = { WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon,
                  WesternMap.bordeaux, WesternMap.bourgogne, WesternMap.provence, },
      s_towns = { WesternMap.anjou, WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, 
                  WesternMap.limousin, WesternMap.berry, WesternMap.bourbon, WesternMap.toulouse,
                  WesternMap.montpellier, WesternMap.normandie, WesternMap.caux, WesternMap.maine,
                  WesternMap.picardie},
      vassals = { WesternMap.milano, WesternMap.milano, WesternMap.cremona, WesternMap.parma, WesternMap.rennes, WesternMap.nantes  },
      allies = { WesternMap.lothian },
      marriages = { WesternMap.nantes },
      claims = { },
      core = { {-5.05, -3.55}, {-6.73, 0.58} },
      influence = { {-8.41, -0.08}, {-8.41, 0.29}, {1.69, -3.98}, {-9.02, 6.84}, {-0.40, -3.42}, {-0.40, -3.05}, {-2.36, -0.67} },
      merchants = { {-10.34, -2.96}, {-1.49, -6.09} },
      figurines = { {-1.70, -3.90} },
      ships = { {-8.89, -2.68}, {-2.60, -5.61}, {-11.47, -0.73}, {-1.78, -5.57} },
      ships_bot = { {-9.05, -1.85}, {-11.09, -0.16},{-2.89, -4.90} },
      army1 = { 2, 0, 0 },
      army2 = 0,
    },
    ['S105'] = {
      parent = {REALM.france, '1618'},
      marriages = { WesternMap.burgos },
    },
    ['S106'] = {
      parent = {REALM.france, '1444'},
      bot_power = 12,
      events = {{'304-2', 1}, {'304-1', 1}, {'204-2', 1}, {'204-1', 1}, {'104-2', 1}, {'104-1', 1}},
    },
    ['S203-6P'] = {
      parent = {REALM.france, '1618'},
      influence = { {-1.25, -3.41}, {-12.78, 1.50}, {-12.40, 1.50}, },
      allies = { WesternMap.venezia },
      marriages = { WesternMap.burgos },
    },
    ['S204'] = {
      parent = {REALM.france, '1618'},
      religion = RELIGION.catholic,
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = '5af16f', flip = false, ill = false },
      l_towns = { WesternMap.paris, WesternMap.nantes, WesternMap.champagne, WesternMap.bourgogne,
                  WesternMap.lyon, WesternMap.provence, WesternMap.bordeaux, WesternMap.lorraine },
      s_towns = { WesternMap.picardie, WesternMap.caux, WesternMap.normandie, WesternMap.rennes,
                  WesternMap.maine, WesternMap.berry, WesternMap.orleans, WesternMap.anjou,
                  WesternMap.saintonge, WesternMap.bourbon, WesternMap.poitou, WesternMap.limousin,
                  WesternMap.montpellier, WesternMap.toulouse, WesternMap.armagnac, WesternMap.artois,
                  WesternMap.franchecomte, WesternMap.corsica, WesternMap.sundgau },
      allies = { WesternMap.madrid, AmericaMap.virginia },
      marriages = {WesternMap.burgos },
      claims = { {-2.13, -1.99}, {-2.25, 1.36} },
      core = { {-3.78, 0.14} },
      influence = { {-0.39, -0.30}, {1.05, -3.21}, {-2.42, -0.70}, {1.45, 5.80}, {3.12, 8.47}, {-2.11, 3.91} },
      ships = { {-2.55, -5.64}, {1.80, -7.88}, {-8.85, -2.68} },
      ships_bot = { {-9.13, -0.90}, {-2.87, -4.94}, {1.40, -7.05} },
    },
    ['S205'] = {
      parent = {REALM.france, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '57c370', flip = false, ill = false },
      l_towns = { WesternMap.bordeaux, WesternMap.orleans, WesternMap.paris, WesternMap.champagne,
                  WesternMap.lyon, WesternMap.bourgogne, WesternMap.provence },
      s_towns = { WesternMap.saintonge, WesternMap.poitou, WesternMap.anjou, WesternMap.armagnac,
                  WesternMap.limousin, WesternMap.berry, WesternMap.bourbon, WesternMap.toulouse,
                  WesternMap.montpellier, WesternMap.maine, WesternMap.normandie, WesternMap.caux },
      vassals = { WesternMap.milano, WesternMap.milano, WesternMap.cremona, WesternMap.nantes, WesternMap.rennes },
      claims = { {-3.67, 0.59} },
      core = { {-5.05, -3.55}, {-6.39, -0.57}, },
      influence = { {-8.48, 0.28}, {-8.48, -0.10}, {-8.97, 6.94}, {-8.97, 7.32}, {-0.42, -3.27}, {-2.04, -0.15}, {0.98, -4.33} },
      merchants = { {-10.34, -2.96}, {-1.49, -6.15} },
      figurines = { {-2.99, 0.28}, {-6.40, -3.59} },
      ships = { {-8.94, -2.48}, {-2.61, -5.52} },
      ships_bot = { {-2.95, -4.95}, {-9.28, -2.06} },
      army1 = { 2, 1, 1 },
      army2 = { 2, 0, 0 },
    },
    ['S207'] = {
      parent = {REALM.france, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '57c370', flip = false, ill = false },
      bot_power = 5
    },
  },
  [REALM.muscovy] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '71e056',
      religion = RELIGION.orthodox,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd0a94f', flip = false, ill = false },
      s_towns = { EasternMap.moskva, EasternMap.rzhev, EasternMap.vladimir, EasternMap.kasimov, EasternMap.murom,
                  EasternMap.suzdal, EasternMap.vologda, EasternMap.galich, EasternMap.viatka, EasternMap.nizhnynovgorod },
      vassals = { EasternMap.beloozero, EasternMap.yaroslavl, EasternMap.pskov, EasternMap.perm },
      marriages = { EasternMap.tver, EasternMap.odoyev },
      influence = { {16.13, 3.70}, {16.13, 4.07}, {15.75, 6.33}, {15.57, 7.53}, {13.86, 7.32} },
      merchants = { {20.02, 3.59}, {12.38, 6.69} },
      figurines = { {15.17, 3.99} },
      army1 = { 2, 1, 0 },
      capital = EasternMap.moskva
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '71e056',
      religion = RELIGION.orthodox,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd0a94f', flip = false, ill = true },
      l_towns = { EasternMap.moskva, CentralAsiaMap.volga },
      s_towns = {  EasternMap.tver, EasternMap.ryazan, EasternMap.odoyev, EasternMap.yaroslavl, EasternMap.suzdal, EasternMap.vladimir,
                    EasternMap.murom, EasternMap.perm, EasternMap.viatka, EasternMap.nizhnynovgorod, EasternMap.novgorod, EasternMap.pskov,
                    EasternMap.beloozero, EasternMap.vologda, EasternMap.arkhangelsk, EasternMap.tambov, EasternMap.saratov, EasternMap.astrakhan,
                    EasternMap.sarai, EasternMap.ladoga, EasternMap.olonets, CentralAsiaMap.tyumen, CentralAsiaMap.ural, CentralAsiaMap.westsiberia },
      vassals = { EasternMap.majar },
      truces = { WesternMap.stockholm },
      claims = { {16.17, 0.83}, {12.53, 2.28}},
      influence = { {14.56, -1.84}, {17.46, -3.07} },
      merchants = { {20.48, 3.46}, {12.44, 6.72} },
      figurines = { {14.27, 5.46} },
      army1 = { 2, 1, 1 },
      capital = EasternMap.moskva
    },
    ['S204'] = {
      parent = {REALM.muscovy, '1618'},
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = '21aad5', flip = false, ill = true },
      l_towns = { EasternMap.moskva },
      s_towns = { EasternMap.tver, EasternMap.odoyev, EasternMap.ryazan, EasternMap.murom,
                  EasternMap.suzdal, EasternMap.vladimir, EasternMap.yaroslavl, EasternMap.novgorod,
                  EasternMap.pskov, EasternMap.neva, EasternMap.ladoga, EasternMap.olonets,
                  EasternMap.arkhangelsk, EasternMap.beloozero, EasternMap.vologda, EasternMap.perm,
                  EasternMap.nizhnynovgorod, EasternMap.viatka, EasternMap.kazan, EasternMap.cernigovas,
                  EasternMap.poltava, EasternMap.tambov, EasternMap.saratov, EasternMap.sarai,
                  EasternMap.astrakhan, EasternMap.reval, EasternMap.livland, EasternMap.riga,
                  EasternMap.polockas, EasternMap.smolenskas, EasternMap.kijevas, EasternMap.zaporoze },
      vassals = { EasternMap.edisanas, EasternMap.majar },
      unrest = { EasternMap.polockas, EasternMap.edisanas, EasternMap.majar },
      truces = { },
      claims = { {12.53, 2.28}, {16.64, -2.46} },
      core = { {13.24, 9.75} },
      influence = { {1.46, 5.34}, {3.03, 8.89}, {14.30, -1.88}, {17.32, -3.05} },
      merchants = { {12.44, 6.72}, {20.58, -2.39} },
      ships = { {6.76, 9.12} },
      ships_bot = { {5.83, 9.74} },
    }
  },
  [REALM.ottomans] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '58331e',
      religion = RELIGION.muslim,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'b0bdfb', flip = false, ill = false },
      l_towns = { EasternMap.edirne, EasternMap.hudavendigar_1444 },
      s_towns = { EasternMap.selanik, EasternMap.yanya, EasternMap.sofya, EasternMap.silistre, EasternMap.ankara,
                  EasternMap.izmir, EasternMap.kutahya, EasternMap.mentese, EasternMap.teke,
                  EasternMap.amasya, EasternMap.sivas },
      claims = { {9.17, -6.26} },
      influence = { {15.10, -7.49}, {15.10, -7.86}, {17.46, -8.22}, {15.82, -5.96}, {10.13, -4.86}, {6.43, -5.45} },
      merchants = { {12.99, -5.26}, {11.82, -9.52} },
      figurines = { {7.91, -5.78}, 'none', 'none', {9.76, -9.05} },
      ships = { {9.39, -7.21} },
      ships_bot = { {9.76, -9.05} },
      army1 = { 2, 1, 0 },
      fleet = { 0, 0, 3 },
      events = {{'406-2', 1}, {'406-1', 1}, {'306-2', 1}, {'306-1', 1}, {'206-2', 1}, {'206-1', 1}},
      capital = EasternMap.edirne
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '58331e',
      religion = RELIGION.muslim,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'b0bdfb', flip = true, ill = false },
      l_towns = { EasternMap.constantinople_1618 },
      s_towns = { EasternMap.edirne, EasternMap.selanik, EasternMap.kastamonu, EasternMap.ankara, EasternMap.hudavendigar_1618, EasternMap.teke,
                  EasternMap.mentese, EasternMap.izmir, EasternMap.yanya, EasternMap.morea, EasternMap.athina, EasternMap.beograd,
                  EasternMap.kosovo, EasternMap.albania, WesternMap.pest, EasternMap.szabolcs, EasternMap.naxos, EasternMap.rhodes,
                  EasternMap.caffa, EasternMap.azov, EasternMap.basarabia, WesternMap.bosnia, EasternMap.sofya, EasternMap.silistre },
      vassals = { EasternMap.torda, EasternMap.hunyad, EasternMap.tirgoviste, EasternMap.buzau, EasternMap.suceava,
                  EasternMap.crimea, EasternMap.kyzylyar, WesternMap.ragusa },
      allies = { EasternMap.qahirah },
      claims = { {7.66, -0.25}, {9.33, -9.82} },
      influence = { {14.27, -1.89}, {14.64, -1.89}, {9.95, -2.50}, {9.77, -5.09} },
      merchants = { {12.97, -5.07}, {6.14, -8.14} },
      figurines = { {7.79, -5.92} ,'none', 'none', {9.73, -6.42} },
      ships = { {9.34, -7.17}, {12.58, -3.87} },
      ships_bot = { {9.73, -6.42}, {13.28, -3.06} },
      army1 = { 2, 1, 1 },
      fleet = { 0, 0, 3 },
      capital = EasternMap.constantinople_1618
    },
    ['S205'] = {
      parent = {REALM.ottomans, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '7187b7', flip = false, ill = false },
      l_towns = { EasternMap.edirne, EasternMap.constantinople_1444, EasternMap.hudavendigar_1444 },
      s_towns = { EasternMap.selanik, EasternMap.kastamonu, EasternMap.athina, EasternMap.morea, EasternMap.yanya,
                  EasternMap.sofya, EasternMap.silistre, EasternMap.ankara, EasternMap.izmir, EasternMap.kutahya,
                  EasternMap.mentese, EasternMap.teke, EasternMap.albania, EasternMap.kosovo, EasternMap.smederevo,
                  WesternMap.bosnia, EasternMap.karaman, EasternMap.konya},
      vassals = { EasternMap.tirgoviste, EasternMap.buzau },
      allies = { WesternMap.tlemcen },
      claims = { },
      core = { {9.17, -6.26} },
      influence = { {4.67, -4.65}, {-6.50, -11.03}, {-6.13, -11.03} },
      merchants = { {12.99, -5.26}, {11.82, -9.52} },
      figurines = { {7.91, -5.78}, 'none', 'none', {9.76, -9.05} },
      ships = { {9.39, -7.21}, {12.63, -3.81} },
      ships_bot = { {9.76, -9.05}, {13.21, -3.01} },
      army1 = { 3, 1, 1 },
      fleet = { 0, 0, 3 }
    },
  },
  [REALM.poland] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'aca61e',
      religion = RELIGION.catholic,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'fe981e', flip = false, ill = false },
      l_towns = { EasternMap.krakow},
      s_towns = { EasternMap.lublin, EasternMap.sandomierz, WesternMap.poznan, WesternMap.kalisz,
                  WesternMap.sieradz, EasternMap.lwow, EasternMap.podole },
      vassals = { EasternMap.warszawa, EasternMap.suceava, EasternMap.basarabia },
      marriages = { EasternMap.vilnius },
      influence = { {10.76, 4.60}, {10.76, 4.23}, {8.21, 2.07}, {9.09, 0.96}, {7.86, -0.32}, {4.25, 1.25} },
      merchants = { {6.85, 1.68}, {11.29, 1.32} },
      figurines = { {6.90, 2.97} },
      events = {{'407-2', 1}, {'407-1', 1}, {'307-2', 1}, {'307-1', 1}, {'207-2', 1}, {'207-1', 1}},
      capital = EasternMap.krakow
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'aca61e',
      religion = RELIGION.counter_reformed,
      ruler = {['deck_guid'] = Setup_Card_Deck_GUID, ['card_guid'] = 'fe981e', ['flip'] = true, ['ill'] = false },
      l_towns = { EasternMap.warszawa },
      s_towns = { EasternMap.lublin, EasternMap.krakow, EasternMap.voluine, EasternMap.lwow, EasternMap.vilnius, EasternMap.zemaitija,
                  EasternMap.polockas, EasternMap.minskas, EasternMap.smolenskas, EasternMap.kijevas, EasternMap.podole, EasternMap.poltava,
                  EasternMap.cernigovas, WesternMap.danzig, WesternMap.kulm, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, 
                  EasternMap.livland, EasternMap.riga },
      vassals = { EasternMap.goldingen, EasternMap.edisanas, EasternMap.zaporoze },
      influence = { {14.27, -1.37}, {10.28, 7.52}, {10.40, -1.38} },
      merchants = { {11.43, 1.21}, {7.28, 1.45} },
      figurines = { {7.74, 0.68} },
      ships = { {5.23, 5.38} },
      ships_bot = {5.52, 6.24},
      army1 = { 2, 1, 1 },
      capital = EasternMap.warszawa
    }
  },
  [REALM.denmark] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3ff171',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '367f59', flip = false, ill = false },
      l_towns = { WesternMap.kobenhavn, WesternMap.lund },
      s_towns = { WesternMap.gotland, WesternMap.vestjylland, WesternMap.ostjylland },
      vassals = { WesternMap.slesvig, WesternMap.holstein },
      allies = { WesternMap.stockholm, WesternMap.akershus },
      marriages = { WesternMap.ostergotland, WesternMap.borgarsysla },
      influence = { {4.20, 6.95}, {4.20, 6.57}, {0.59, 9.24}, {0.59, 8.87}, {-0.29, 8.62}, {3.27, 11.02},
                    {3.16, 8.95}, {0.25, 6.35}, {2.98, 3.96} },
      merchants = { {3.52, 5.19}, {-5.65, 10.38} },
      figurines = { {-0.05, 7.05} },
      ships = { {-3.82, 7.27}, {1.62, 7.72}},
      ships_bot = { {-3.84, 7.87}, {1.27, 8.19} },
      capital = WesternMap.kobenhavn
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3ff171',
      religion = RELIGION.protestant,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '367f59', flip = true, ill = false },
      l_towns = { WesternMap.kobenhavn, WesternMap.lund },
      s_towns = { WesternMap.gotland, WesternMap.vestjylland, WesternMap.ostjylland, WesternMap.slesvig, WesternMap.borgarsysla,
                  WesternMap.akershus, WesternMap.bergenhus, WesternMap.trondheim},
      vassals = { WesternMap.holstein },
      allies = { WesternMap.bremen, WesternMap.braunschweig },
      marriages = { WesternMap.london },
      influence = { {1.04, 3.39}, {1.42, 3.39}, {2.00, 1.80}, {2.38, 1.80}, {2.01, 4.03}, {0.88, 6.96} },
      merchants = { {4.34, 5.52}, {-5.65, 10.38} },
      figurines = { {1.19, 5.74} },
      ships = { {1.58, 7.60}, {-1.07, 7.54}, {6.03, 5.45}, {1.64, 7.07} },
      ships_bot = { {1.67, 4.85}, {4.25, 5.92}, {-0.63, 7.52} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.kobenhavn
    },
    ['S106'] = {
      parent = {REALM.denmark, '1444'},
      setup_bag_guid = '10b4da',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '367f59', flip = false, ill = false },
    },
    ['S202'] = {
      parent = {REALM.denmark, '1444'},
      setup_bag_guid = '10b4da',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '367f59', flip = false, ill = false },
    },
    ['S207'] = {
      parent = {REALM.denmark, '1444'},
      setup_bag_guid = '10b4da',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '367f59', flip = false, ill = false },
      events = {{'408-2', 1}, {'408-1', 1}, {'308-2', 1}, {'308-1', 1}, {'208-2', 1}, {'208-1', 1}},
    },
  },
  [REALM.sweden] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'cd6b2c',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'f1cde9', flip = false, ill = false },
      s_towns = { WesternMap.stockholm, WesternMap.bergslagen, WesternMap.ostergotland, WesternMap.halsingland,
                  EasternMap.osterbotten, EasternMap.abo, EasternMap.nyland },
      allies = { WesternMap.kobenhavn, },
      marriages = { {1.50, 5.33}, WesternMap.akershus },
      influence = { {3.51, 11.44}, {3.51, 11.06}, {0.75, 9.20}, {0.69, 7.00}, {4.34, 4.16} },
      merchants = { {7.15, 8.32}, {4.04, 5.58} },
      figurines = { {3.05, 8.87} },
      ships = { {5.16, 5.42} },
      ships_bot = {{5.13, 6.11} },
      capital = WesternMap.stockholm
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'cd6b2c',
      religion = RELIGION.protestant,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'f1cde9', flip = true, ill = false },
      l_towns = { WesternMap.stockholm },
      s_towns = { WesternMap.bergslagen, WesternMap.ostergotland, WesternMap.halsingland, EasternMap.osterbotten,
                  EasternMap.abo, EasternMap.nyland, EasternMap.neva, EasternMap.reval },
      claims = { {10.12, 7.11}, {5.21, 4.57} },
      influence = { {-4.19, 0.79}, {1.24, 3.57}, {1.18, 1.51}, {2.83, 4.00}},
      truces = { EasternMap.moskva },
      merchants = { {7.15, 8.32}, {4.04, 5.58} },
      figurines = { {3.05, 8.87} },
      ships = { {5.16, 5.42}, {6.79, 9.20}, {1.97, 6.65} },
      ships_bot = { {3.15, 5.53}, {5.13, 6.11}, {5.94, 9.52} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.stockholm
    }
  },
  [REALM.portugal] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '5cf225',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd431eb', flip = false, ill = false },
      l_towns = { WesternMap.lisboa },
      s_towns = { WesternMap.porto, WesternMap.beira, WesternMap.madeira, WesternMap.ceuta },
      allies = { WesternMap.london },
      marriages = { WesternMap.oxford },
      claims = { AfricaMap.goldcoast },
      influence = { {-4.90, -5.64}, {-4.90, -5.27}, {2.92, -5.32}, {-11.25, 2.10} },
      merchants = { {-10.28, -9.07}, {-9.97, -2.50} },
      figurines = { {-10.33, -5.08} },
      ships = { {-12.99, -6.30}, {-12.20, -6.30} },
      ships_bot = { {-12.21, -5.78} },
      capital = WesternMap.lisboa
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '5cf225',
      religion = RELIGION.catholic,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd431eb', flip = true, ill = false },
      l_towns = { WesternMap.lisboa },
      s_towns = { WesternMap.porto, WesternMap.beira, WesternMap.tangiers, WesternMap.ceuta, WesternMap.madeira,
                  AmericaMap.pernambuco, AmericaMap.bahia, AmericaMap.riodejaneiro, AfricaMap.goldcoast, AfricaMap.angola,
                  IndiaMap.hormuz, IndiaMap.goa, FarEastMap.malacca },
      vassals = { AfricaMap.kongo, AfricaMap.kongo, AfricaMap.kilwa },
      allies = { WesternMap.madrid },
      marriages = { WesternMap.burgos },
      claims = { },
      influence = { {-6.69, 4.29}, {-6.69, 3.92}, {-3.16, -0.41}, {1.92, -5.74} },
      merchants = { {-10.28, -9.07}, {-17.29, 5.39}, {-17.44, -4.65}},
      ships = { {-12.99, -6.30}, {-14.57, 5.13}, {-17.43, 0.62}, {-14.31, 1.33}, {-16.14, -4.24}, {-18.27, -10.96}, {-12.20, 1.07, -6.30} },
      ships_bot = { {-12.08, -5.77}, {-14.07, 6.28}, {-17.42, 1.56}, {-14.14, -0.66}, {-14.46, -4.66}, {-16.62, -10.44} },
      army1 = { 2, 1, 0 },
      capital = WesternMap.lisboa
    },
    ['S103'] = {
      parent = {REALM.portugal, '1444'},
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = 'b6dc3b', flip = false, ill = false },
      s_towns = { WesternMap.porto, WesternMap.beira, WesternMap.madeira, WesternMap.ceuta, WesternMap.tangiers },
      influence = { {-4.90, -5.64}, {-4.90, -5.27}, {-9.09, -10.39}, {2.92, -5.32} },
    }
  },
  [REALM.netherlands] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '5ffa0b',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '331190', flip = false, ill = false },
      s_towns = { WesternMap.amsterdam, WesternMap.zeeland },
      allies = { WesternMap.bourgogne },
      marriages = { WesternMap.franchecomte },
      influence = { {-2.52, 2.61}, {-2.52, 2.99}, {-2.21, 1.28}, {-2.21, 1.66},
                    {0.33, 3.38}, {-0.93, 2.96}, {-2.03, 0.16}, {-4.00, 0.06}},
      merchants = { {-3.44, 3.43}, {-5.50, 9.83} },
      ships = { {-4.43, 2.63}, {-2.93, 7.41}},
      ships_bot = { {-2.90, 7.93}, {-3.73, 2.70} },
      army1 = 0,
      capital = WesternMap.amsterdam
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '5ffa0b',
      religion = RELIGION.protestant,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '331190', flip = true, ill = false },
      l_towns = { WesternMap.amsterdam },
      s_towns = { WesternMap.zeeland, WesternMap.breda, WesternMap.gelre, WesternMap.friesland,
                  AmericaMap.guyana, FarEastMap.moluccas, FarEastMap.timor },
      allies = { WesternMap.london },
      claims = { AfricaMap.capeofgoodhope },
      core = { {-2.35, 1.54} },
      influence = { {0.16, 6.46}, {0.14, 3.22}, {-0.95, 3.02}, {-2.01, 0.16} },
      merchants = { {-3.48, 3.40}, {-14.59, 9.99}, {-17.73, -10.77} },
      figurines = { {-2.33, 4.10} },
      ships = { {-4.40, 2.55}, {-2.91, 7.21}, {-11.50, -0.79}, {-14.22, 9.37},
                {-18.34, 0.06}, {-14.65, -0.11}, {-16.21, -4.75}, {-18.28, -10.94} },
      ships_bot = { {-4.76, 2.12}, {-2.90, 7.86}, {-11.01, -0.22}, {-15.56, 8.99},
                    {-18.34, -0.51}, {-14.48, -0.51}, {-14.45, -4.73}, {-14.38, -8.74} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.amsterdam
    },
    ['S102B'] = {
      parent = {REALM.netherlands, '1444'},
      s_towns = { WesternMap.brugge, WesternMap.gent },
    },
    ['S102C'] = {
      parent = {REALM.netherlands, '1444'},
      s_towns = { WesternMap.antwerpen, WesternMap.breda },
    },
    ['S105'] = {
      parent = {REALM.netherlands, '1618'},
      influence = { {0.16, 6.46}, {0.14, 3.22}, {-0.95, 3.02}, {-2.01, 0.16}, {-6.75, 3.84}, {-6.75, 4.21} },
    },
  },
  [REALM.papal] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'dace1d',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '429505', flip = false, ill = true },
      l_towns = { WesternMap.roma },
      s_towns = { WesternMap.ancona, WesternMap.avignon },
      influence = { {2.72, -5.29}, {3.09, -5.29}, {-0.94, -3.82}, {-0.56, -3.82}, {2.92, -2.37}, {3.43, -5.89},
      {-5.43, -5.16}, {-2.73, -1.93}, {-2.33, 0.88}, {-0.46, 1.62}, {-2.03, -0.23}, {1.00, -0.01} },
      merchants = { {-1.09, -6.50}, {5.21, -7.72} },
      figurines = { {2.28, -4.77} },
      army1 = { 1, 0 ,0 },
      capital = WesternMap.roma
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'dace1d',
      religion = RELIGION.counter_reformed,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '429505', flip = true, ill = true },
      l_towns = { WesternMap.roma },
      s_towns = { WesternMap.ancona, WesternMap.ferrara, WesternMap.avignon },
      influence = { {2.72, -5.29}, {3.09, -5.29}, {-0.94, -3.82}, {-0.56, -3.82}, {2.92, -2.37}, {3.43, -5.89},
      {-2.73, -1.93}, {1.00, -0.01}, {3.24, -9.34} },
      merchants = { {-1.09, -6.50}, {5.33, -7.68} },
      figurines = { {2.15, -5.16} },
      ships = { {2.60, -7.82}, {5.14, -5.87} },
      ships_bot = { {2.70, -7.25}, {6.51, -7.04} },
      army1 = { 2, 0, 1 },
      capital = WesternMap.roma
    },
    ['S205'] = {
      parent = {REALM.papal, '1444'},
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '429505', flip = false, ill = true },
      l_towns = { WesternMap.roma },
      s_towns = { WesternMap.ancona, WesternMap.avignon, WesternMap.parma },
      influence = { {2.72, -5.29}, {3.09, -5.29}, {-0.94, -3.82}, {-0.56, -3.82}, {2.92, -2.37}, {3.43, -5.89},
      {-2.73, -1.93}, {-0.46, 1.62}, {-0.43, 0.26}, {1.00, -0.01}, {4.15, -3.24} },
      merchants = { {-1.09, -6.50}, {5.33, -7.68} },
      figurines = { {2.40, -6.17}, 'none', 'none', {5.24, -9.75} },
      ships = { {2.73, -7.83}},
      ships_bot = { {5.24, -9.75} },
      fleet = { 0, 0 ,2 },
    },
  },
  [REALM.brandenburg] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3e2e9b',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'bcaf62', flip = false, ill = false },
      s_towns = { WesternMap.berlin, WesternMap.potsdam, WesternMap.altmark },
      influence = { {4.27, 4.36}, {4.27, 3.98}, {5.68, 3.88}, {0.33, 4.65},
                    {1.29, 3.56}, {-0.31, 2.09}, {2.87, 0.60} },
      merchants = { {0.46, 0.80}, {3.18, -0.96} }, --Saxony, Wien
      figurines = { {4.25, 3.34} },
      army1 = { 1, 0, 0 },
      capital = WesternMap.berlin
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3e2e9b',
      religion = RELIGION.protestant,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'bcaf62', flip = true, ill = false },
      s_towns = { WesternMap.berlin, WesternMap.potsdam, WesternMap.altmark, WesternMap.neumark,
                  WesternMap.kleve, EasternMap.konigsberg, EasternMap.osterode},
      allies = { WesternMap.pfalz },
      claims = { {4.99, 4.72} },
      influence = { {1.20, 3.56}, {1.20, 3.18}, {-0.29, -0.41}, {-0.29, -0.79}, {-0.31, 2.09}, {2.34, 1.50}, {4.27, 3.98} },
      figurines = { {3.94, 2.69} },
      ships = { {6.71, 5.40} },
      ships_bot = { {7.00, 6.74} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.berlin
    },
    ['S106'] = {
      parent = {REALM.brandenburg, '1444'},
      influence = { {4.27, 4.36}, {4.27, 3.98}, {5.68, 3.88}, {1.29, 3.56}, {-0.31, 2.09}, {2.86, 0.78} },
    },
    ['S204'] = {
      parent = {REALM.brandenburg, '1618'},
      ruler = { deck_guid = Event_Deck_GUIDs.age4r, card_guid = 'c32183', flip = false, ill = false },
      l_towns = { WesternMap.berlin, WesternMap.potsdam, WesternMap.magdeburg, WesternMap.silesia },
      s_towns = { WesternMap.altmark, WesternMap.neumark, WesternMap.kleve, WesternMap.bremen,
                  WesternMap.stettin, WesternMap.koslin, WesternMap.kulm, WesternMap.danzig,
                  EasternMap.konigsberg, EasternMap.osterode },
      allies = { WesternMap.london },
      claims = { {6.44, 2.27} },
      influence = { {5.15, 4.11}, {2.87, 2.29}, {1.20, 3.66}, {-0.79, 2.07} },
      merchants = { {0.76, 1.38}, {4.07, 5.52} },
      figurines = { {3.98, 2.63} },
      ships = { {5.18, 5.43}, {2.02, 6.60} },
      ships_bot = { {5.52, 6.10}, {1.29, 8.19} },
      extra_manpower = 2,
    },
    ['S205'] = {
      parent = {REALM.brandenburg, '1444'},
      religion = RELIGION.protestant,
      ruler = {deck_guid = Event_Deck_GUIDs.age1r, card_guid = '58acdf', flip = false, ill = false },
      s_towns = { WesternMap.berlin, WesternMap.potsdam, WesternMap.altmark },
      influence = { {4.27, 4.36}, {4.27, 3.98}, {5.68, 3.88}, {0.33, 4.65},
                    {1.29, 3.56}, {-0.31, 2.09}, {2.86, 0.78} },
      merchants = { {0.91, 0.93}, {6.93, 1.58} },
    },
  },
  [REALM.venice] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'cfd834',
      ruler = {['deck_guid'] = Setup_Card_Deck_GUID, card_guid = '962437', flip = false, ill = true },
      l_towns = { WesternMap.venezia },
      s_towns = { WesternMap.verona, WesternMap.treviso, WesternMap.brescia, WesternMap.zara, EasternMap.creta },
      vassals = { EasternMap.naxos },
      allies = { EasternMap.albania, EasternMap.rhodes },
      influence = { {0.48, -2.51}, {2.85, -5.34}, {4.76, -4.57}, {8.22, -7.26}, {9.34, -9.72}, {13.10, -11.95} },
      merchants = { {5.63, -7.48}, {11.21, -9.82} },
      figurines = { {3.90, -2.70}, 'none', 'none', {3.16, -4.16} },
      ships = { {5.07, -5.87}, {7.00, -9.93}, {10.17, -7.17} },
      ships_bot = { {3.16, -4.16}, {9.11, -10.74}, {10.02, -7.70} },
      fleet = { 0, 0, 2 },
      capital = WesternMap.venezia
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'cfd834',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '962437', flip = true, ill = true },
      l_towns = { WesternMap.venezia },
      s_towns = { WesternMap.verona, WesternMap.treviso, WesternMap.brescia, WesternMap.zara, EasternMap.creta },
      vassals = { },
      allies = { },
      influence = { {0.48, -2.51}, {2.85, -5.34}, {3.12, -9.38} },
      merchants = { {5.63, -7.48}, {12.20, -4.84}, {11.21, -9.82}, },
      figurines = { {3.90, -2.70}, },
      ships = { {4.17, -5.45}, {8.59, -9.96}, {10.17, -7.31} },
      ships_bot = { {3.16, -4.16}, {8.59, -10.42}, {9.96, -7.78} },
      army1 = { 2, 1, 1 },
      fleet = 0,
      capital = WesternMap.venezia
    },
    ['S203-6P'] = {
      parent = {REALM.venice, '1618'},
      allies = { WesternMap.picardie },
      figurines = { {3.90, -2.70}, 'none', 'none', {3.16, -4.16} },
      fleet = { 0, 0, 3 }
    },
    ['S206'] = {
      parent = {REALM.venice, '1444'},
      extra_manpower = 1,
    },
  },
  [REALM.mamluks] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '623de8',
      religion = RELIGION.muslim,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'fb0d8b', flip = false, ill = true },
      l_towns = { EasternMap.qahirah, EasternMap.halab, AfricaMap.upperegypt },
      s_towns = { EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.dumyat, EasternMap.fayyum, EasternMap.gazzah,
                  EasternMap.jaffa, EasternMap.alquds, EasternMap.tarabulus, EasternMap.dimashq },
      vassals = { IndiaMap.hejaz },
      influence = { {14.74, -7.86}, {14.74, -7.49}, {17.33, -7.61}, {1.84, -12.10} },
      merchants = { {12.09, -10.28}, {16.53, -10.20} },
      figurines = { {12.43, -11.92}, 'none', 'none', {7.23, -8.83} },
      ships = { {7.76, -9.86} },
      ships_bot = { {7.23, -8.83} },
      army1 = { 2, 1, 0 },
      fleet = { 0, 0, 2 },
      capital = EasternMap.qahirah
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'fb0d8b', flip = true, ill = false },
      l_towns = { EasternMap.qahirah, EasternMap.halab, AfricaMap.upperegypt },
      s_towns = { EasternMap.iskandariyya, EasternMap.dumyat, EasternMap.gazzah, EasternMap.jaffa, EasternMap.alquds,
                  EasternMap.dimashq, EasternMap.tarabulus, EasternMap.adana, EasternMap.karaman, 
                  EasternMap.amasya, EasternMap.trebizond, EasternMap.erzurum, EasternMap.mush, EasternMap.urfa, EasternMap.mosul,
                  EasternMap.tikrit, EasternMap.kirkuk, EasternMap.baghdad, EasternMap.bangazi, IndiaMap.yemen, EasternMap.cyprus },
      vassals = { WesternMap.tripoli, WesternMap.tunis, WesternMap.sousse, WesternMap.bizerte, WesternMap.qafsah, WesternMap.qusantinah,
                  WesternMap.mitidja, IndiaMap.basra, IndiaMap.hejaz },
      allies = { EasternMap.constantinople_1618 },
      claims = { {-3.17, -10.30} },
      influence = { {0.15, -10.66}, {-2.20, -10.08}, {1.77, -12.10} },
      merchants = { {12.03, -10.25}, {17.12, -10.27} },
      figurines = { {11.61, -12.15}, 'none', 'none', {7.24, -8.97} },
      ships = { {7.00, -9.90}, {-16.60, -3.91}, },
      ships_bot = { {7.24, -8.97}, {-14.34, -4.03} },
      army1 = { 2, 1, 1 },
      fleet = { 0, 0, 2},
      capital = EasternMap.qahirah
    }
  },
  [REALM.byzantium] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'fec466',
      religion = RELIGION.orthodox,
      coin = 20,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd8862e', flip = false, ill = true },
      l_towns = { EasternMap.constantinople_1444 },
      s_towns = { EasternMap.morea },
      vassals = { EasternMap.athina },
      claims = { {7.99, -5.82}, {8.61, -7.26} },
      influence = { {7.78, -8.38}, {10.50, -9.97}, {14.55, -9.34}, {7.00, -6.76}, {14.75, -6.77}, {18.54, -5.71}, {16.98, -3.14} },
      merchants = { {12.17, -4.85}, {11.25, -9.99}},
      figurines = { {11.14, -4.92} },
      ships = { {14.13, -3.85} },
      ships_bot = { {14.97, -3.87} },
      capital = EasternMap.constantinople_1444
    },
    ['S206'] = {
      parent = {REALM.byzantium, '1444'},
      coin = 20,
    },
  },
  [REALM.ulm] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '5bdbd4',
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = '4ba85c', flip = false, ill = false },
      s_towns = { WesternMap.ulm },
      influence = { {1.04, -0.05}, {1.04, 0.33}, {-0.67, -1.99}, {-0.67, -2.37}, {-2.08, 0.21}, {1.13, 1.54}, {-0.98, 3.01} },
      merchants = { {3.13, -0.84}, {0.63, 0.87}},
      figurines = { {0.30, -0.63} },
      army1 = { 1, 0, 0 },
      capital = WesternMap.ulm
    },
  },
  [REALM.aragon] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3012c6',
      religion = RELIGION.catholic,
      marriages = { WesternMap.navarra, WesternMap.napoli },
      l_towns = { WesternMap.valencia},
      s_towns = { WesternMap.zaragoza, WesternMap.barcelona, WesternMap.baleares, WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina,
      WesternMap.malta, },
      vassals = { WesternMap.napoli, WesternMap.napoli, WesternMap.salerno, WesternMap.bari },
      influence = {
        {-7.35, -5.58}, {-7.35, -5.96}, --Castille
        {-0.43, -3.38}, --Lombardy
        {2.22, -4.69}, --Central Italy
        {3.50, -5.91} --Naples
      },
      merchants = { {-1.87, -6.30}, {-10.93, -9.12} },
      figurines = { {-5.35, -5.09}, 'none', 'none', {1.25, -6.99} }, --Aragon, C. Med.
      ships = { {-1.77, -5.56} }, --Gulf of Lion
      ships_bot = { {-1.77, -5.56}, {-0.82, -7.40}},
      fleet = { 0, 0, 2},
      capital = WesternMap.valencia,
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '3012c6',
      religion = RELIGION.counter_reformed,
      ruler = {deck_guid = Setup_Card_Deck_GUID, card_guid = 'd8862e', flip = true, ill = false },
      l_towns = { WesternMap.valencia, WesternMap.napoli, WesternMap.milano },
      s_towns = { WesternMap.navarra, WesternMap.zaragoza, WesternMap.barcelona, WesternMap.baleares, WesternMap.salerno, WesternMap.bari,
      WesternMap.cremona, WesternMap.franchecomte, WesternMap.luxembourg, WesternMap.namur, WesternMap.artois, WesternMap.brugge,
      WesternMap.antwerpen, WesternMap.gent, WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina, WesternMap.tlemcen, WesternMap.oran },
      unrest = { WesternMap.brugge, WesternMap.antwerpen, WesternMap.gent },
      allies = { WesternMap.madrid},
      influence = { {2.90, -8.74}, {2.12, -5.18}, {-0.44, -3.08}, {-2.31, -0.79}, {-0.95, -0.16}, {-0.13, -7.11} },
      merchants = { {-1.05, -6.63}, {5.22, -8.00}},
      figurines = { {3.33, -5.93} },
      ships = { {-4.34, -8.21}, {1.80, -7.84} },
      ships_bot = { {-3.09, -7.96}, {1.66, -7.21} },
      army1 = { 2, 1, 1 },
      capital = WesternMap.valencia,
    },
    ['S203-6P'] = {
      parent = {REALM.aragon, '1618'},
      s_towns = { WesternMap.navarra, WesternMap.zaragoza, WesternMap.barcelona, WesternMap.baleares, WesternMap.salerno, WesternMap.bari,
      WesternMap.cremona, WesternMap.franchecomte, WesternMap.artois, WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina,
      WesternMap.tlemcen, WesternMap.oran },
      unrest = { },
    },
  },
  [REALM.burgundy] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = 'a413a1',
      religion = RELIGION.catholic,
      marriages = { WesternMap.antwerpen, WesternMap.brugge, WesternMap.amsterdam },
      l_towns = { WesternMap.bourgogne, },
      s_towns = { WesternMap.franchecomte, WesternMap.namur, WesternMap.luxembourg, WesternMap.picardie, WesternMap.artois, },
      vassals = { WesternMap.brugge, WesternMap.gent, WesternMap.antwerpen, WesternMap.amsterdam, WesternMap.zeeland, WesternMap.breda, },
      claims = { {-2.19, 1.34} },
      influence = {
        {-2.35, -0.85}, --Burgundy
        {-1.09, -0.03}, --Rhineland
        {-1.98, 2.05}, --Fland. and Wall.
        {-1.30, 3.51} --Netherlands
      },
      figurines = { {-2.02, -3.22} },
      ships = { {-4.49, 2.52} },
      ships_bot = { {-3.94, 2.76} },
      merchants = { {-3.89, -0.63}, {-3.41, 3.26}},
      capital = WesternMap.bourgogne
    },
  },
  [REALM.bohemia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '9a43c0',
      religion = RELIGION.catholic,
      l_towns = { WesternMap.praha, },
      s_towns = { WesternMap.rudohori, WesternMap.budejovice, WesternMap.olomouc, },
      vassals = { WesternMap.silesia, },
      influence = {
        {1.32, 0.06}, -- Bavaria & Swabia
        {4.00, -0.51}, -- Austria
        {5.41, 1.11}, -- Wielkopolska
        {2.00, 1.98}, -- Saxony
        {5.34, -0.88} -- Royal Hungary
      },
      marriages = { WesternMap.pest },
      merchants = { {3.18, -0.55}, {0.46, 1.21} }, --Wien, Saxony
      figurines = { {3.78, 1.64} },
      capital = WesternMap.praha
    },
    ['1618'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '9a43c0',
      religion = RELIGION.catholic,
      l_towns = { WesternMap.praha, },
      s_towns = { WesternMap.rudohori, WesternMap.budejovice, WesternMap.olomouc, },
      vassals = { WesternMap.silesia, },
      capital = WesternMap.praha
    },
  },
  [REALM.lithuania] = {
    ['1444'] = {
        parent = {'000', 'default'},
        setup_bag_guid = '115a58',
        religion = RELIGION.catholic,
        s_towns = { EasternMap.zemaitija, EasternMap.kaunas, EasternMap.vilnius, EasternMap.polockas, EasternMap.smolenskas, EasternMap.minskas,
        EasternMap.naugardukas, EasternMap.voluine, EasternMap.cernigovas, EasternMap.poltava, EasternMap.kijevas, EasternMap.edisanas, },
        influence = {
          {15.31, 2.46}, --Mo & Ry
          {12.46, 5.76}, --Novgorod
          {9.80, 5.94} --Es & Li
        },
        marriages = { EasternMap.krakow },
        merchants = { {7.20, 1.26}, {11.82, 1.32} }, --Krakow, Kiev
        army1 = { 2, 1, 0 },
        figurines = { {10.21, 4.07} },
        capital = EasternMap.vilnius
    },
  },
  [REALM.hungary] = {
    ['1444'] = {
      parent = {'000', 'default'},
      setup_bag_guid = '8527ea',
      religion = RELIGION.catholic,
      s_towns = { WesternMap.pozsony, WesternMap.sopron, WesternMap.pest, EasternMap.szepes, EasternMap.szabolcs, EasternMap.torda, EasternMap.hunyad,
      EasternMap.beograd },
      vassals = { WesternMap.zagreb, WesternMap.rijeka, },
      influence = {
        {5.48, -2.87}, {5.85, -2.87}, --Cr & Bo
        {5.14, -4.82}, --Dalmatia
        {6.92, -4.24}, --Se & Al
        {4.66, -0.33}, --Austria
        {4.83, 0.23} --Bohemia
      },
      marriages = { WesternMap.wien, WesternMap.praha },
      merchants = { {7.29, 1.66}, {3.64, -0.96} }, --Krakow, Wien
      army1 = { 2, 1, 0 },
      figurines = { {6.76, -1.40} },
      capital = WesternMap.pest
    },
  },
  [REALM.novgorod] = {
    ['1444'] = {
        parent = {'000', 'default'},
        setup_bag_guid = '08ede6',
        religion = RELIGION.orthodox,
        l_towns = { EasternMap.novgorod, },
        s_towns = { EasternMap.arkhangelsk, EasternMap.kargopol, EasternMap.olonets, EasternMap.ladoga, EasternMap.neva, },
        influence = {
          {12.03, 5.79}, --Novgorod,
          {15.79, 5.95}, --C. Russia
          {15.16, 7.61}, --Vologda
          {14.57, 5.03}, --Mo & Ry
          {10.33, 6.77} --Es & Li
        },
        merchants = { {7.56, 7.78}, {20.23, 3.95} },
        figurines = { {13.80, 6.77} },
        ships = { {6.75, 9.20} },
        ships_bot = { {5.92, 9.78} },
        capital = EasternMap.novgorod
    },
  },
  [REALM.great_horde] = {
    ['1444'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.muslim,
      s_towns = { EasternMap.tambov, EasternMap.saratov, EasternMap.don, EasternMap.sarai, EasternMap.astrakhan, EasternMap.majar, EasternMap.terek, },
      influence = {
        {16.12, 3.33}, -- Mo & Ry
        {20.56, 4.87}, -- Kazan
        {16.05, -0.52}, -- Crimea
        {20.31, -3.22} -- Caucasus
      },
      merchants = { {20.80, 3.46}, {20.02, -2.43} },
      army1 = { 0, 3, 0 },
      figurines = { {18.76, 2.49} },
      capital = EasternMap.saratov
    },
  },
  [REALM.morocco] = {
    ['1444'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.muslim,
      s_towns = { WesternMap.tangiers, WesternMap.fez, WesternMap.gharb, WesternMap.marrakech, WesternMap.sus, WesternMap.tafilalt, },
      influence = {
        {-6.37, -11.02}, {-5.99, -11.02}, -- Algiers
        {-7.30, -8.64} -- Andalucia
      },
      merchants = { {-10.15, -9.70}, {-5.35, -11.91} },
      army1 = { 1, 1, 0 },
      figurines = { {-9.77, -10.60} },
      ships = { {-12.57, -7.05} },
      ships_bot = { {-12.03, -9.36} },
      capital = WesternMap.fez
    },
    ['1618'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.muslim,
      s_towns = { WesternMap.fez, WesternMap.gharb, WesternMap.marrakech, WesternMap.sus, WesternMap.tafilalt, },
      capital = WesternMap.fez
    },
  },
  [REALM.norway] = {
    ['1444'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.catholic,
      s_towns = { WesternMap.trondheim, WesternMap.bergenhus, WesternMap.akershus, WesternMap.borgarsysla, },
      influence = {
        {0.27, 6.92}, -- Jutland
        {3.15, 8.67}, -- Svaeland
        {-8.01, 7.61} -- Scotland
      },
      allies = { WesternMap.kobenhavn },
      marriages = { WesternMap.kobenhavn, WesternMap.stockholm },
      merchants = { {-5.45, 9.95}, {4.02, 5.55} },
      army1 = { 1, 0, 0 },
      figurines = { {0.80, 9.18} },
      ships = { {1.56, 7.64}, {-3.80, 10.63} },
      ships_bot = { {1.38, 8.11}, {-2.91, 11.01} },
      capital = WesternMap.akershus
    },
  },
  [REALM.teutonic_order] = {
    ['1444'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.catholic,
      s_towns = { WesternMap.danzig, WesternMap.kulm, EasternMap.marienburg, EasternMap.konigsberg, },
      influence = {
        {8.29, 5.99}, {8.66, 5.99}, -- Es. & Li.
        {5.04, 4.15}, -- Pomerania
        {4.29, 3.37}, -- Brandenburg
        {2.88, 2.26} -- Saxony
      },
      merchants = { {4.48, 5.05}, {6.79, 1.32} }, --Lubeck, Krakow
      army1 = { 1, 1, 0 },
      figurines = { {7.93, 4.45}, 'none', 'none', {6.74, 6.29} },
      fleet = { 0, 0, 1 },
      ships = { {6.68, 5.35} },
      ships_bot = { {6.68, 5.35} },
      capital = EasternMap.marienburg
    },
  },
  [REALM.tunis] = {
    ['1444'] = {
      parent = {'000', 'default'},
      -- setup_bag_guid = '',
      religion = RELIGION.muslim,
      s_towns = { WesternMap.mitidja, WesternMap.kabylia, WesternMap.bizerte, WesternMap.tunis, WesternMap.sousse, WesternMap.tripoli, },
      influence = {
        {-1.44, -9.83}, -- Algiers
        {-1.26, -10.99} -- N. Sahara
      },
      merchants = { {-4.60, -11.66}, {-1.48, -7.10} },
      army1 = { 1, 1, 0 },
      fleet = { 0, 0, 2 },
      figurines = { {0.22, -10.51}, 'none', 'none', {-0.50, -8.45} },
      ships = { {2.52, -7.86} },
      ships_bot = { {2.17, -10.81} },
      capital = WesternMap.tunis
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { WesternMap.tunis, WesternMap.bizerte, WesternMap.sousse, WesternMap.qafsah },
      capital = WesternMap.tunis
    },
  },
  [REALM.persia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim, -- TODO Need to change this to Shia once we have tokens
      l_towns = { EasternMap.tabriz, },
      s_towns = { EasternMap.mosul, EasternMap.kirkuk, EasternMap.yerevan, EasternMap.tikrit, EasternMap.baghdad },
      vassals = { EasternMap.bitlis },
      influence = {
        {20.27, -5.38}, {20.65, -5.38}, -- Transcaucasia
        {17.27, -8.59}, -- Kurdistan
        {20.19, -4.48} -- Caucasus
      },
      claims = { {17.66, -8.17} }, -- Kurdistan
      merchants = { {20.41, -2.72}, {17.31, -10.05} },
      army1 = { 0, 2, 0 },
      figurines = { {18.80, -5.72} },
      capital = EasternMap.tabriz
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      l_towns = { EasternMap.tabriz, IndiaMap.isfahan, IndiaMap.herat, },
      s_towns = { EasternMap.shirvan, EasternMap.tblisi, EasternMap.yerevan, IndiaMap.fars },
      capital = IndiaMap.isfahan
    },
  },
  [REALM.scotland] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.aberdeen, WesternMap.perth, WesternMap.lothian, WesternMap.ayrshire, },
      influence = {
        {-10.60, 5.16}, -- Ireland
        {-7.80, 5.42}, -- Northumbria
        {-3.53, 1.26}, -- Seine
        {-0.50, 8.48} -- Vestlandet
      },
      allies = { WesternMap.paris },
      merchants = { {-6.38, 10.04}, {-3.93, 4.05} },
      figurines = { {-8.48, 6.59} },
      ships = { {-4.48, 5.67}, {-8.05, 9.96} },
      ships_bot = { {-9.41, 9.53}, {-5.87, 7.11} },
      capital = WesternMap.lothian
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.aberdeen, WesternMap.perth, WesternMap.lothian, WesternMap.ayrshire, },
      capital = WesternMap.lothian
    },
  },
  [REALM.saxony] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.wittenberg, WesternMap.dresden, WesternMap.leipzig, },
      influence = {
        {1.09, 1.57}, -- Saxony
        {1.30, 2.50}, -- L. Saxony
        {0.26, 1.82}, -- Westphalia
        {-0.49, 0.22}, -- Rhineland
        {0.94, 0.23} -- Bavaria & Swabia
      },
      merchants = { {3.64, -0.55}, {0.91, 1.21} }, --Wien, Saxony
      army1 = { 1, 0, 0 },
      figurines = { {1.95, 1.14} },
      capital = WesternMap.dresden
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.wittenberg, WesternMap.dresden, WesternMap.leipzig, },
      capital = WesternMap.dresden
    },
  },
  [REALM.bavaria] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.regensburg, WesternMap.landshut, WesternMap.munchen, },
      influence ={
        {2.01, -0.16}, --B S
        {1.29, 0.89}, --Sax
        {-0.11, 0.22}, --Rh
        {1.73, -1.82} --T
      },
      merchants = { {3.64, -0.96}, {0.91, 0.80}}, --Wien, Saxony
      figurines = { {0.98, -0.62} },
      army1 = { 1, 0, 0 },
      capital = WesternMap.munchen
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.regensburg, WesternMap.landshut, WesternMap.munchen, },
      capital = WesternMap.munchen
    },
  },
  [REALM.milan] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.milano, },
      s_towns = { WesternMap.cremona, WesternMap.parma, },
      influence = {
        {-0.50, -2.88}, {-0.50, -3.25}, -- Lombardy
        {1.99, -5.73}, -- C. Italy
        {-0.93, -2.50}, -- Switzerland
        {-2.08, -3.17}, -- Burgundy
        {2.06, -2.57} -- Venetia
      },
      claims = { {-0.71, -4.25} }, -- Lombardy
      merchants = { {-3.42, -0.52}, {3.18, -0.96} }, --Champagne, Wien
      army1 = { 1, 0, 0 },
      figurines = { {-0.03, -3.77} },
      capital = WesternMap.milano
    },
  },
  [REALM.genoa] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.genova, },
      s_towns = { WesternMap.corsica, EasternMap.caffa, },
      capital = WesternMap.genova
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.genova, },
      s_towns = { WesternMap.corsica, },
      capital = WesternMap.genova
    },
  },
  [REALM.naples] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.napoli, },
      s_towns = { WesternMap.bari, WesternMap.salerno, },
      capital = WesternMap.napoli
    },
  },
  [REALM.livonian_order] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { EasternMap.livland, EasternMap.reval, EasternMap.goldingen, },
      capital = EasternMap.livland
    },
  },
  [REALM.crimea] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { EasternMap.crimea, EasternMap.yedishkul, EasternMap.kyzylyar, EasternMap.azov, },
      capital = EasternMap.crimea
    },
  },
  [REALM.aq_qoyunlu] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { EasternMap.erzurum, EasternMap.mush, EasternMap.urfa, },
      capital = EasternMap.mush
    },
  },
  [REALM.savoy] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.savoie, },
      s_towns = { WesternMap.geneve, WesternMap.piemont, },
      influence = {
        {-2.15, -1.64}, -- Burgundy
        {0.50, -2.60}, -- Lombardy
        {-0.59, -2.40}, -- Switzerland
        {-1.70, -3.93}, -- Languedoc
        {-1.12, 0.32} -- Rhineland
      },
      merchants = { {-3.80, -0.21}, {0.57, 0.92} },
      figurines = { {-2.86, -1.99} },
      capital = WesternMap.savoie
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.savoie, },
      s_towns = { WesternMap.piemont, },
      capital = WesternMap.savoie
    },
  },
  [REALM.florence] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.firenze, },
      s_towns = { WesternMap.pisa, },
      influence = {
        {1.64, -3.95}, {1.22, -4.17}, -- C. Italy
        {0.86, -3.24}, -- Lombardy
        {3.94, -5.93}, -- Naples
        {3.30, -2.34} -- Venetia
      },
      merchants = { {-1.52, -6.17}, {6.10, -7.65} },
      army1 = { 1, 0, 0},
      figurines = { {0.92, -4.30} },
      ships = { {2.54, -7.79} },
      ships_bot = { {1.93, -7.11} },
      capital = WesternMap.firenze
    },
  },
  [REALM.tuscany] = {
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.firenze, },
      s_towns = { WesternMap.pisa, WesternMap.siena, },
      capital = WesternMap.firenze
    },
  },
  [REALM.brittany] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.nantes, WesternMap.rennes, },
      capital = WesternMap.nantes,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.granada] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { WesternMap.granada, WesternMap.gibraltar, },
      capital = WesternMap.granada,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.tlemcen] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { WesternMap.tlemcen, WesternMap.oran, },
      capital = WesternMap.tlemcen,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.provence] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.provence, },
      s_towns = { WesternMap.anjou, },
      capital = WesternMap.provence,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.switzerland] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.bern, WesternMap.stgallen, },
      capital = WesternMap.bern,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.bern, WesternMap.stgallen, WesternMap.geneve },
      capital = WesternMap.bern,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.bosnia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.bosnia, WesternMap.hum, },
      capital = WesternMap.bosnia,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.serbia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.smederevo, EasternMap.kosovo, },
      capital = EasternMap.smederevo,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.albania] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.albania, },
      capital = EasternMap.albania,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.wallachia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.tirgoviste, EasternMap.buzau, },
      capital = EasternMap.tirgoviste,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
      -- parent = {REALM.wallachia, '1444'},
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.tirgoviste, EasternMap.buzau, },
      capital = EasternMap.tirgoviste,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.stettin] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.stettin, WesternMap.stralsund_1444, },
      capital = WesternMap.stettin,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.pomerania] = {
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.protestant,
      s_towns = { WesternMap.stettin, WesternMap.koslin, },
      capital = WesternMap.stettin,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.karaman] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { EasternMap.karaman, EasternMap.konya, },
      capital = EasternMap.karaman,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.imereti] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.imereti, EasternMap.guria, },
      capital = EasternMap.imereti,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
      -- parent = {REALM.imereti, '1444'},
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.imereti, EasternMap.guria, },
      capital = EasternMap.imereti,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.transylvania] = {
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.protestant,
      s_towns = { EasternMap.torda, EasternMap.hunyad, },
      capital = EasternMap.torda,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.algiers] = {
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { WesternMap.mitidja, WesternMap.qusantinah, },
      capital = WesternMap.mitidja,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.moldavia] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.orthodox,
      s_towns = { EasternMap.suceava, EasternMap.basarabia, },
      capital = EasternMap.suceava,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.brunswick] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.hannover, WesternMap.braunschweig, },
      capital = WesternMap.braunschweig,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
        -- parent = { REALM.brunswick, '1444'}
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.hannover, WesternMap.braunschweig, },
      capital = WesternMap.braunschweig,
      army1 = { 0, 0, 0 },
    }
  },
  [REALM.kazan] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.muslim,
      s_towns = { EasternMap.kazan, },
      l_towns = { CentralAsiaMap.volga, },
      capital = EasternMap.kazan,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.knights] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { EasternMap.rhodes, },
      capital = EasternMap.rhodes,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      s_towns = { WesternMap.malta, },
      capital = WesternMap.malta,
      army1 = { 0, 0, 0 },
    },
  },
  [REALM.lorraine] = {
    ['1444'] = {
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.lorraine, },
      capital = WesternMap.lorraine,
      army1 = { 0, 0, 0 },
    },
    ['1618'] = {
        -- parent = { REALM.lorraine, '1444'}
      parent = {'000', 'default'},
      religion = RELIGION.catholic,
      l_towns = { WesternMap.lorraine, },
      capital = WesternMap.lorraine,
      army1 = { 0, 0, 0 },
    }
  },
}