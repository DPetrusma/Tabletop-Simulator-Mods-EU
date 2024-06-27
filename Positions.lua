--[[
  ------------------------------------------------
  ------------------------------------------------
                Map Position Data
  ------------------------------------------------
  ------------------------------------------------
--]]

-- snap points for provinces on the africa map --
AfricaMap = {
    ['timbuktu'] = {-17.84, 3.49}, ['benin'] = {-17.11, 2.34}, ['songhai'] = {-17.21, 3.13}, ['ethiopia'] = {-15.02, 2.67},
    ['adal'] = {-14.5, 2.73}, ['goldcoast'] = {-17.75, 2.39}, ['mali'] = {-18.32, 2.74}, ['mutapa'] = {-15.47, 0.63},
    ['kilwa'] = {-14.94, 1.16}, ['katsina'] = {-16.65, 2.77}, ['kongo'] = {-16.57, 1.58}, ['ajuuraan'] = {-14.56, 2.09},
    ['upperegypt'] = {-15.42, 3.55}, ['angola'] = {-16.56, 0.75}, ['madagascar'] = {-14.43, 0.64}, ['centralafrica'] = {-15.55, 1.77},
    ['natal'] = {-15.58, -0.12}, ['capeofgoodhope'] = {-16.16, -0.36}
  }
  
  -- snap points for provinces on the america map --
  AmericaMap = {
    ['pernambuco'] = {-14.39, 7.91}, ['bahia'] = {-14.37, 7.23}, ['riodejaneiro'] = {-14.64, 6.52}, ['amazonas'] = {-15.66, 7.72},
    ['mexico'] = {-17.77, 9.17}, ['centralamerica'] = {-17.07, 9.0}, ['newgranada'] = {-16.16, 8.56}, ['guyana'] = {-15.47, 8.43},
    ['mississippi'] = {-17.45, 9.99}, ['virginia'] = {-16.57, 10.45}, ['florida'] = {-16.84, 9.77}, ['antilles'] = {-16.32, 9.29},
    ['hudsonbay'] = {-17.22, 11.59}, ['canada'] = {-16.48, 11.24}, ['greatlakes'] = {-17.12, 10.78}, ['newengland'] = {-15.97, 10.7},
    ['cuzco'] = {-16.26, 7.24}, ['charcas'] = {-15.8, 6.82}, ['minasgerais'] = {-15.09, 7.2}, ['laplata'] = {-15.53, 5.98},
    ['greatplains'] = {-17.87, 10.72}, ['california'] = {-18.39, 9.94}, ['chile'] = {-16.2, 5.9}, ['quito'] = {-16.64, 7.87}
  }
  
  -- snap points for provinces on the india map --
  IndiaMap = {
    ['hejaz'] = {-18.45, -3.56}, ['yemen'] = {-18.15, -4.21}, ['coromandel'] = {-15.2, -4.65}, ['bengal'] = {-14.38, -3.42},
    ['gujarat'] = {-15.92, -3.37}, ['doab'] = {-14.91, -3.0}, ['delhi'] = {-15.44, -2.58}, ['deccan'] = {-15.24, -3.86},
    ['samarkand'] = {-16.6, -1.81}, ['isfahan'] = {-17.68, -2.22}, ['goa'] = {-15.67, -4.13}, ['fars'] = {-17.37, -2.98},
    ['balkh'] = {-16.29, -2.41}, ['herat'] = {-16.95, -2.47}, ['baluchistan'] = {-16.59, -3.1}, ['basra'] = {-18.13, -2.57},
    ['najd'] = {-18.07, -3.27}, ['khiva'] = {-17.21, -1.73}, ['hormuz'] = {-17.17, -3.6}
  }
  
  -- snap points for provinces on the far east map --
  FarEastMap = {
    ['canton'] = {-17.41, -7.18}, ['xian'] = {-17.54, -6.27}, ['kyushu'] = {-15.57, -6.56}, ['hangzhou'] = {-16.74, -6.84},
    ['malacca'] = {-17.72, -8.86}, ['siam'] = {-17.86, -8.0}, ['burma'] = {-18.41, -7.54}, ['southsumatra'] = {-17.82, -9.56},
    ['moluccas'] = {-16.19, -9.18}, ['java'] = {-17.18, -9.72}, ['papua'] = {-14.77, -9.56}, ['chengdu'] = {-18.08, -6.82},
    ['philippines'] = {-16.29, -7.94}, ['brunei'] = {-16.98, -8.79}, ['beijing'] = {-16.88, -5.88}, ['honshu'] = {-15.05, -6.1},
    ['korea'] = {-16.04, -6.14}, ['aceh'] = {-18.23, -8.99}, ['timor'] = {-16.25, -9.9}, ['vogelkop'] = {-15.51, -9.28},
    ['easternaustralia'] = {-14.27, -11.17}, ['southernaustralia'] = {-14.82, -11.75}, ['westernaustralia'] = {-16.48, -11.48}
  }
  
    -- snap points for provinces on the central asia map --
  CentralAsiaMap = {
    ['westsiberia'] = {16.93, 11.63}, ['tyumen'] = {16.24, 10.75}, ['volga'] = {15.09, 10.66}, ['nogai'] = {15.18, 9.74},
    ['ural'] = {15.63, 11.58}, ['eastsiberia'] = {18.37, 10.96}, ['okhosk'] = {19.65, 10.83}, ['oirat'] = {17.4, 10.09},
    ['mongolia'] = {18.36, 9.67}, ['manchu'] = {19.04, 9.6}, ['furdan'] = {19.63, 9.57}, ['chagati'] = {16.8, 9.56},
    ['kazakhstan'] = {15.96, 9.77}
  }
  
  -- snap points for provinces on the western map --
  WesternMap = {
    ['amsterdam'] = {-2.54, 3.4}, ['antwerpen'] = {-2.50, 2.08}, ['brugge'] = {-3.77, 2.16}, ['london'] = {-5.84, 2.68},
    ['genova'] = {0.01, -3.82}, ['firenze'] = {1.63, -4.55}, ['montpellier'] = {-3.12, -4.27}, ['valencia'] = {-5.98, -6.8},
    ['normandie'] = {-6.09, 0.49}, ['champagne'] = {-2.98, 0.24}, ['savoie'] = {-1.68, -2.59}, ['lorraine'] = {-1.54, -0.13},
    ['geneve'] = {-1.29, -1.78}, ['venezia'] = {2.57, -3.27}, ['milano'] = {0.0, -2.61}, ['brescia'] = {0.91, -2.75},
    ['rijeka'] = {3.74, -3.4}, ['essex'] = {-5.02, 3.05}, ['york'] = {-6.82, 4.96}, ['praha'] = {3.76, 0.91},
    ['berlin'] = {3.3, 3.4}, ['magdeburg'] = {1.79, 2.76}, ['frankfurt'] = {0.02, 1.42}, ['tunis'] = {0.77, -9.61},
    ['gharb'] = {-10.47, -10.78}, ['tlemcen'] = {-6.34, -10.23}, ['bourgogne'] = {-2.67, -1.35}, ['wien'] = {4.4, -0.94},
    ['pozsony'] = {5.42, -0.36}, ['regensburg'] = {2.02, 0.35}, ['ulm'] = {0.55, 0.06}, ['silesia'] = {4.89, 1.49},
    ['lothian'] = {-7.8, 6.45}, ['aberdeen'] = {-7.41, 7.63}, ['bergenhus'] = {-1.04, 9.63}, ['trondheim'] = {1.74, 11.36},
    ['lubeck'] = {1.6, 4.3}, ['kobenhavn'] = {2.07, 5.83}, ['lund'] = {3.41, 6.29},['hamburg'] = {0.72, 3.89},
    ['sevilla'] = {-9.7, -8.29}, ['lisboa'] = {-11.49, -7.01}, ['porto'] = {-11.18, -5.52}, ['ceuta'] = {-8.93, -9.72},
    ['barcelona'] = {-4.14, -5.64}, ['mesina'] = {3.56, -8.92}, ['napoli'] = {3.54, -6.78}, ['wessex'] = {-7.82, 2.08},
    ['rennes'] = {-7.23, -0.05}, ['ragusa'] = {5.35, -5.08}, ['caux'] = {-5.39, 0.89}, ['liege'] = {-1.84, 1.65},
    ['siena'] = {1.6, -5.4}, ['pest'] = {6.02, -1.29}, ['tirol'] = {1.31, -1.42}, ['rudohori'] = {3.04, 1.16},
    ['sundgau'] = {-1.03, -0.65}, ['tafilalt'] = {-8.29, -11.95}, ['marrakech'] = {-10.66, -11.64}, ['munchen'] = {1.98, -0.61},
    ['kulm'] = {5.93, 3.43}, ['sieradz'] = {5.97, 1.45}, ['danzig'] = {5.93, 4.49}, ['stockholm'] = {5.68, 8.39},
    ['karnten'] = {2.84, -1.61}, ['lienz'] = {2.17, -1.65}, ['namur'] = {-2.81, 1.12}, ['bern'] = {-0.82, -1.55},
    ['bordeaux'] = {-6.18, -2.78}, ['bourbon'] = {-3.51, -1.93}, ['navarra'] = {-6.89, -4.31}, ['nantes'] = {-6.89, -0.87},
    ['bergslagen'] = {3.93, 9.24}, ['stettin'] = {3.84, 4.08}, ['dresden'] = {3.03, 1.82}, ['braunschweig'] = {0.93, 2.32},
    ['salamanca'] = {-9.67, -5.85}, ['galicia'] = {-10.68, -3.52}, ['badajoz'] = {-9.77, -7.36}, ['perth'] = {-8.26, 7.19},
    ['pale'] = {-10.04, 4.62}, ['laighin'] = {-10.25, 3.77}, ['tripoli'] = {2.56, -11.85}, ['slesvig'] = {0.25, 5.22},
    ['holstein'] = {0.82, 4.7}, ['bremen'] = {-0.11, 3.69}, ['poitou'] = {-5.4, -2.02}, ['limousin'] = {-4.54, -2.8},
    ['akershus'] = {1.71, 9.22}, ['roma'] = {2.39, -6.15}, ['lyon'] = {-2.59, -2.63}, ['avignon'] = {-2.85, -3.43},
    ['nurnberg'] = {1.5, 0.57}, ['mainz'] = {0.01, 0.68}, ['paris'] = {-4.5, 0.16}, ['ferrara'] = {2.15, -3.87},
    ['bosnia'] = {5.69, -3.33}, ['salzburg'] = {2.58, -0.91}, ['saintonge'] = {-6.27, -1.9}, ['poznan'] = {4.83, 2.56},
    ['sus'] = {-9.6, -12.1}, ['madeira'] = {-13.21, -10.03}, ['toulouse'] = {-4.34, -4.12}, ['armagnac'] = {-5.64, -3.9},
    ['pfalz'] = {-0.73, 0.34}, ['provence'] = {-1.86, -4.65}, ['piemont'] = {-0.87, -3.32}, ['berry'] = {-4.02, -1.44},
    ['orleans'] = {-4.83, -1.01}, ['bari'] = {5.0, -6.36}, ['lancashire'] = {-7.42, 4.72}, ['northumberland'] = {-7.04, 5.88},
    ['shrewsbury'] = {-7.33, 3.82}, ['ulaidh'] = {-10.32, 5.77}, ['madrid'] = {-8.1, -6.17}, ['cordoba'] = {-8.82, -7.9},
    ['burgos'] = {-8.28, -4.86}, ['zara'] = {4.28, -4.47}, ['zagreb'] = {4.78, -2.52}, ['beira'] = {-10.64, -6.26},
    ['ayrshire'] = {-8.82, 6.07}, ['mhumhain'] = {-11.18, 3.44}, ['wales'] = {-8.47, 3.39}, ['oxford'] = {-6.51, 3.19},
    ['maine'] = {-5.72, -0.52}, ['artois'] = {-3.98, 1.3}, ['picardie'] = {-4.58, 1.4}, ['anjou'] = {-5.78, -1.29},
    ['canarias'] = {-13.17, -12.09}, ['fez'] = {-8.36, -10.57}, ['tangiers'] = {-9.55, -9.88}, ['qafsah'] = {-0.33, -11.71},
    ['oran'] = {-4.84, -9.7}, ['mitidja'] = {-3.34, -9.37}, ['qusantinah'] = {-1.13, -9.49}, ['kabylia'] = {-2.17, -9.5},
    ['bizerte'] = {-0.06, -9.4}, ['sousse'] = {0.83, -10.54}, ['murcia'] = {-6.66, -8.25}, ['zaragoza'] = {-5.89, -5.46},
    ['baleares'] = {-3.74, -7.11}, ['malta'] = {3.32, -10.18}, ['palermo'] = {2.23, -8.85}, ['salerno'] = {4.19, -7.43},
    ['pisa'] = {1.09, -4.93}, ['ancona'] = {3.03, -4.77}, ['cremona'] = {0.41, -3.06}, ['mantova'] = {1.18, -3.57},
    ['parma'] = {0.69, -3.67}, ['stgallen'] = {0.05, -1.42}, ['franchecomte'] = {-1.8, -1.15}, ['zeeland'] = {-2.99, 2.84},
    ['gelre'] = {-1.55, 3.15}, ['breda'] = {-2.01, 2.61}, ['friesland'] = {-1.65, 4.0}, ['gent'] = {-3.15, 2.07},
    ['luxembourg'] = {-1.84, 0.81}, ['hannover'] = {0.54, 2.92}, ['kleve'] = {-1.18, 2.43}, ['koln'] = {-1.22, 1.73},
    ['trier'] = {-1.14, 0.94}, ['munster'] = {-0.48, 2.66}, ['borgarsysla'] = {2.07, 8.45}, ['vestjylland'] = {-0.27, 6.42},
    ['ostjylland'] = {0.83, 6.37}, ['ostergotland'] = {4.68, 7.53}, ['gotland'] = {5.9, 6.97}, ['halsingland'] = {5.38, 10.53},
    ['wittenberg'] = {2.44, 2.31}, ['leipzig'] = {1.53, 1.83}, ['augsburg'] = {1.17, -0.60}, ['landshut'] = {2.58, -0.23},
    ['steiermark'] = {3.49, -1.46}, ['osterreich'] = {4.24, -0.13}, ['verona'] = {1.76, -3.03}, ['treviso'] = {2.5, -2.58},
    ['krain'] = {3.19, -2.81}, ['potsdam'] = {2.58, 3.11}, ['altmark'] = {1.93, 3.45}, ['neumark'] = {4.41, 3.47},
    ['koslin'] = {4.92, 4.54}, ['stralsund'] = {3.03, 4.56}, ['mecklenburg'] = {2.32, 4.47}, ['hum'] = {5.17, -4.04},
    ['kalisz'] = {5.76, 2.41}, ['granada'] = {-8.19, -8.41}, ['gibraltar'] = {-9.39, -9.05}, ['sopron'] = {5.03, -1.29},
    ['olomouc'] = {5.01, 0.67}, ['budejovice'] = {3.48, 0.13}, ['corsica'] = {0.34, -5.3}, ['sardenya'] = {0.22, -7.7}
  }
  
  
  -- snap points for provinces on the eastern map --
  EasternMap = {
    ['iskandariyya'] = {11.80, -11.24}, ['qahirah'] = {12.43, -11.95}, ['dumyat'] = {13.0, -11.33}, ['krakow'] = {6.87, 0.78},
    ['warszawa'] = {7.54, 2.5}, ['lwow'] = {9.54, -0.01}, ['constantinople'] = {11.68, -5.6}, ['hudavendigar'] = {11.4, -6.51},
    ['basarabia'] = {12.05, -2.69}, ['trebizond'] = {16.89, -5.82}, ['kazan'] = {20.11, 4.61}, ['nizhnynovgorod'] = {18.86, 5.28},
    ['perm'] = {20.5, 8.28}, ['viatka'] = {20.41, 6.78}, ['tblisi'] = {19.36, -5.09}, ['caffa'] = {15.41, -2.88},
    ['athina'] = {9.19, -8.14}, ['creta'] = {10.02, -9.86}, ['novgorod'] = {13.0, 7.1}, ['neva'] = {12.11, 7.88},
    ['ladoga'] = {13.02, 8.1}, ['arkhangelsk'] = {14.18, 11.65}, ['alquds'] = {14.83, -11.65}, ['moskva'] = {15.63, 4.8},
    ['tver'] = {15.19, 5.39}, ['suzdal'] = {17.68, 5.57}, ['murom'] = {18.45, 4.43}, ['kijevas'] = {12.51, 0.7},
    ['smolenskas'] = {13.31, 3.73}, ['vilnius'] = {9.58, 3.65}, ['odoyev'] = {15.51, 3.08}, ['riga'] = {9.11, 6.13},
    ['reval'] = {9.3, 7.66}, ['hunyad'] = {8.44, -2.49}, ['vladimir'] = {17.2, 4.4}, ['polockas'] = {11.85, 4.88},
    ['astrakhan'] = {20.71, -1.41}, ['tambov'] = {17.57, 2.4}, ['bangazi'] = {6.78, -11.0}, ['voluine'] = {9.43, 1.7},
    ['podole'] = {11.13, -0.22}, ['halab'] = {15.91, -8.51}, ['karaman'] = {13.88, -8.66}, ['dimashq'] = {15.53, -10.1},
    ['tarabulus'] = {15.34, -9.22}, ['saratov'] = {19.63, 1.28}, ['konigsberg'] = {7.25, 4.76}, ['osterode'] = {6.68, 4.20},
    ['azov'] = {17.08, -1.62}, ['izmir'] = {10.93, -7.82}, ['tabriz'] = {20.36, -7.44}, ['baghdad'] = {19.73, -10.05},
    ['circassia'] = {17.25, -3.67}, ['morea'] = {8.64, -9.16}, ['naxos'] = {10.19, -8.4}, ['edisanas'] = {13.21, -1.93},
    ['selanik'] = {8.51, -6.36}, ['beograd'] = {7.17, -3.65}, ['naugardukas'] = {10.23, 2.9}, ['minskas'] = {11.31, 3.42},
    ['mush'] = {17.8, -7.05}, ['urfa'] = {16.97, -7.96}, ['mosul'] = {18.89, -8.11}, ['jaffa'] = {14.88, -10.85},
    ['gazzah'] = {14.13, -11.5}, ['fayyum'] = {11.84, -12.14}, ['cyprus'] = {14.08, -9.61}, ['yanya'] = {7.61, -7.5},
    ['kirkuk'] = {19.62, -8.86}, ['tikrit'] = {19.01, -9.24}, ['yerevan'] = {19.46, -6.24}, ['rhodes'] = {11.04, -9.13},
    ['edirne'] = {10.56, -5.69}, ['ankara'] = {13.45, -6.71}, ['kastamonu'] = {14.32, -5.35}, ['konya'] = {13.59, -7.63},
    ['adana'] = {14.95, -8.4}, ['abo'] = {7.54, 9.18}, ['nyland'] = {9.91, 8.59}, ['osterbotten'] = {8.95, 11.43},
    ['kargopol'] = {13.84, 11.0}, ['olonets'] = {13.9, 9.33}, ['pskov'] = {11.23, 6.88}, ['galich'] = {18.45, 6.28},
    ['sarai'] = {19.85, -0.54}, ['majar'] = {18.43, -2.5}, ['terek'] = {19.87, -3.38}, ['shirvan'] = {20.81, -4.39},
    ['guria'] = {18.16, -5.05}, ['imereti'] = {18.55, -4.5}, ['kyzylyar'] = {15.76, -1.53}, ['yedishkul'] = {14.99, -1.86},
    ['crimea'] = {14.61, -2.61}, ['szabolcs'] = {7.54, -1.14}, ['torda'] = {9.17, -1.98}, ['albania'] = {6.82, -6.17},
    ['kosovo'] = {7.22, -5.26}, ['smederevo'] = {7.72, -3.84}, ['sofya'] = {9.2, -4.59}, ['silistre'] = {11.3, -4.13},
    ['tirgoviste'] = {9.71, -3.49}, ['buzau'] = {10.94, -3.03}, ['marienburg'] = {6.68, 4.21}, ['bitlis'] = {18.74, -7.32},
    ['cernigovas'] = {13.9, 1.67}, ['poltava'] = {14.67, 0.21}, ['suceava'] = {11.0, -1.6}, ['rzhev'] = {14.04, 5.54},
    ['ryazan'] = {16.79, 3.45}, ['goldingen'] = {7.75, 6.42}, ['livland'] = {9.48, 6.79}, ['kaunas'] = {8.98, 4.27},
    ['zemaitija'] = {8.47, 5.14}, ['lublin'] = {8.19, 1.51}, ['sandomierz'] = {7.67, 1.08}, ['szepes'] = {6.74, -0.3},
    ['kasimov'] = {17.79, 3.68}, ['yaroslavl'] = {16.49, 6.21}, ['vologda'] = {16.53, 7.34}, ['beloozero'] = {15.7, 8.36},
    ['don'] = {17.98, -0.33}, ['mentese'] = {11.62, -8.57}, ['teke'] = {12.47, -8.41}, ['kutahya'] = {12.31, -7.24},
    ['amasya'] = {15.28, -6.0}, ['sivas'] = {15.89, -6.64}, ['erzurum'] = {17.82, -6.25}, ['zaporoze'] = {15.00, -1.11}
    }
  
  -- snap points for religion tokens on the western map --
  WesternMapReligion = {
    ['algiers'] = {-5.15, -10.66}, ['andalucia'] = {-7.52, -8.46}, ['aquitaine'] = {-5.51, -2.87}, ['aragon'] = {-6.46, -5.08},
    ['austria'] = {4.06, -1.68}, ['bavariaswabia'] = {0.53, -0.74}, ['bohemia'] = {4.4, 0.65}, ['brandenburg'] = {3.6, 2.51},
    ['brittanynormandy'] = {-7.89, -0.03}, ['burgundy'] = {-3.27, -1.11}, ['castile'] = {-7.3, -6.62}, ['centralitaly'] = {2.26, -5.36},
    ['corsicasardinia'] = {0.26, -6.68}, ['dalmatia'] = {4.22, -3.91}, ['eastanglia'] = {-6.11, 4.12}, ['flanderswallonia'] = {-2.29, 1.14},
    ['gotalandskane'] = {3.08, 7.53}, ['hungarianplain'] = {5.88, -2.04}, ['ireland'] = {-11.16, 4.92}, ['jutland'] = {0.24, 5.82},
    ['languedoc'] = {-2.28, -3.95}, ['leon'] = {-9.35, -4.07}, ['loire'] = {-3.71, -3.31}, ['lombardy'] = {-0.74, -4.07},
    ['lowersaxony'] = {1.21, 2.9}, ['macaronesia'] = {-12.93, -11.22}, ['naples'] = {4.36, -6.72}, ['netherlands'] = {-1.08, 3.84},
    ['northernmorocco'] = {-9.97, -11.4}, ['northumbria'] = {-6.31, 4.91}, ['ostlandet'] = {1.21, 10.39}, ['pomerania'] = {4.84, 4.28},
    ['portugal'] = {-10.98, -7.82}, ['prussia'] = {7.56, 3.64}, ['rhineland'] = {-0.49, -0.56}, ['royalhungary'] = {5.89, -0.05},
    ['saxony'] = {1.79, 1.09}, ['scotland'] = {-9.08, 8.15}, ['seine'] = {-3.52, 0.74}, ['sicily'] = {2.78, -9.85},
    ['sjaellandfyn'] = {2.63, 5.23}, ['southernmorocco'] = {-8.94, -12.02}, ['svealand'] = {4.71, 8.91}, ['switzerland'] = {0.58, -1.95},
    ['tirol'] = {1.47, -2.11}, ['tunisia'] = {0.8, -11.62}, ['venetia'] = {3.73, -2.45}, ['waleswesex'] = {-8.02, 3.87},
    ['westphalia'] = {0.15, 2.23}, ['wielkopoland'] = {4.47, 1.91}
  }
  
  -- snap points for religion tokens on the eastern map --
  EasternMapReligion = {
    ['aegeanarchipelago'] = {10.42, -9.39}, ['transcaucasia'] = {20.29, -6.48}, ['astrakhan'] = {19.22, -2.33}, ['aydin'] = {11.56, -7.62},
    ['caucasus'] = {20.51, -3.75}, ['centralrussia'] = {17.23, 6.09}, ['circassia'] = {17.94, -4.12}, ['crimea'] = {16.48, -0.95},
    ['easternukraine'] = {15.05, 1.55}, ['egypt'] = {11.04, -11.75}, ['estonialivonia'] = {10.52, 5.69}, ['finland'] = {9.34, 9.77},
    ['greece'] = {8.37, -8.53}, ['iraq'] = {18.31, -9.01}, ['karaman'] = {14.26, -8.09}, ['karelia'] = {12.47, 9.82},
    ['kurdistan'] = {16.46, -7.43}, ['lithuania'] = {9.22, 5.05}, ['macedoniathrace'] = {7.95, -6.63}, ['mazoviamalopolska'] = {8.22, 2.71},
    ['moldavia'] = {11.74, -1.49}, ['moscowryazan'] = {16.26, 2.37}, ['northernanatolia'] = {13.86, -6.16}, ['novgorod'] = {14.43, 7.01},
    ['palestine'] = {14.22, -12.22}, ['perm'] = {19.22, 7.79}, ['redruthenia'] = {10.47, 1.96}, ['rum'] = {17.12, -6.63},
    ['saratov'] = {19.95, 2.38}, ['serbiaalbania'] = {7.9, -4.85}, ['syria'] = {16.17, -9.33}, ['transylvania'] = {9.02, -1.09},
    ['wallachiabulgaria'] = {8.71, -3.93}, ['westernukraine'] = {13.07, -0.35}, ['whiteruthenia'] = {14.2, 3.0}, ['cyprus'] = {13.19, -9.94}
  }

  TradeNodeLocations = {
    ['adriatic sea'] = {},
    ['aleppo'] = {},
    ['alexandria'] = {},
    ['astrakhan'] = {},
    ['baltic sea'] = {},
    ['blacksea'] = {},
    ['bordeaux'] = {},
    ['champagne'] = {},
    ['chinaandjapan'] = {},
    ['eastindies'] = {},
    ['englishchannel'] = {},
    ['genoa'] = {},
    ['indianocean'] = {},
    ['ivorycoast'] = {},
    ['kazan'] = {},
    ['kiev'] = {},
    ['krakow'] = {},
    ['lubeck'] = {},
    ['maghreb'] = {},
    ['northamerica'] = {},
    ['northsea'] = {},
    ['novgorod'] = {},
    ['southamerica'] = {},
    ['saxony'] = {},
    ['sevilla'] = {},
    ['wien'] = {},
  }

  -- From this position, the below offsets will be used to determine the location of the 5 maximum influence tokens
  -- Hopefully it works well enough for all regions
  InfluenceLocations = {
    ['algiers'] = {}, ['andalucia'] = {}, ['aquitaine'] = {}, ['aragon'] = {},
    ['austria'] = {}, ['bavariaswabia'] = {}, ['bohemia'] = {}, ['brandenburg'] = {},
    ['brittanynormandy'] = {}, ['burgundy'] = {}, ['castile'] = {}, ['centralitaly'] = {},
    ['corsicasardinia'] = {}, ['dalmatia'] = {}, ['eastanglia'] = {}, ['flanderswallonia'] = {},
    ['gotalandskane'] = {}, ['hungarianplain'] = {}, ['ireland'] = {}, ['jutland'] = {},
    ['languedoc'] = {}, ['leon'] = {}, ['loire'] = {}, ['lombardy'] = {},
    ['lowersaxony'] = {}, ['macaronesia'] = {}, ['naples'] = {}, ['netherlands'] = {},
    ['northernmorocco'] = {}, ['northumbria'] = {}, ['ostlandet'] = {}, ['pomerania'] = {},
    ['portugal'] = {}, ['prussia'] = {}, ['rhineland'] = {}, ['royalhungary'] = {},
    ['saxony'] = {}, ['scotland'] = {}, ['seine'] = {}, ['sicily'] = {},
    ['sjaellandfyn'] = {}, ['southernmorocco'] = {}, ['svealand'] = {}, ['switzerland'] = {},
    ['tirol'] = {}, ['tunisia'] = {}, ['venetia'] = {}, ['waleswesex'] = {},
    ['westphalia'] = {}, ['wielkopoland'] = {},

    ['aegeanarchipelago'] = {}, ['transcaucasia'] = {}, ['astrakhan'] = {}, ['aydin'] = {},
    ['caucasus'] = {}, ['centralrussia'] = {}, ['circassia'] = {}, ['crimea'] = {},
    ['easternukraine'] = {}, ['egypt'] = {}, ['estonialivonia'] = {}, ['finland'] = {},
    ['greece'] = {}, ['iraq'] = {}, ['karaman'] = {}, ['karelia'] = {},
    ['kurdistan'] = {}, ['lithuania'] = {}, ['macedoniathrace'] = {}, ['mazoviamalopolska'] = {},
    ['moldavia'] = {}, ['moscowryazan'] = {}, ['northernanatolia'] = {}, ['novgorod'] = {},
    ['palestine'] = {}, ['perm'] = {}, ['redruthenia'] = {}, ['rum'] = {},
    ['saratov'] = {}, ['serbiaalbania'] = {}, ['syria'] = {}, ['transylvania'] = {},
    ['wallachiabulgaria'] = {}, ['westernukraine'] = {}, ['whiteruthenia'] = {}, ['cyprus'] = {}
  }

  -- Maybe use an offset. Maybe define 5 locations for each area
  InfluenceOffsets = {
    {},
    {},
    {},
    {},
    {},
  }

  TradeProtectionSlots = {
    ['Central Mediterranean'] = { {1.77, -7.90}, {2.55, -7.90} },
    ['Western Mediterranean'] = { {-5.13, -8.31}, {-4.34, -8.34}, {-5.10, -8.34} },
    ['Eastern Mediterranean'] = { {7.02, -9.97}, {7.76, -9.93}, {8.49, -9.93} },
    ['Black Sea'] = { {12.60, -3.93}, {13.31, -3.93}, {14.05, -3.93}},
    ['Aegean Sea'] = { {9.37, -7.21}, {10.08, -7.22} },
    ['Adriatic Sea'] = { {4.23, -5.64}, {4.23, -5.64}, {5.90, -6.00} },
    ['Gulf of Lion'] = { {-1.10, -5.72}, {-1.79, -5.70}, {-2.55, -5.71} },
    ['Central Atlantic'] = { {-12.21, -6.51}, {-12.94, -6.49}, {-12.57, -7.12} },
    ['Eastern Atlantic'] = { {-11.56, -0.91}, {-12.28, -0.89} },
    ['Northeastern Atlantic'] = { {-7.31, 9.92}, {-8.04, 9.92} },
    ['Northwestern Atlantic'] = { {-14.30, 10.97}, {-15.02, 10.97} },
    ['Southwestern Atlantic'] = { {-14.64, 5.15}, {-15.37, 5.15} },
    ['Southeastern Atlantic'] = { {-17.50, 0.53}, {-18.29, 0.53}, {-18.29, -0.08} },
    ['Bay of Biscay'] = { {-7.39, -2.70}, {-8.12, -2.70}, {-8.88, -2.70} },
    ['English Channel'] = { {-6.04, 1.15}, {-5.30, 1.54}, {-4.47, 2.44} },
    ['Doggerbank'] = { {-5.25, 5.59}, {-4.48, 5.59} },
    ['North Sea'] = { {-3.75, 7.19}, {-2.99, 7.19} },
    ['Norwegian Sea'] = { {-3.79, 10.56}, {-4.52, 10.56} },
    ['Skagerrak'] = { {1.51, 7.60}, {1.49, 7.04}, {1.97, 6.61} },
    ['Baltic Sea'] = { {5.25, 5.35}, {5.96, 5.35}, {6.69, 5.34} },
    ['Gulf of Bothnia'] = { {6.76, 9.09}, {6.76, 9.73}, {6.76, 10.35} },
    ['Caribbean Sea'] = { {-14.31, 9.30}, {-14.96, 9.08}, {-15.65, 9.45} },
    ['Southeasten Pacific'] = { {-16.65, 6.46}, {-17.37, 6.46}, {-18.10, 6.46} },
    ['East Africa Coast'] = { {-14.30, 1.27}, {-14.69, -0.16} },
    ['Great Australian Bight'] = { {-17.38, -11.76}, {-18.10, -11.76} },
    ['East Indies'] = { {-18.33, -11.06}, {-18.33, -10.47}, {-18.33, -9.87} },
    ['Sea of Japan'] = { {-15.99, -7.36}, {-15.26, -7.36}, {-14.57, -7.36} },
    ['Indian Ocean'] = { {-16.19, -4.90}, {-16.20, -4.35}, {-16.60, -3.92} }
}

  FleetLocations = {
    ['Central Mediterranean'] = { {0, 0}, {0, 0} },
    ['Western Mediterranean'] = { {0, 0}, {0, 0} },
    ['Eastern Mediterranean'] = { {0, 0}, {0, 0} },
    ['Black Sea'] = { {0, 0}, {0, 0} },
    ['Aegean Sea'] = { {0, 0}, {0, 0} },
    ['Adriatic Sea'] = { {0, 0}, {0, 0} },
    ['Gulf of Lion'] = { {0, 0}, {0, 0} },
    ['Central Atlantic'] = { {0, 0}, {0, 0} },
    ['Eastern Atlantic'] = { {0, 0}, {0, 0} },
    ['Northeastern Atlantic'] = { {0, 0}, {0, 0} },
    ['Northwestern Atlantic'] = { {0, 0}, {0, 0} },
    ['Southwestern Atlantic'] = { {0, 0}, {0, 0} },
    ['Southeastern Atlantic'] = { {0, 0}, {0, 0} },
    ['Bay of Biscay'] = { {0, 0}, {0, 0} },
    ['English Channel'] = { {0, 0}, {0, 0} },
    ['Doggerbank'] = { {0, 0}, {0, 0} },
    ['North Sea'] = { {0, 0}, {0, 0} },
    ['Norwegian Sea'] = { {0, 0}, {0, 0} },
    ['Skagerrak'] = { {0, 0}, {0, 0} },
    ['Baltic Sea'] = { {0, 0}, {0, 0} },
    ['Gulf of Bothnia'] = { {0, 0}, {0, 0} },
    ['Caribbean Sea'] = { {0, 0}, {0, 0} },
    ['Southeasten Pacific'] = { {0, 0}, {0, 0} },
    ['East Africa Coast'] = { {0, 0}, {0, 0} },
    ['Great Australian Bight'] = { {0, 0}, {0, 0} },
    ['East Indies'] = { {0, 0}, {0, 0} },
    ['Sea of Japan'] = { {0, 0}, {0, 0} },
    ['Indian Ocean'] = { {0, 0}, {0, 0} }
}

  --Something like this
  PrestigeLocations = {
    [0] = {x = -19.92, z = -12.69}, --Below the track, in between 1 and 31. Not useful
    [1] = {x = -20.33, z = -11.70}, --On the track
    [60] = {x = -19.49, z = 11.58} -- On the track
  }

  local i = 1
  for x = PrestigeLocations[1].x, PrestigeLocations[60].x, PrestigeLocations[60].x-PrestigeLocations[1].x do --Start, End, Step
    for z = PrestigeLocations[1].z, PrestigeLocations[60].z, (PrestigeLocations[60].z-PrestigeLocations[1].z) / 29 do --Start, End, Step
      PrestigeLocations[i]= {x = x, z = z}
      i = i + 1
    end
  end

function generateMapSnapPoints()

    local main_map = getObjectFromGUID('a19848')
    local main_map_scale = main_map.getScale()

    local all_snap_points = {
      ['Province'] = {
          AfricaMap,
          AmericaMap,
          IndiaMap,
          FarEastMap,
          CentralAsiaMap,
          WesternMap,
          EasternMap
      },
      ['Religion'] = {
          WesternMapReligion,
          EasternMapReligion
      }
    }

  -- log(all_snap_points)

  SNAP_POINTS_TO_GENERATE = {{
    position ={0,1,0},
    rotation = {0, 180, 0},
    rotation_snap = true,
    tags = {"Centre"}
  }}

  for tag,location_tables in pairs(all_snap_points) do
    log("Tag: "..tag)
    -- log(#location_tables)
    for _,table in pairs(location_tables) do
      -- log(#table)
      for name,location in pairs(table) do
        -- log("Location Name: "..name)
        -- log(location)
        -- log({location[1],0,location[2]})
        -- local sp_loc = main_map.positionToLocal({
        --   location[1]/main_map_scale.x, --Too far out for some reason
        --   0.6,
        --   location[2]/main_map_scale.z
        -- })
        local sp_loc = main_map.positionToLocal({
          location[1],
          1.0,
          location[2]
        })
        local sp = {
          position = sp_loc,
          rotation_snap = true,
          tags = {tag}
        }
        -- log(sp)
        -- if snap_points_to_generate == nil then
        --   snap_points_to_generate = {}
        -- end
        -- log(snap_points_to_generate)
        --table.insert(snap_points_to_generate, sp)
        SNAP_POINTS_TO_GENERATE[#SNAP_POINTS_TO_GENERATE+1] = sp
        -- table.insert(snap_points_to_generate, {p=1,c=2})
        -- log("Point inserted")
        end
      end
  end

  local tag = "NavalUnit"
  for zone,points in pairs(TradeProtectionSlots) do
    for _,point in pairs(points) do
        local sp_loc = main_map.positionToLocal({
        point[1],
        1.0,
        point[2]
        })
        local sp = {
        position = sp_loc,
        rotation_snap = true,
        tags = {tag}
        }
        SNAP_POINTS_TO_GENERATE[#SNAP_POINTS_TO_GENERATE+1] = sp
    end
  end

  ROUNDED_TPS = {}
  for zone,points in pairs(TradeProtectionSlots) do
    for _,point in pairs(points) do
        local rounded_point = {
        x = math.floor(point[1]*20+0.5)/20,
        y = 1.06,
        z = math.floor(point[2]*20+0.5)/20
        }
        ROUNDED_TPS[rounded_point.x..'||'..rounded_point.z] = true
    end
  end

  local tag = "Score"
  for score,point in pairs(PrestigeLocations) do
    local sp_loc = main_map.positionToLocal({
      point.x,
      1.0,
      point.z
    })
    local sp = {
      position = sp_loc,
      rotation_snap = true,
      tags = {tag}
    }
    SNAP_POINTS_TO_GENERATE[#SNAP_POINTS_TO_GENERATE+1] = sp
  end

  return 1
end

function onObjectDrop(pc,dropped_object)

  if dropped_object.hasTag("NavalUnit") then
    log("Naval Unit Dropped")

    Wait.condition(
    function() -- Executed after our condition is met
      local pos = dropped_object.getPosition() --This triggers as soon as it is dropped. Really, we should wait for it to land and stop moving
      local rounded_pos = {
        x = math.floor(pos.x*20+0.5)/20,
        y = 1.06,
        z = math.floor(pos.z*20+0.5)/20,
      }
      
      log(rounded_pos)
      log(ROUNDED_TPS[rounded_pos.x..'||'..rounded_pos.z]) --Also, this returns an error if it doesn't match the x position. Probably a better way to do it.

      if ROUNDED_TPS[rounded_pos.x..'||'..rounded_pos.z] then
        if changeRotationValue(dropped_object, -1) == "#side" then
          dropped_object.setPosition(dropped_object.getPosition() + Vector(0,0,-0.1))
        else
          dropped_object.setPosition(dropped_object.getPosition() + Vector(0,0,0.1))
        end
      end

    end,
    function() -- Condition function
      return dropped_object.isDestroyed() or dropped_object.resting
    end
    )
  end

  -- The old code
  if dropped_object.hasTag("Score") then
    Wait.condition(
      function() outputDroppedScoreObjectScore(dropped_object) end,
      function() return dropped_object.resting end,
      5,
      function() outputDroppedScoreObjectScore(dropped_object) end
    )
  end
end