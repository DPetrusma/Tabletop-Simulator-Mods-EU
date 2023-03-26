--[[
  ------------------------------------------------
  ------------------------------------------------
                Scenario Set-up Data
  ------------------------------------------------
  ------------------------------------------------
--]]

Scenario_List = { 
  ['0-00'] = { players = {false, false, false, false, false, false}, active = true, name = 'Manual Setup', tooltip = 'If you want to set up your game by hand', },
  ['1-00'] = { players = {false, false,  true, false, false, false}, active = true, name = 'Introductory Scenario (3p)', tooltip = 'This scenario is intended for a group of players that are new to the game.', },
  ['1-01'] = { players = {false, false,  true,  true,  true, false}, active = true, name = 'Discovery and Reformation (3-5p)', },
  ['1-02'] = { players = {false, false,  true, false, false, false}, active = true, name = 'Imperial Waltz (3p+1-2b)', },
  ['1-03'] = { players = {false, false,  true,  true, false, false}, active = true, name = 'Sea Route to India (3-4p)', },
  ['1-04'] = { players = {false,  true,  true,  true, false, false}, active = true, name = 'The Wars of Religion (2-4p)', },
  ['1-05'] = { players = {false, false, false,  true, false,  true}, active = true, name = 'The Bourbonic Plague (4/6p)', },
  ['1-06'] = { players = { true, false, false, false, false, false}, active = true, name = 'The Ambitious Margrave (solo)', },
  ['2-01'] = { players = {false, false, false, false, false,  true}, active = true, name = 'The Grand Campaign (6p)', },
  ['2-02'] = { players = {false, false, false,  true,  true,  true}, active = true, name = 'The Enemy at the Gates (4-6p)', },
  ['2-03'] = { players = {false, false, false, false,  true,  true}, active = true, name = 'Mediterranean Dominance (5-6p)', },
  ['2-04'] = { players = {false, false, false, false, false,  true}, active = true, name = 'Napoleon Rising (6p)', },
  ['2-05'] = { players = {false, false, false, false, false,  true}, active = true, name = 'Here I Stand Once More (6p)', },
  ['2-06'] = { players = { true, false, false, false, false, false}, active = true, name = 'The Rise of the Purple Phoenix (solo)' },
  ['2-07'] = { players = { true, false, false, false, false, false}, active = true, name = 'Glory for Ulm (solo)' },
}

Scenario_List['0-00'].description = [[This option lets you do the setup by hand. It places the play mats for all six players and their associated components. After this any additions and changes are left to the players to handle.]]
  
Scenario_List['1-00'].description = [[This scenario is intended for a group of players that are new to the game. The scenario begins at the standard 1444 starting point and lasts for two Rounds (the first half of Age I). This is enough to famil­iarize yourself with all of the basics, as well as the flow, of the game.]]
Scenario_List['1-00'].options = { [9] = { name = 'hide'} }
Scenario_List['1-00'].variants = { 
  { name = '3 Players', age = 1, last_age = 1, book = {1,2}, player_realms = {
      [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, '1444'}, rem_missions = {'4B', '4E'}, start_missions = {'1A','1B'}, start = true },
      [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, '1444'}, rem_missions = {'3E', '4C'}, start_missions = {'1A','1B'}, },
      [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england, '1444'}, rem_missions = {'2C', '3G'}, start_missions = {'1A','1C'}, },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'153b', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8},
      {'11a-3', 1}, {'12a-2', 1}, {'13a-2', 1}, {'14a-2', 1}, {'155b', 1}, {'102-2', 1}, {'103-2', 1}, {'104-2', 1},
    }, ideas = { admin = {}, diplo = {}, war = {} }, curia = {REALM.none, REALM.castile, REALM.france, REALM.england, }, 
    milestones = { eco = Milestone_Card_GUIDs.age1.eco.cabinet, exp = Milestone_Card_GUIDs.age1.exp.fleet, pol = Milestone_Card_GUIDs.age1.pol.dynastic, war = Milestone_Card_GUIDs.age1.war.victorious },
  },
} 


Scenario_List['1-01'].description = [[This scenario is quite well suited for an inexperienced group of play­ers, but if no one in the group has played before, we recommend watching the Extended Gameplay Example first (www.aegirgames.com/europa-universalis/resources).

>France and ›England begin with a higher Tax Income than the two other Realms, but they are likely to get entangled in conflicts with each other while ›Castile and ›Austria can usually enjoy a quieter start. ›France might edge a head­on battle, but a strategic Alliance can change that. On the other hand, ›England enjoys a more protected po­sition on its island home base, with no other powerful enemies nearby.

›	France will need to avoid having too many enemies at once.
›	Castile may seem somewhat weaker at the outset, but they have a great chance of forging a diplomatic union with ›Aragon to be come a real powerhouse. ›Castile also has the best position for early­game exploration and building their colonial empire.

> Austria is the most isolated of the four Realms. While their Realm is rather small, they also hold the Holy Roman Emperor title. This provides them with a great deal of additional power, which comes with extra responsibilities. ›Austria has a tougher second Age. As the Em­peror, they must be familiar with some extra rules.

With the Deluxe Edition or the Fate of Empires Expansion you can play this scenario with five players instead of four, by adding ›Den­mark as a PR
]]
Scenario_List['1-01'].options = {
  [1] = {name = 'Ages to play:', values = {'1','2','3'}, default = 2, info = 'How many ages should the game be set up for?' },
  [2] = {name = 'DNPR Portugal', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Portugal using green tokens?' },
  [3] = {name = 'DNPR Denmark', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Denmark using pink tokens?' },
  [4] = {name = 'Power Struggles', values = {'On','Off'}, default = 2, info = [[Set up power struggles:
  
If you decide to include Power Struggles in your game, we recommend using The Italian Wars as the first and Distant Trade as the second, both triggering in Age II. If also playing Age III, you may include Thirty Years' War, triggering on the first icon in Age III.]] },
}
Scenario_List['1-01'].variants = { 
  { name = '3 Players', age = 1, last_age = 3, book = {1,3}, player_realms = {
      [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, '1444'}, rem_missions = {'4B', '4E'}, start_missions = {'1A','1B','1C'}, start = true },
      [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, '1444'}, rem_missions = {'3E', '4C'}, start_missions = {'1A','1B','1C'}, },
      [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england, '1444'}, rem_missions = {'2C', '3G'}, start_missions = {'1A','1B','1C'}, },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'157b', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8},
      {'11a-3', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7},
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'255b', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3},
    }, curia = {REALM.none, REALM.castile, REALM.france, REALM.england, }, DNPR_Pink_L = { 
      WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
    }, DNPR_Green_S = { 
      WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest},
    powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war },
  },
  { name = '4 Players', age = 1, last_age = 1, book = {1,3}, player_realms = {
      [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, '1444'}, rem_missions = {'4B', '4E'}, start_missions = {'1A','1B','1C'}, start = true },
      [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, '1444'}, rem_missions = {'3E', '4C'}, start_missions = {'1A','1B','1C'}, },
      [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england, '1444'}, rem_missions = {'2C', '3G'}, start_missions = {'1A','1B','1C'}, },
      [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, '1444'}, rem_missions = {'4B', '4E'}, start_missions = {'1A','1B','1C'}, },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'157b', 8}, {'101-1', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'159b', 7}, {'101-2', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7},
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'261b', 6}, {'201-1', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'256b', 5}, {'201-2', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'353b', 4}, {'301-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'358b', 3}, {'301-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3},
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
    curia = {REALM.none, REALM.castile, REALM.austria, REALM.france, REALM.england, }, DNPR_Pink_L = { 
      WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
    }, DNPR_Green_S = { 
      WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest},
    powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war },
  },
  { name = '5 Players', age = 1, last_age = 1, book = {1,3}, player_realms = {
      [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, '1444'}, rem_missions = {'4B','4E'}, start_missions = {'1A','1B','1C'}, start = true },
      [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, '1444'}, rem_missions = {'3E','4C'}, start_missions = {'1A','1B','1C'} },
      [REALM.england] ={ seat = 3, color = 'red', realm = {REALM.england, '1444'}, rem_missions = {'2C','3G'}, start_missions = {'1A','1B','1C'} },
      [REALM.denmark] = { seat = 4, color = 'purple', realm = {REALM.denmark, '1444'}, rem_missions = {'3C','4A'}, start_missions = {'1A','1B','1C'} },
      [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, '1444'}, rem_missions = {'4B','4E'}, start_missions = {'1A','1B','1C'} },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'157b', 8}, {'101-1', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8}, {'108-1', 8}, {'154b', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'159b', 7}, {'101-2', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7}, {'108-2', 7}, {'156b', 7},
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'261b', 6}, {'201-1', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6}, {'208-1', 6}, {'259b', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'256b', 5}, {'201-2', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5}, {'208-2', 5}, {'258b', 5}
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'353b', 4}, {'301-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4}, {'308-1', 4}, {'355b', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'358b', 3}, {'301-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}, {'308-2', 3}, {'356b', 3}
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
    curia = {REALM.none, REALM.castile, REALM.austria, REALM.france, REALM.england, REALM.denmark, }, DNPR_Green_S = { 
      WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest}, 
      powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war }, options = { [3] = { name = 'hide'} }
  },
}


Scenario_List['1-02'].description = [[In this scenario the players face the struggle of three minor nations fighting to survive, and eventually trying to grow and flourish, in the periphery of a Holy Roman Empire dominated by the powerful Em­peror, AustriaBot. The players must carefully plan their strategies, not getting over­confident in their advance within the Holy Roman Empire, as the Emperor will not tolerate anyone trying to outclass him and will be swift dealing with unprepared opponents. Playing through this scenario is a good way for players to familiar­ize themselves with the Solo & Bot rules, and learning how to handle Bots. It is also an interesting challenge to play as a minor Realm that has to weigh its options more carefully, using less brute force, and a more subtle approach, than when playing as a Major Power. At times the players will likely benefit from cooperating with one or even both of the other players. Sometimes they might also be able to take advantage of the actions of the Bot, or even manipulate the Bot into doing things that work in their favor.

With careful resource management and skilled diplomacy each of these three minor Realms have the potential to grow into powerful states, eventually perhaps even eclipsing the might of the Emperor.]]
Scenario_List['1-02'].options = {
  [1] = {name = 'Netherlands start:', values = {'Amsterdam','Brugge','Antwepen'}, info = [[Starting towns for the Netherlands start:
  Amsterdam & Zeeland
  Brugge & Gent
  Antwerpen & Breda]], },
  [3] = {name = 'DNPR Denmark', values = {'On','Off'}, info = 'Set up a dynamic NPR for Denmark using pink tokens?', },
  [4] = {name = 'Power Struggles', values = {'On','Off'}, default = 2, info = [[Set up power struggles:
  
  If you decide to include Power Struggles in your game, we recommend using The Italian Wars in Age II and Thirty Years' War in Age III, both triggering on the first, bright white, Power Struggle icon in each Age. Both will likely draw AustriaBot's attention towards targets close to the homelands of the other PRs, with ›Papal States seeing the most action during the first Power Struggle and ›Brandenburg the most during the last, while ›Netherlands will get a taste of it during both.]], },
}
Scenario_List['1-02'].variants = {
  { name = '3 Players + 1 Bot', age = 1, last_age = 3, book = {1,4}, board = MAIN_BOARD_STATE.s1_02, player_realms = {
    [REALM.papal] = { seat = 1, color = 'red', realm = {REALM.papal, '1444'}, rem_missions = {'3H', '4P'}, start_missions = {'1F','1A','1C'}, locked = true, start = true },
    [REALM.netherlands] = { seat = 4, color = 'yellow', realm = {REALM.netherlands, '1444'}, rem_missions = {'2H - Fight', '3B - Establish'}, start_missions = {'1D','1C','1F'}, },
    [REALM.brandenburg] ={ seat = 5, color = 'blue', realm = {REALM.brandenburg, '1444' }, rem_missions = {'2F - Baltic', '2I - Join'}, start_missions = {'1C','1A','1F'}, },
    [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, '1444'}, bot = true }, }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'156b', 8}, {'101-1', 8}, {'111-1', 8}, {'112-1', 8}, {'113-1', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'155b', 7}, {'159b', 7}, {'101-2', 7}, {'111-2', 7}, {'112-2', 7}, {'113-2', 7}
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'256b', 6}, {'259b', 6}, {'201-1', 6}, {'211-1', 6}, {'212-1', 6}, {'213-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'255b', 5}, {'258b', 5}, {'201-2', 5}, {'211-2', 5}, {'212-2', 5}, {'213-2', 5}
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'355b', 4}, {'360b', 4}, {'301-1', 4}, {'311-1', 4}, {'312-1', 4}, {'313-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'356b', 3}, {'301-2', 3}, {'311-2', 3}, {'312-2', 3}, {'313-2', 3}
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
    curia = {REALM.papal, REALM.austria, REALM.netherlands, REALM.brandenburg, }, DNPR_Blue_L = { 
      WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon, WesternMap.berry, WesternMap.bourbon, WesternMap.limousin,
      WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.toulouse, WesternMap.montpellier,
    }, DNPR_Pink_S = { 
      WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest,
       WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina,}, 
      powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.thirty_years_war }, remove = {{-5.43, -5.16, 'Cube'}, },
      options = {[2] = {name = 'DNPR France', values = {'On','Off'}, info = 'Set up a dynamic NPR for France using blue tokens?', },},
  },
  { name = '3 Players + 2 Bots', age = 1, last_age = 3, book = {1,4}, board = MAIN_BOARD_STATE.s1_02, player_realms = {
    [REALM.papal] = { seat = 2, color = 'red', realm = {REALM.papal, '1444'}, rem_missions = {'3H', '4P'}, start_missions = {'1F','1A','1C'}, locked = true, start = true },
    [REALM.netherlands] = { seat = 3, color = 'yellow', realm = {REALM.netherlands, '1444'}, rem_missions = {'2H - Fight', '3B - Establish'}, start_missions = {'1D','1C','1F'}, },
    [REALM.brandenburg] ={ seat = 5, color = 'blue', realm = {REALM.brandenburg, '1444'}, rem_missions = {'2F - Baltic', '2I - Join'}, start_missions = {'1C','1A','1F'}, },
    [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, '1444'}, bot = true },
    [REALM.france] = { seat = 1, color = 'purple', realm = {REALM.france, '1444'}, bot = true }, }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'156b', 8}, {'152b', 8}, {'101-1', 8}, {'104-1', 8}, {'111-1', 8}, {'112-1', 8}, {'113-1', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'155b', 7}, {'159b', 7}, {'154b', 7}, {'101-2', 7}, {'104-2', 7}, {'111-2', 7}, {'112-2', 7}, {'113-2', 7}
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'256b', 6}, {'259b', 6}, {'254b', 6}, {'201-1', 6}, {'204-1', 6}, {'211-1', 6}, {'212-1', 6}, {'213-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'255b', 5}, {'258b', 5}, {'262b', 5}, {'201-2', 5}, {'204-2', 5}, {'211-2', 5}, {'212-2', 5}, {'213-2', 5} -- 257B as placeholder for duplicate
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'355b', 4}, {'360b', 4}, {'354b', 4}, {'301-1', 4}, {'304-1', 4}, {'311-1', 4}, {'312-1', 4}, {'313-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'356b', 3}, {'359b', 3}, {'301-2', 3}, {'304-2', 3}, {'311-2', 3}, {'312-2', 3}, {'313-2', 3}
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
      curia = {REALM.papal, REALM.austria, REALM.france, REALM.netherlands, REALM.brandenburg, }, DNPR_Pink_S = { 
      WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest,
       WesternMap.sardenya, WesternMap.palermo, WesternMap.mesina,}, powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.thirty_years_war },
       remove = {{-5.43, -5.16, 'Cube'}, {-7.80, 6.45,'Alliance'}, {-9.02, 7.22,'Cube'}, {-9.02, 6.84,'Cube'},},
  },
}


Scenario_List['1-03'].description = [[This scenario starts with the second half of Age I. This means that there will be just two rounds for Age I. There are are some slight changes to each PR's setup, as compared to the 1444 Setup Cards. As the smallest Realm,
› Portugal has a tough start. However, they have the upper hand in the colonial race since they have “Quest for the New World” researched from the beginning. They may have to divide their efforts between expanding and defending against their stronger neighbor to the east. Their alliance with ›England may prove valu­able – if the English are willing to stand by them.
> Castile can wait for Columbus and start by consolidating the lands closest to them, or they may instead channel their efforts into be coming the new masters of the Distant Continents.
> England and ›France have seemingly buried the hatchet. Will France now start looking beyond its immediate horizons, or will it once again put its trust in military prowess? Although ›England may have suffered from losing their continental posessions to ›France, they should be in a great position to focus on maritime efforts.
]]
Scenario_List['1-03'].variants = {
  { name = '3 Players', age = 1, last_age = 3, book = {1,5}, player_realms = {
      [REALM.portugal] = { seat = 1, color = 'white', realm = {REALM.portugal, 'S103'}, rem_missions = {'2D - Found', '3B - Dominate'}, start_missions = {'1B','1D'}, start = true },
      [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, 'S103'}, rem_missions = {'3E','4C'}, done_missions = {'1B'}, start_missions = {'1A','1C'}, },
      [REALM.england] ={ seat = 3, color = 'red', realm = {REALM.england, 'S103'}, rem_missions = {'2C', '3G'}, start_missions = {'1A','1B'}, },
    }, age_1_events = {
      {'11a-3', 7}, {'12a-1', 7}, {'13a-1', 7}, {'14a-1', 7}, {'155b', 7}, {'102-2', 7}, {'103-2', 7}, {'110-2', 7}
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-4', 6}, {'253b', 6}, {'202-1', 6}, {'203-1', 6}, {'210-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'202-2', 5}, {'203-2', 5}, {'210-2', 5}
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'352b', 4}, {'302-1', 4}, {'303-1', 4}, {'310-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'361b', 3}, {'302-2', 3}, {'303-2', 3}, {'310-2', 3}
    }, ideas = {
      diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, { REALM.portugal }}, '', ''},
    }, curia = {REALM.none, REALM.castile, REALM.portugal, REALM.england, }, trade_add_tags = {'Trade2'}, DNPR_Blue_L = { 
      WesternMap.paris, WesternMap.rennes, WesternMap.nantes, WesternMap.maine, WesternMap.normandie, WesternMap.caux, 
      WesternMap.picardie, WesternMap.artois, WesternMap.bordeaux, WesternMap.anjou, WesternMap.bourgogne, WesternMap.provence,
    }, options = {[1] = {name = 'DNPR France', values = {'On','Off'}, info = 'Set up a dynamic NPR for France using blue tokens?', },},
  },
  { name = '4 Players', age = 1, last_age = 3, book = {1,5}, player_realms = {
    [REALM.portugal] = { seat = 2, color = 'white', realm = {REALM.portugal, 'S103'}, rem_missions = {'2D - Found', '3B - Dominate'}, start_missions = {'1B','1D'}, start = true },
    [REALM.castile] = { seat = 3, color = 'yellow', realm = {REALM.castile, 'S103'}, rem_missions = {'3E','4C'}, done_missions = {'1B'}, start_missions = {'1A','1C'}, },
    [REALM.england] ={ seat = 4, color = 'red', realm = {REALM.england, 'S103'}, rem_missions = {'2C', '3G'}, start_missions = {'1A','1B'}, },
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, 'S103'}, rem_missions = {'4B', '4E'}, done_missions = {'1A','1B','1C'}, start_missions = {'2A','2B'}, },
  }, age_1_events = {
    {'11a-3', 7}, {'12a-1', 7}, {'13a-1', 7}, {'14a-1', 7}, {'155b', 7}, {'156b', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7}, {'110-2', 7}
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-4', 6}, {'253b', 6}, {'257b', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6}, {'210-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'254b', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5}, {'210-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'351b', 4}, {'352b', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4}, {'310-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'357b', 3}, {'361b', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}, {'310-2', 3}
  }, ideas = {
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, { REALM.portugal }}, '', ''},
  }, curia = {REALM.none, REALM.castile, REALM.france, REALM.portugal, REALM.england, }, trade_add_tags = {'Trade2'}, DNPR_Blue_L = { 
    WesternMap.wien, WesternMap.osterreich, WesternMap.steiermark, WesternMap.karnten, WesternMap.lienz, WesternMap.tirol,
    WesternMap.krain, WesternMap.sundgau, WesternMap.franchecomte, WesternMap.namur, WesternMap.luxembourg,
  }, options = {[1] = {name = 'DNPR Austria', values = {'On','Off'}, info = 'Set up a dynamic NPR for Austria using blue tokens?', },}, },
}


Scenario_List['1-04'].description = [[This scenario starts at the beginning of Age II (skipping Age I). This means that this scenario's map situation will be very different from any scenarios that start in Age I. Two of the Major Powers in this scenario, ›France and ›Castile have firmly consolidated their territorial power bases. The same is true to some extent for ›Austria, but ›England is territorially in a weaker state compared to where it is when starting in Age I. ›Austria and ›England are compensated with some starting 0 as noted in the Setup Instructions. This means that this scenario is best suited for 2–3 players, using ›	England as a Bot, while the players assume control of ›France and ›	Castile. ›Austria can be either a third human player, or a second Bot. Larger territorial possessions and less space to expand into at the start of the game means that players are likely to enter conflict with each other relatively early. While Spain and Austria were historically united for most of the time period covered in this scenario, there are no special restrictions as to whom PRs may Ally with or against.
]]
Scenario_List['1-04'].options = {
  [1] = {name = 'DNPR Portugal', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Portugal using green tokens?' },
  [2] = {name = 'DNPR Venice', values = {'On','Off'}, default = 2, info = 'Set up a dynamic NPR for Venice using blue tokens?' },
  [4] = {name = 'Power Struggles', values = {'Ordered','Random','Off'}, default = 3, info = [[Set up power struggles:
  
  If you decide to include Power Struggles in your game, we recommend randomizing the order of The Italian Wars and Distant Trade as the first two Power Struggles, both triggering in Age II, and use Thirty Years' War as the third, triggering on the first Power Struggle symbol in Age III.]] },
}
Scenario_List['1-04'].variants = { 
  { name = '2 Players (no bots)', age = 2, last_age = 3, book = {1,6}, draw_per_round = 4, player_realms = {
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, 'S104'}, start_missions = {'2A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C'}, extra_mp = 2, locked = true, start = true },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, 'S104'}, start_missions = {'2B','2C','3A'}, rem_missions = {'3E','4C'}, done_missions = {'1A','1B','1C','2A','2D'}, extra_mp = 2, locked = true, },
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'260b', 6}, {'255b', 6}, {'202-1', 6}, {'259b', 6}, {'204-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'254b', 5}, {'258b', 5}, {'202-2', 5}, {'261b', 5}, {'204-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'357b', 4}, {'360b', 4}, {'302-1', 4}, {'361b', 4}, {'304-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'354b', 3}, {'351b', 3}, {'355b', 3}, {'302-2', 3}, {'359b', 3}, {'304-2', 3}
  }, ideas = {
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, { REALM.castile, }}, {Idea_Card_GUIDs.diplo.cabinet, { }}, ''},
    war = {{Idea_Card_GUIDs.war.cannons, { REALM.castile, REALM.france, }}, {Idea_Card_GUIDs.war.glorious_arms, {REALM.france}}, ''},
  }, empire = { authority = 4, },
  curia = {REALM.none, REALM.castile, REALM.france, }, trade_add_all = true, DNPR_Green_L = {
    WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira, AfricaMap.angola, IndiaMap.goa, FarEastMap.malacca,
  }, DNPR_Blue_S = {
    WesternMap.venezia, WesternMap.verona, WesternMap.treviso, WesternMap.brescia, WesternMap.zara,
  }, DNPR_Pink_L = {
    WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
  }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest}, 
  powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war },
  options = {[3] = {name = 'Add Extra DNPR', values = {'Off','Denmark','Poland'}, info = 'Set up a dynamic NPR for Denmark or Poland using pink tokens?', },}, },
  { name = '3 Players', age = 2, last_age = 3, book = {1,6}, player_realms = {
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, 'S104'}, start_missions = {'2A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C'}, extra_mp = 2, start = true },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, 'S104'}, start_missions = {'2B','2C','3A'}, rem_missions = {'3E','4C'}, done_missions = {'1A','1B','1C','2A','2D'}, extra_mp = 2, },
    [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, 'S104'}, extra_mp = 2, start_missions = {'1A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1B','1C','2D'}, prestige = 5, },
  },age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'201-1', 6}, {'202-1', 6}, {'204-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'262b', 5}, {'201-2', 5}, {'202-2', 5}, {'204-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'301-1', 4}, {'302-1', 4}, {'304-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'354b', 3}, {'301-2', 3}, {'302-2', 3}, {'304-2', 3}
  }, ideas = {
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, { REALM.castile, }}, {Idea_Card_GUIDs.diplo.cabinet, {REALM.austria}}, ''},
    war = {{Idea_Card_GUIDs.war.cannons, { REALM.castile, REALM.austria, REALM.france, }}, {Idea_Card_GUIDs.war.glorious_arms, {REALM.france}}, ''},
  }, empire = { ruler = REALM.austria, authority = 4, influence = {HRE_Influence_Map_Pos.central_italy, HRE_Influence_Map_Pos.lombardy, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.castile, REALM.austria, REALM.france, }, trade_add_all = true, DNPR_Green_L = {
    WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira, AfricaMap.angola, IndiaMap.goa, FarEastMap.malacca,
  }, DNPR_Blue_S = {
    WesternMap.venezia, WesternMap.verona, WesternMap.treviso, WesternMap.brescia, WesternMap.zara,
  }, DNPR_Pink_L = {
    WesternMap.london, WesternMap.oxford, WesternMap.essex, WesternMap.shrewsbury, WesternMap.wales, WesternMap.wessex, WesternMap.lancashire, WesternMap.york, WesternMap.northumberland, WesternMap.pale,
  }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest}, 
  powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war }, },
  { name = '4 Players', age = 2, last_age = 3, book = {1,6}, player_realms = {
    [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, 'S104'}, start_missions = {'1A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1B','1C','2D'}, extra_mp = 2, prestige = 5, start = true },
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france, 'S104'}, start_missions = {'2A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C'}, extra_mp = 2, },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, 'S104'}, start_missions = {'2B','2C','3A'}, rem_missions = {'3E','4C'}, done_missions = {'1A','1B','1C','2A','2D'}, extra_mp = 2, },
    [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england, 'S104'}, start_missions = {'1B','1C','2A'}, rem_missions = {'2C','3G'}, done_missions = {'1A'}, extra_mp = 2, prestige = 10, bot = true},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'253b', 6}, {'260b', 6}, {'201-1', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'256b', 5}, {'262b', 5}, {'201-2', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'353b', 4}, {'301-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'354b', 3}, {'356b', 3}, {'301-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}
  }, ideas = {
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, { REALM.castile, REALM.england }}, {Idea_Card_GUIDs.diplo.cabinet, {REALM.austria}}, ''},
    war = {{Idea_Card_GUIDs.war.cannons, { REALM.castile, REALM.england, REALM.austria, REALM.france, }}, {Idea_Card_GUIDs.war.glorious_arms, {REALM.france}}, ''},
  }, empire = { ruler = REALM.austria, authority = 4, influence = {HRE_Influence_Map_Pos.central_italy, HRE_Influence_Map_Pos.lombardy, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.castile, REALM.austria, REALM.france, REALM.england }, trade_add_all = true, DNPR_Green_L = {
    WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira, AfricaMap.angola, IndiaMap.goa, FarEastMap.malacca,
  }, DNPR_Blue_S = {
    WesternMap.venezia, WesternMap.verona, WesternMap.treviso, WesternMap.brescia, WesternMap.zara,
  }, DNPR_Pink_L = {
    WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
  }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest}, 
  powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.distant_trade, PS_GUIDs.thirty_years_war },
  options = {[3] = {name = 'Add Extra DNPR', values = {'Off','Denmark','Poland'}, info = 'Set up a dynamic NPR for Denmark or Poland using pink tokens?', }, }, }
}


Scenario_List['1-05'].description = [[>Spain I (Castile) will need to send their armies across Europe to de­fend their many domains across Italy, Burgundy, and the Low Coun­tries. Threats arise both in Europe and on the Distant Continents.

> France has a cohesive domain, but is surrounded by › Spanish holdings on all sides, and faces Religious Dissent in their lands. Can they find an opportunity to strike at the Habsburgs amidst all this?

> Austria must deal with the disruptions of the Thirty Years' War. As the Holy Roman Emperor, they must quell Protestant Revolts while defending their Imperial borders from ›France and the ›Otto­mans.

> Netherlands, being the smallest PR in the mix, will need to plan carefully to realize their ambition of reuniting the entirety of the Low Countries under their rule. Their Distant Provinces can provide the wealth needed to pay for life­saving Mercenary Armies.
]]
Scenario_List['1-05'].options = {
  [1] = {name = 'DNPR Hungary', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Hungary using pink tokens?' },
  [2] = {name = 'DNPR Peru', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Viceroyalty of Peru using green tokens?' },
  [3] = {name = 'DNPR New Spain', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Viceroyalty of New Spain using orange tokens?' },
}
Scenario_List['1-05'].variants = {
  { name = '4 Players', age = 3, last_age = 3, book = {1,7}, board = MAIN_BOARD_STATE.base_1618, player_realms = {
    [REALM.austria] = { seat = 6, color = 'white', realm = {REALM.austria, '1618'}, start_missions = {'2A','2C','2D'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C','2B','3B'}, extra_mp = 3, start = true },
    [REALM.castile] = { name = 'Spain', seat = 1, color = 'yellow', realm = {REALM.castile, '1618'}, no_missions = true, extra_mp = 3, },
    [REALM.netherlands] = { seat = 2, color = 'red', realm = {REALM.netherlands, 'S105'}, start_missions = {'1D','1C','1F'}, rem_missions = {'2H - Fight','3B', '3K'}, add_missions = {'3A'}, extra_mp = 3, },
    [REALM.france] = { seat = 3, color = 'blue', realm = {REALM.france, 'S105'}, start_missions = {'2A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C'}, extra_mp = 3, },
  }, draw_per_round = 4, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'353b', 4}, {'354b', 4}, {'360b', 4}, {'301-1', 4}, {'302-1', 4}, {'304-1', 4}, {'311-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'356b', 3}, {'359b', 3}, {'361b', 3}, {'301-2', 3}, {'302-2', 3}, {'304-2', 3}, {'311-2', 3}
  }, ideas = {
    admin = {{Idea_Card_GUIDs.admin.tolerance, {}}, {Idea_Card_GUIDs.admin.deus_vult, {REALM.austria}}, '', ''},
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, {REALM.france, REALM.netherlands, REALM.castile }}, {Idea_Card_GUIDs.diplo.cabinet, {REALM.austria}}, {Idea_Card_GUIDs.diplo.mercantilism, {REALM.france}}, {Idea_Card_GUIDs.diplo.free_trade, {REALM.netherlands}}},
    war = {{Idea_Card_GUIDs.war.cannons, {REALM.netherlands, REALM.france, REALM.austria, REALM.castile}}, {Idea_Card_GUIDs.war.tercios_janissaries, {REALM.castile}}, {Idea_Card_GUIDs.war.line_infantry, {REALM.netherlands}}, ''}
  }, empire = { ruler = REALM.austria, authority = 2, influence = {HRE_Influence_Map_Pos.bavaria_swabia, HRE_Influence_Map_Pos.rhineland} },
  curia = {REALM.none, REALM.castile, REALM.france, REALM.austria, }, trade_add_all = true, DNPR_Pink_S = {
    WesternMap.pozsony, WesternMap.sopron, WesternMap.zagreb, WesternMap.rijeka,
  }, DNPR_Green_L = {
    AmericaMap.cuzco, AmericaMap.quito, AmericaMap.newgranada, AmericaMap.charcas, AmericaMap.chile, AmericaMap.laplata,    
  }, DNPR_Orange_S = { 
    AmericaMap.mexico, AmericaMap.centralamerica, AmericaMap.florida, AmericaMap.antilles,
  }, powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.thirty_years_war }, remove = {{6.74, -0.30, 'SmallTown'}, },
  options = {[4] = {name = 'Power Struggles', values = {'On','Off'}, default = 2, info = [[Set up power struggles:
  
  We recommend using The Italian Wars and Thirty Years' War, in random order. ›Spain I should count all Provinces Owned by ›Spain II as if they were their own when scoring Prestiege for Power Struggles.]]}, },},
  { name = '6 Players (Team)', age = 3, last_age = 4, book = {1,7}, board = MAIN_BOARD_STATE.base_1618, player_realms = {
    [REALM.england] = { seat = 4, color = 'red', realm = {REALM.england, '1618'}, start_missions = {'1A','1B','1C'}, rem_missions = {'3E'}, extra_mp = 3, start = true },
    [REALM.austria] = { seat = 5, color = 'white', realm = {REALM.austria, '1618'}, start_missions = {'2A','2C','2D'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C','2B','3B'}, extra_mp = 3, },
    [REALM.castile] = { name = 'Spain I', seat = 6, color = 'yellow', realm = {REALM.castile, '1618'}, no_missions = true, extra_mp = 3, },
    [REALM.netherlands] = { seat = 1, color = 'green', realm = {REALM.netherlands, 'S105'}, start_missions = {'1D','1C','1F'}, rem_missions = {'2H - Fight','3B'}, extra_mp = 3, },
    [REALM.france] = { seat = 2, color = 'blue', realm = {REALM.france, '1618'}, start_missions = {'2A','2B','2C'}, rem_missions = {'4B','4E'}, done_missions = {'1A','1B','1C'}, extra_mp = 3, },
    [REALM.aragon] = { name = 'Spain II' ,seat = 3, color = 'purple', realm = {REALM.aragon, '1618'}, no_missions = true, extra_mp = 3, locked = true, },
  }, draw_per_round = 6, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'355b', 4}, {'360b', 4},
    {'301-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4}, {'311-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'357b', 3}, {'362b', 3},
    {'301-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}, {'311-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'451b', 2}, {'452b', 2}, {'455b', 2},
    {'401-1', 2}, {'402-1', 2}, {'403-1', 2}, {'404-1', 2}, {'411-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'456b', 1}, {'457b', 1}, {'458b', 1},
    {'401-2', 1}, {'402-2', 1}, {'403-2', 1}, {'404-2', 1}, {'411-2', 1},
  }, ideas = {
    admin = {{Idea_Card_GUIDs.admin.tolerance, {}}, {Idea_Card_GUIDs.admin.deus_vult, {REALM.austria}}, '', ''},
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, {REALM.france, REALM.netherlands, REALM.castile, REALM.england}}, {Idea_Card_GUIDs.diplo.cabinet, {REALM.austria}}, {Idea_Card_GUIDs.diplo.mercantilism, {REALM.england,REALM.france}}, {Idea_Card_GUIDs.diplo.free_trade, {REALM.netherlands}}},
    war = {{Idea_Card_GUIDs.war.cannons, {REALM.netherlands, REALM.france, REALM.austria, REALM.castile, REALM.england, REALM.aragon}}, {Idea_Card_GUIDs.war.tercios_janissaries, {REALM.castile, REALM.aragon}}, {Idea_Card_GUIDs.war.line_infantry, {REALM.netherlands}}, ''}
  }, empire = { ruler = REALM.austria, authority = 2, influence = {HRE_Influence_Map_Pos.bavaria_swabia, HRE_Influence_Map_Pos.rhineland} },
  curia = {REALM.none, REALM.castile, REALM.france, REALM.austria, }, trade_add_all = true, DNPR_Pink_S = {
    WesternMap.pozsony, WesternMap.sopron, WesternMap.zagreb, WesternMap.rijeka,
  }, DNPR_Green_L = {
    AmericaMap.cuzco, AmericaMap.quito, AmericaMap.newgranada, AmericaMap.charcas, AmericaMap.chile, AmericaMap.laplata,    
  }, DNPR_Orange_S = { 
    AmericaMap.mexico, AmericaMap.centralamerica, AmericaMap.florida, AmericaMap.antilles,
  }, powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.thirty_years_war, PS_GUIDs.distant_trade, PS_GUIDs.war_of_spanish_succession, PS_GUIDs.seven_years_war },
  remove = {{6.74, -0.30, 'SmallTown'}, }, options = {[4] = {name = 'Power Struggles', values = {'On','Off'}, default = 1, info = [[Set up power struggles:
  
  From The Italian Wars, Thirty Years' War, Distant Trade, War of Spanish Succession, and Seven Years' War, draw 4 cards at random and shuffle them in random order to form the deck.]]}, },},
}


Scenario_List['1-06'].description = [[›	Brandenburg is a small Realm with a lot of potential. At the start of the game they enjoy a shielded existence within the HRE, protect­ed but also restricted by the power of the Emperor (AustriaBot). Outsiders have a hard time penetrating too far into the HRE, and if ›	Brandenburg eats too many of their Imperial neighbors, they will attract the Emperor's wrath. Thus their development and expansion have to be carefully planned, to avoid facing too­early, potentially fatal confrontations. Cautiously expand through the northern Areas of the Empire, and outside its borders when possible, while also establishing diplomatic ties to the other Electors before making an open challenge for su­premacy over the German lands.

While building up for this confrontation, DenmarkBot will pro­vide early challenges. Once ›Branden burg eclipses one of their two Opponents, mighty FranceBot will wake up to dispute ›Branden­burg's claims to the region around the Rhine.
]]
Scenario_List['1-06'].options = {
  [1] = {name = 'DNPR France', values = {'On','Off'}, info = 'Set up a dynamic NPR for France using blue tokens?', },
}
Scenario_List['1-06'].variants = {
  { name = 'Default (Denmark)', age = 1, last_age = 3, book = {1,8}, player_realms = {
    [REALM.brandenburg] = { seat = 6, color = 'blue', realm = {REALM.brandenburg, 'S106'}, locked = true, start_missions = {'1C','1E','1F'}, rem_missions = {'1A','2F - Baltic','2I - Join'}, add_missions = {'1E','2C','2E','3C','3H','4A','5A'}, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria, '1444'}, locked = true, bot = true },
    [REALM.denmark] = { seat = 2, color = 'red', realm = {REALM.denmark, '1444'}, locked = true, bot = true },
    [REALM.france] = { seat = 3, color = 'green', realm = {REALM.france, 'S106'}, locked = true, bot = true, inactive = true },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'154b', 8}, {'101-1', 8}, {'113-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'159b', 7}, {'101-2', 7}, {'113-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'254b', 6}, {'255b', 6}, {'201-1', 6}, {'213-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'258b', 5}, {'259b', 5}, {'201-2', 5}, {'213-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'360b', 4}, {'301-1', 4}, {'313-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'356b', 3}, {'358b', 3}, {'301-2', 3}, {'313-2', 3},
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.austria, REALM.brandenburg, REALM.denmark, }, DNPR_Blue_L = { 
    WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon, WesternMap.berry, WesternMap.bourbon, WesternMap.limousin,
    WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.toulouse, WesternMap.montpellier,
  }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest},
  remove = {{0.25, 6.35, 'Cube'},}, },
  { name = 'Kalmar', age = 1, last_age = 3, book = {1,8}, player_realms = {
    [REALM.brandenburg] = { seat = 6, color = 'blue', realm = {REALM.brandenburg, 'S106'}, locked = true, start_missions = {'1C','1E','1F'}, rem_missions = {'1A','2F - Baltic','2I - Join'}, add_missions = {'1E','2C','2E','3C','3H','4A','5A'}, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria, '1444'}, locked = true, bot = true },
    [REALM.kalmar] = { seat = 2, color = 'red', realm = {REALM.kalmar, 'S106'}, locked = true, bot = true },
    [REALM.france] = { seat = 3, color = 'green', realm = {REALM.france, 'S106'}, locked = true, bot = true, inactive = true },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'108-1', 8}, {'154b', 8}, {'101-1', 8}, {'113-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'108-2', 7}, {'101-2', 7}, {'113-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'254b', 6}, {'208-1', 6}, {'201-1', 6}, {'213-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'258b', 5}, {'208-2', 5}, {'201-2', 5}, {'213-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'308-1', 4}, {'301-1', 4}, {'313-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'356b', 3}, {'308-2', 3}, {'301-2', 3}, {'313-2', 3},
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
      curia = {REALM.none, REALM.austria, REALM.brandenburg, REALM.kalmar, }, DNPR_Blue_L = { 
        WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon, WesternMap.berry, WesternMap.bourbon, WesternMap.limousin,
        WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.toulouse, WesternMap.montpellier,
    }, manpower = { WesternMap.stockholm, WesternMap.danzig, WesternMap.poznan, WesternMap.kalisz, WesternMap.sieradz, WesternMap.pozsony, WesternMap.pest
  }, remove = {{0.25, 6.35, 'Cube'},}, },
  { name = 'Poland', age = 1, last_age = 3, book = {1,8}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
    [REALM.brandenburg] = { seat = 6, color = 'blue', realm = {REALM.brandenburg, 'S106'}, locked = true, start_missions = {'1C','1E','1F'}, rem_missions = {'1A','2F - Baltic','2I - Join'}, add_missions = {'1E','2C','2E','3C','3H','4A','5A'}, start = true },
    [REALM.poland] = { seat = 1, color = 'purple', realm = {REALM.poland, '1444'}, locked = true, bot = true },
    [REALM.austria] = { seat = 2, color = 'white', realm = {REALM.austria, '1444'}, locked = true, bot = true },
    [REALM.denmark] = { seat = 3, color = 'red', realm = {REALM.denmark, '1444'}, locked = true, bot = true },
    [REALM.france] = { seat = 4, color = 'green', realm = {REALM.france, 'S106'}, locked = true, bot = true, inactive = true  },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'151b', 8}, {'154b', 8}, {'101-1', 8}, {'113-1', 8}, {'107-1', 8}, {'153b', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'159b', 7}, {'101-2', 7}, {'113-2', 7}, {'107-2', 7}, {'156b', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'254b', 6}, {'255b', 6}, {'201-1', 6}, {'213-1', 6}, {'207-1', 6}, {'256b', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'258b', 5}, {'259b', 5}, {'201-2', 5}, {'213-2', 5}, {'207-2', 5}, {'257b', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'360b', 4}, {'301-1', 4}, {'313-1', 4}, {'307-1', 4}, {'355b', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'356b', 3}, {'358b', 3}, {'301-2', 3}, {'313-2', 3}, {'307-2', 3}, {'351b', 3},
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.austria, REALM.brandenburg, REALM.denmark, REALM.poland, }, DNPR_Blue_L = { 
      WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon, WesternMap.berry, WesternMap.bourbon, WesternMap.limousin,
      WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.toulouse, WesternMap.montpellier,
  }, remove = {{0.25, 6.35, 'Cube'}, {8.21, 2.07, 'Cube'}, }, },
  { name = 'Both', age = 1, last_age = 3, book = {1,8}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
      [REALM.brandenburg] = { seat = 6, color = 'blue', realm = {REALM.brandenburg, 'S106'}, locked = true, start_missions = {'1C','1E','1F'}, rem_missions = {'1A','2F - Baltic','2I - Join'}, add_missions = {'1E','2C','2E','3C','3H','4A','5A'}, start = true },
      [REALM.poland] = { seat = 1, color = 'purple', realm = {REALM.poland, '1444'}, locked = true, bot = true },
      [REALM.austria] = { seat = 2, color = 'white', realm = {REALM.austria, '1444'}, locked = true, bot = true },
      [REALM.kalmar] = { seat = 3, color = 'red', realm = {REALM.kalmar, 'S106'}, locked = true, bot = true },
      [REALM.france] = { seat = 4, color = 'green', realm = {REALM.france, 'S106'}, locked = true, bot = true, inactive = true  },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'108-1', 8}, {'154b', 8}, {'101-1', 8}, {'113-1', 8}, {'107-1', 8}, {'153b', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'108-2', 7}, {'101-2', 7}, {'113-2', 7}, {'107-2', 7}, {'156b', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'254b', 6}, {'208-1', 6}, {'201-1', 6}, {'213-1', 6}, {'207-1', 6}, {'256b', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'258b', 5}, {'208-2', 5}, {'201-2', 5}, {'213-2', 5}, {'207-2', 5}, {'257b', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'308-1', 4}, {'301-1', 4}, {'313-1', 4}, {'307-1', 4}, {'355b', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'356b', 3}, {'308-2', 3}, {'301-2', 3}, {'313-2', 3}, {'307-2', 3}, {'351b', 3},
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.austria, REALM.brandenburg, REALM.kalmar, REALM.poland, }, DNPR_Blue_L = { 
    WesternMap.paris, WesternMap.champagne, WesternMap.orleans, WesternMap.lyon, WesternMap.berry, WesternMap.bourbon, WesternMap.limousin,
    WesternMap.saintonge, WesternMap.poitou, WesternMap.armagnac, WesternMap.toulouse, WesternMap.montpellier,
  }, remove = {{0.25, 6.35, 'Cube'}, {8.21, 2.07, 'Cube'}, }, },
}


Scenario_List['2-01'].description = [[Poland, which starts the game without a Ruler, has powerful neighbors to the west, east, and south. ›Poland's dynastic ties with

>Lithuania can be used to their advantage, if they are nurtured with diplomacy. As soon as a new Ruler ascends to the throne, ›Poland can also think about expanding militarily to the north or south.

The ›Ottomans are on the verge of becoming a true empire, but they have many enemies and few friends. If they can build up their military strength to conquer what remains of ›Byzantium and Ana-tolia, they are well placed to expand into Europe, the Middle East, or the Mediterranean.
]]
Scenario_List['2-01'].options = {
  [1] = {name = 'Ages to play:', values = {'2','3','4'}, default = 3, info = 'How many ages should the game be set up for?' },
  [2] = {name = 'DNPR Denmark', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Denmark using pink tokens?' },
  [3] = {name = 'DNPR Portugal', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Portugal using green tokens?' },
  [4] = {name = 'DNPR Mamluks', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Mamluks using orange tokens?' },
  [5] = {name = 'Power Struggles', values = {'Ordered','Random','Off'}, default = 1, info = [[Set up power struggles:
  
  For your first Grand Campaign, we recommend using the following Power Struggles in the order listed below (for later playthroughs, you may randomize their order):
  1. The Italian Wars, 2. Struggle for the Balkans, 3. Thirty Years' War,
  4. War of Spanish Succession, 5. Seven Years’ War, 6. Napoleonic Wars]] },
}
Scenario_List['2-01'].variants = {
  { name = 'Default (Austria)', age = 1, last_age = 4, book = {2,1}, board = MAIN_BOARD_STATE.s2_01, player_realms = {
    [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans, '1444'}, start_missions = {'1A','1B','1C'}, start = true },
    [REALM.france] ={ seat = 1, color = 'blue', realm = {REALM.france, '1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile, '1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england, '1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.austria] = { seat = 4, color = 'white', realm = {REALM.austria, '1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.poland] = { seat = 5, color = 'purple', realm = {REALM.poland, '1444'}, start_missions = {'1A','1B','1C'}, rem_missions = {'3A'}, add_missions = {'2F'}, },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'156b', 8},  {'157b', 8},  {'158b', 8},
    {'160b', 8},  {'101-1', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8}, {'106-1', 8}, {'107-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'154b', 7},  {'155b', 7},  {'159b', 7},
    {'162b', 7}, {'101-2', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7},  {'106-2', 7}, {'107-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'251b', 6}, {'253b', 6}, {'260b', 6},
    {'264b', 6}, {'201-1', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6}, {'206-1', 6}, {'207-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'254b', 5}, {'259b', 5},
    {'262b', 5}, {'201-2', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5}, {'206-2', 5}, {'207-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'352b', 4}, {'353b', 4}, {'358b', 4},
    {'360b', 4}, {'301-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4}, {'306-1', 4}, {'307-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'354b', 3}, {'362b', 3},
    {'364b', 3}, {'301-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}, {'306-2', 3}, {'307-2', 3}
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'451b', 2}, {'453b', 2}, {'454b', 2},
    {'455b', 2}, {'401-1', 2}, {'402-1', 2}, {'403-1', 2}, {'404-1', 2}, {'406-1', 2}, {'407-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'456b', 1}, {'457b', 1},
    {'458b', 1}, {'401-2', 1}, {'402-2', 1}, {'403-2', 1}, {'404-2', 1}, {'406-2', 1}, {'407-2', 1}
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
      curia = {REALM.none, REALM.castile, REALM.austria, REALM.france, REALM.england, REALM.poland, }, trade_add_tags = {'TradeStar'}, DNPR_Pink_L = { 
    WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
  }, DNPR_Green_S = { 
    WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira,
  }, DNPR_Orange_L = { 
    EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
    EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
  }, powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.thirty_years_war, PS_GUIDs.war_of_spanish_succession, PS_GUIDs.seven_years_war, PS_GUIDs.napoleonic_wars }, },
  { name = 'Muscovy', age = 1, last_age = 4, book = {2,1}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
    [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans ,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
    [REALM.france] ={ seat = 1, color = 'blue', realm = {REALM.france ,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile ,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england ,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.muscovy] = { seat = 4, color = 'white', realm = {REALM.muscovy ,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.poland] = { seat = 5, color = 'purple', realm = {REALM.poland ,'1444'}, start_missions = {'1A','1B','1C'}, },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'156b', 8},  {'157b', 8},  {'158b', 8},
    {'160b', 8},  {'105-1', 8}, {'102-1', 8}, {'103-1', 8}, {'104-1', 8}, {'106-1', 8}, {'107-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'154b', 7},  {'155b', 7},  {'159b', 7},
    {'162b', 7}, {'105-2', 7}, {'102-2', 7}, {'103-2', 7}, {'104-2', 7},  {'106-2', 7}, {'107-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'251b', 6}, {'253b', 6}, {'260b', 6},
    {'264b', 6}, {'205-1', 6}, {'202-1', 6}, {'203-1', 6}, {'204-1', 6}, {'206-1', 6}, {'207-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'254b', 5}, {'255b', 5},
    {'262b', 5}, {'205-2', 5}, {'202-2', 5}, {'203-2', 5}, {'204-2', 5}, {'206-2', 5}, {'207-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'352b', 4}, {'353b', 4}, {'358b', 4},
    {'360b', 4}, {'305-1', 4}, {'302-1', 4}, {'303-1', 4}, {'304-1', 4}, {'306-1', 4}, {'307-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'354b', 3}, {'362b', 3},
    {'355b', 3}, {'305-2', 3}, {'302-2', 3}, {'303-2', 3}, {'304-2', 3}, {'306-2', 3}, {'307-2', 3}
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'451b', 2}, {'453b', 2}, {'454b', 2},
    {'455b', 2}, {'405-1', 2}, {'402-1', 2}, {'403-1', 2}, {'404-1', 2}, {'406-1', 2}, {'407-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'456b', 1}, {'457b', 1},
    {'458b', 1}, {'405-2', 1}, {'402-2', 1}, {'403-2', 1}, {'404-2', 1}, {'406-2', 1}, {'407-2', 1}
  }, curia = {REALM.none, REALM.castile, REALM.france, REALM.england, REALM.poland, }, trade_add_tags = {'TradeStar'}, DNPR_Pink_L = { 
    WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland, WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
  }, DNPR_Green_S = { 
    WesternMap.lisboa, WesternMap.porto, WesternMap.beira, WesternMap.ceuta, WesternMap.madeira,
  }, DNPR_Orange_L = { 
    EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
    EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
  }, powerstruggles = {
    PS_GUIDs.italian_wars, PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.thirty_years_war, PS_GUIDs.war_of_spanish_succession, PS_GUIDs.seven_years_war, PS_GUIDs.napoleonic_wars
  }, },
}


Scenario_List['2-02'].description = [[This scenario takes place in Central and Eastern Europe, with most of Western Europe not in play – this changes the character of the game quite a bit. While there is more room to expand by military conquest on land, it is much harder to expand via Colonization. Trade is gener-ally less lucrative than in scenarios like S2-01, where access to mari-time Trade Nodes is a lot easier, but it can still generate needed cash.

> Muscovy is the strongest of the Russian princes, and can become a real empire once they see off their main rival to the North, the Re-public of ›Novgorod, and the remnants of the Mongol hordes.

The Grand Duchy of ›Lithuania, with its Ruthenian lands, will likely be a region of conflict between the ›Muscovites and the ›Pol-ish, while the ›Ottomans will rival both of them for the steppes north of the Black Sea.

The Balkans will be contested by ›Austria and the ›Ottomans, but the ›Polish also have dynastic claims to the ›Hungarian throne. And, who is to say that ›Austria will get the Holy Roman Empire all to themselves?
]]
Scenario_List['2-02'].options = {
  [1] = {name = 'Ages to play:', values = {'3','4'}, default = 1, info = 'How many ages should the game be set up for?' },
  [2] = {name = 'DNPR Hungary', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Hungary using green tokens?' },
  [3] = {name = 'DNPR Denmark', values = {'On','Off'}, info = 'Set up a dynamic NPR for Denmark using pink tokens?', },
  [4] = {name = 'DNPR Mamluks', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Mamluks using orange tokens?' },
  [5] = {name = 'Power Struggles', values = {'Ordered','Random','Off'}, default = 3, info = [[Set up power struggles:
  
  For your first Grand Campaign, we recommend using the following Power Struggles in the order listed below (for later playthroughs, you may randomize their order):
  1. The Italian Wars, 2. Struggle for the Balkans, 3. Thirty Years' War,
  4. War of Spanish Succession, 5. Seven Years’ War, 6. Napoleonic Wars]] },
}
Scenario_List['2-02'].variants = {
  { name = '3 Players', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_4p, player_realms = {
    [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM. ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria ,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy ,'1444'}, start_missions = {'1A','1B','1C'}, },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'161b', 8},
    {'101-1', 8}, {'105-1', 8}, {'106-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'162b', 7},
    {'101-2', 7}, {'105-2', 7}, {'106-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b', 6},
    {'201-1', 6}, {'205-1', 6}, {'206-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'262b', 5},
    {'201-2', 5}, {'205-2', 5}, {'206-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4},
    {'301-1', 4}, {'305-1', 4}, {'306-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'363b', 3},
    {'301-2', 3}, {'305-2', 3}, {'306-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2},
    {'401-1', 2}, {'405-1', 2}, {'406-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1},
    {'401-2', 1}, {'405-2', 1}, {'406-2', 1},
  }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
  curia = {REALM.none, REALM.austria, }, trade_add_tags = {'TradeStar'}, trade_remove_names = {'T22-1'}, DNPR_Pink_S = { 
    WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland,
    WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
  }, DNPR_Green_S = { 
    WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
    EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
  }, DNPR_Orange_L = { 
    EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
    EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
  }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya, WesternMap.tunis },
  powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge },
  },
  { name = '4 Players', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_4p, player_realms = {
    [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.poland] = { seat = 4, color = 'purple', realm = {REALM.poland,'1444'}, start_missions = {'1A','1B','1C'}, },
    [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy,'1444'}, start_missions = {'1A','1B','1C'}, },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'158b', 8},  {'161b', 8},
    {'101-1', 8}, {'105-1', 8}, {'106-1', 8}, {'107-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'160b', 7},  {'162b', 7},
    {'101-2', 7}, {'105-2', 7}, {'106-2', 7}, {'107-2', 7}
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b', 6}, {'264b', 6},
    {'201-1', 6}, {'205-1', 6}, {'206-1', 6}, {'207-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'262b', 5}, {'263b', 5},
    {'201-2', 5}, {'205-2', 5}, {'206-2', 5}, {'207-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'360b', 4},
    {'301-1', 4}, {'305-1', 4}, {'306-1', 4}, {'307-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'354b', 3}, {'363b', 3},
    {'301-2', 3}, {'305-2', 3}, {'306-2', 3}, {'307-2', 3}
  }, age_4_events = {
      {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'454b', 2},
      {'401-1', 2}, {'405-1', 2}, {'406-1', 2}, {'407-1', 2},
      {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'458b', 1},
      {'401-2', 1}, {'405-2', 1}, {'406-2', 1}, {'407-2', 1}
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
    curia = {REALM.none, REALM.austria, REALM.poland, }, trade_add_tags = {'TradeStar'}, trade_remove_names = {'T22-1'}, DNPR_Pink_S = { 
      WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland,
      WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
    }, DNPR_Green_S = { 
      WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
      EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
    }, DNPR_Orange_L = { 
      EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
      EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
    }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya, WesternMap.tunis },
    powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge, }, 
    },
    { name = '5 Players (Denmark)', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_dk_se, player_realms = {
      [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
      [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria,'1444'}, start_missions = {'1A','1B','1C'}, },
      [REALM.denmark] = { seat = 2, color = 'blue', realm = {REALM.denmark,'S202'},start_missions = {'1A','1B','1C'}, },
      [REALM.poland] = { seat = 4, color = 'purple', realm = {REALM.poland,'1444'},start_missions = {'1A','1B','1C'}, },
      [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy,'1444'},start_missions = {'1A','1B','1C'}, },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'158b',  8}, {'161b', 8}, {'154b', 8},
      {'101-1', 8}, {'105-1', 8}, {'106-1', 8}, {'107-1', 8}, {'108-1', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'160b',  7}, {'162b', 7}, {'159b', 7},
      {'101-2', 7}, {'105-2', 7}, {'106-2', 7}, {'107-2', 7}, {'108-2', 7},
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b',  6}, {'264b', 6}, {'254b', 6},
      {'201-1', 6}, {'205-1', 6}, {'206-1', 6}, {'207-1', 6}, {'208-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'259b',  5}, {'263b', 5}, {'258b', 5},
      {'201-2', 5}, {'205-2', 5}, {'206-2', 5}, {'207-2', 5}, {'208-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b',  4}, {'360b', 4}, {'355b', 4},
      {'301-1', 4}, {'305-1', 4}, {'306-1', 4}, {'307-1', 4}, {'308-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'354b',  3}, {'363b', 3}, {'362b', 3},
      {'301-2', 3}, {'305-2', 3}, {'306-2', 3}, {'307-2', 3}, {'308-2', 3},
    }, age_4_events = {
      {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'454b', 2}, {'455b', 2},
      {'401-1', 2}, {'405-1', 2}, {'406-1', 2}, {'407-1', 2}, {'408-1', 2},
      {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'458b', 1}, {'456b', 1},
      {'401-2', 1}, {'405-2', 1}, {'406-2', 1}, {'407-2', 1}, {'408-2', 1},
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
    curia = {REALM.none, REALM.austria, REALM.poland, REALM.denmark, }, trade_add_tags = {'TradeStar'}, trade_remove_names = {'T22-1'}, DNPR_Green_S = { 
      WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
      EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
    }, DNPR_Orange_L = { 
      EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
      EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
    }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya, WesternMap.tunis },
    powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge }, 
    options = {[3] = { name = 'hide'},},
    },
    { name = '5 Players (Sweden)', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_dk_se, player_realms = {
      [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
      [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria,'1444'}, start_missions = {'1A','1B','1C'}, },
      [REALM.sweden] = { seat = 2, color = 'blue', realm = {REALM.sweden,'1444'}, start_missions = {'1A','1B','1C'}, },
      [REALM.poland] = { seat = 4, color = 'purple', realm = {REALM.poland,'1444'}, start_missions = {'1A','1B','1C'}, },
      [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy,'1444'}, start_missions = {'1A','1B','1C'}, },
    }, age_1_events = {
      {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'158b',  8}, {'161b', 8}, {'154b', 8},
      {'101-1', 8}, {'105-1', 8}, {'106-1', 8}, {'107-1', 8}, {'109-1', 8},
      {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'160b',  7}, {'162b', 7}, {'159b', 7},
      {'101-2', 7}, {'105-2', 7}, {'106-2', 7}, {'107-2', 7}, {'109-2', 7},
    }, age_2_events = {
      {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b',  6}, {'264b', 6}, {'254b', 6},
      {'201-1', 6}, {'205-1', 6}, {'206-1', 6}, {'207-1', 6}, {'209-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'259b',  5}, {'263b', 5}, {'258b', 5},
      {'201-2', 5}, {'205-2', 5}, {'206-2', 5}, {'207-2', 5}, {'209-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b',  4}, {'360b', 4}, {'355b', 4},
      {'301-1', 4}, {'305-1', 4}, {'306-1', 4}, {'307-1', 4}, {'309-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'354b',  3}, {'363b', 3}, {'362b', 3},
      {'301-2', 3}, {'305-2', 3}, {'306-2', 3}, {'307-2', 3}, {'309-2', 3},
    }, age_4_events = {
      {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'454b', 2}, {'455b', 2},
      {'401-1', 2}, {'405-1', 2}, {'406-1', 2}, {'407-1', 2}, {'409-1', 2},
      {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'458b', 1}, {'456b', 1},
      {'401-2', 1}, {'405-2', 1}, {'406-2', 1}, {'407-2', 1}, {'409-2', 1},
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
        curia = {REALM.none, REALM.austria, REALM.poland, REALM.sweden, }, trade_add_tags = {'TradeStar'}, trade_remove_names = {'T22-1'}, DNPR_Green_S = { 
          WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
        EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
      }, DNPR_Orange_L = { 
        EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
        EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
      }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya, WesternMap.tunis },
      powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge },
      options = {[3] = { name = 'hide'},},
      },
      { name = '5 Players (Mamluks)', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_m, player_realms = {
        [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
        [REALM.mamluks] = { seat = 1, color = 'red', realm = {REALM.mamluks,'1444'}, start_missions = {'1A','1C','1D'}, rem_missions = {'1F','2C','2F'}, add_missions = {'1A','2G','3M'}, },
        [REALM.austria] = { seat = 2, color = 'white', realm = {REALM.austria,'1444'}, start_missions = {'1A','1B','1C'}, },
        [REALM.poland] = { seat = 4, color = 'purple', realm = {REALM.poland,'1444'}, start_missions = {'1A','1B','1C'}, },
        [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy,'1444'}, start_missions = {'1A','1B','1C'}, },
      }, age_1_events = {
        {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'158b',  8}, {'161b', 8}, {'154b', 8},
        {'101-1', 8}, {'105-1', 8}, {'106-1', 8}, {'107-1', 8}, {'115-1', 8},
        {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'160b',  7}, {'162b', 7}, {'159b', 7},
        {'101-2', 7}, {'105-2', 7}, {'106-2', 7}, {'107-2', 7}, {'115-2', 7},
      }, age_2_events = {
        {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b',  6}, {'264b', 6}, {'260b', 6},
      {'201-1', 6}, {'205-1', 6}, {'206-1', 6}, {'207-1', 6}, {'215-1', 6},
      {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'262b',  5}, {'263b', 5}, {'254b', 5},
      {'201-2', 5}, {'205-2', 5}, {'206-2', 5}, {'207-2', 5}, {'215-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b',  4}, {'360b', 4}, {'355b', 4},
      {'301-1', 4}, {'305-1', 4}, {'306-1', 4}, {'307-1', 4}, {'315-1', 4},
      {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'354b',  3}, {'363b', 3}, {'362b', 3},
      {'301-2', 3}, {'305-2', 3}, {'306-2', 3}, {'307-2', 3}, {'315-2', 3},
    }, age_4_events = {
      {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'454b', 2}, {'455b', 2},
      {'401-1', 2}, {'405-1', 2}, {'406-1', 2}, {'407-1', 2}, {'415-1', 2},
      {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'458b', 1}, {'456b', 1},
      {'401-2', 1}, {'405-2', 1}, {'406-2', 1}, {'407-2', 1}, {'415-2', 1},
    }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
        curia = {REALM.none, REALM.austria, REALM.poland, }, trade_add_tags = {'TradeStar', 'Trade3'}, DNPR_Pink_S = { 
        WesternMap.kobenhavn, WesternMap.gotland, WesternMap.lund, WesternMap.ostjylland,
        WesternMap.vestjylland, WesternMap.slesvig, WesternMap.holstein,
      }, DNPR_Green_S = { 
        WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
        EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
      }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya },
      powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge }, 
      options = {[4] = { name = 'hide'},},
    },
    { name = '6 Players', age = 1, last_age = 4, book = {2,2}, board = MAIN_BOARD_STATE.s2_02_6p, player_realms = {
        [REALM.ottomans] = { seat = 6, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, start = true },
        [REALM.mamluks] = { seat = 1, color = 'red', realm = {REALM.mamluks,'1444'}, start_missions = {'1A','1C','1D'}, rem_missions = {'1F','2C','2F'}, add_missions = {'1A','2G','3M'}, },
        [REALM.austria] = { seat = 2, color = 'white', realm = {REALM.austria,'1444'}, start_missions = {'1A','1B','1C'}, },
        [REALM.denmark] = { seat = 3, color = 'blue', realm = {REALM.denmark,'S202'}, start_missions = {'1A','1B','1C'}, },
        [REALM.poland] = { seat = 4, color = 'purple', realm = {REALM.poland,'1444'}, start_missions = {'1A','1B','1C'}, },
        [REALM.muscovy] = { seat = 5, color = 'yellow', realm = {REALM.muscovy,'1444'}, start_missions = {'1A','1B','1C'}, },
      }, age_1_events = {
        {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'158b',  8}, {'161b',  8}, {'154b', 8},  {'156b', 8},
        {'101-1', 8}, {'105-1', 8}, {'106-1', 8}, {'107-1', 8}, {'108-1', 8}, {'115-1', 8},
        {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'160b',  7}, {'162b',  7}, {'155b', 7},  {'159b', 7},
        {'101-2', 7}, {'105-2', 7}, {'106-2', 7}, {'107-2', 7}, {'108-2', 7}, {'115-2', 7}
      }, age_2_events = {
        {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b',  6}, {'264b',  6}, {'257b', 6}, {'260b', 6},
        {'201-1', 6}, {'205-1', 6}, {'206-1', 6}, {'207-1', 6}, {'208-1', 6}, {'215-1', 6},
        {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'259b',  5}, {'263b',  5}, {'254b', 5}, {'258b', 5},
        {'201-2', 5}, {'205-2', 5}, {'206-2', 5}, {'207-2', 5}, {'208-2', 5}, {'215-2', 5}
      }, age_3_events = {
        {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b',  4}, {'360b',  4}, {'355b', 4}, {'358b', 4},
        {'301-1', 4}, {'305-1', 4}, {'306-1', 4}, {'307-1', 4}, {'308-1', 4}, {'315-1', 4},
        {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-3', 3}, {'354b',  3}, {'363b',  3}, {'357b', 3}, {'362b', 3},
        {'301-2', 3}, {'305-2', 3}, {'306-2', 3}, {'307-2', 3}, {'308-2', 3}, {'315-2', 3}
      }, age_4_events = {
        {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b',  2}, {'454b',  2}, {'451b', 2}, {'455b', 2},
        {'401-1', 2}, {'405-1', 2}, {'406-1', 2}, {'407-1', 2}, {'408-1', 2}, {'415-1', 2},
        {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b',  1}, {'458b',  1}, {'456b', 1}, {'457b', 1},
        {'401-2', 1}, {'405-2', 1}, {'406-2', 1}, {'407-2', 1}, {'408-2', 1}, {'415-2', 1}
      }, empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
        curia = {REALM.none, REALM.austria, REALM.poland, REALM.denmark, }, trade_add_tags = {'TradeStar', 'Trade3'}, DNPR_Green_S = { 
        WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
        EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
    }, manpower = { WesternMap.piemont, WesternMap.geneve, WesternMap.sardenya },
    powerstruggles = { PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.great_northern_war, PS_GUIDs.holy_league, PS_GUIDs.deluge },
    options = { [3] = { name = 'hide'}, [4] = { name = 'hide'} },
  },
}


Scenario_List['2-03'].description = [[In this Scenario all players compete to gain Ownership of 4 Ob-jectives, which are key Mediterranean Provinces. Controlling any of these Provinces that are Lawfully Owned by an Opponent also counts for Victory purposes.

Players should try to dominate the seas and coastlines to ensure Victory in the game, as this will improve their own mobility while also hindering that of their Opponents.

The restricted play area creates fierce and intense competition right from the start. Short-term planning is crucial, since an un-checked Opponent can end the game at any moment. However, completely ignoring long-term planning will see you lose out if you are unable to get to the Objectives soon enough.

This uneasy balance should see Alliances between players shifting dynamically as the board situation changes.
]]
Scenario_List['2-03'].variants = {
  { name = '5 Players', age = 1, last_age = 3, book = {2,3}, board = MAIN_BOARD_STATE.s2_03_5p, player_realms = {
    [REALM.venice] = { seat = 4, color = 'red', realm = {REALM.venice,'1444'}, start_missions = {'1A','1D','1F'}, add_missions = {'4O'}, rem_missions = {'2C','2H','4P'}, start = true },
    [REALM.ottomans] = { seat = 5, color = 'green', realm = {REALM.ottomans,'1444'}, start_missions = {'1A','1B','1C'}, rem_missions = {'3A','3E'}, },
    [REALM.mamluks] = { seat = 6, color = 'purple', realm = {REALM.mamluks,'1444'}, start_missions = {'1A','1C','1D'}, add_missions = {'1A','2G','3M'}, rem_missions = {'1F','2C','2F','3H','5A'}, },
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france,'1444'}, start_missions = {'1A','1B','1C'}, rem_missions = {'2C','3A'}, },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile,'1444'}, start_missions = {'1A','1B','1C'}, rem_missions = {'3E','4C'}, },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'156b', 8},  {'154b', 8}, {'158b', 8},
    {'102-1', 8}, {'104-1', 8}, {'106-1', 8}, {'114-1', 8}, {'115-1', 8},
    {'11a-3', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'155b', 7},  {'159b', 7}, {'162b', 7},
    {'102-2', 7}, {'104-2', 7}, {'106-2', 7}, {'114-2', 7}, {'115-2', 7}
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b', 6}, {'255b', 6}, {'259b', 6},
    {'202-1', 6}, {'204-1', 6}, {'206-1', 6}, {'214-1', 6}, {'215-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'254b', 5}, {'257b', 5}, {'258b', 5},
    {'202-2', 5}, {'204-2', 5}, {'206-2', 5}, {'214-2', 5}, {'215-2', 5}
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'357b', 4}, {'359b', 4}, {'361b', 4},
    {'302-1', 4}, {'304-1', 4}, {'306-1', 4}, {'314-1', 4}, {'315-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b', 3}, {'354b', 3}, {'362b', 3},
    {'302-2', 3}, {'304-2', 3}, {'306-2', 3}, {'314-2', 3}, {'315-2', 3},
  }, curia = {REALM.none, REALM.castile, REALM.venice, REALM.france, }, trade_add_tags = {'Trade2', 'Trade3'}, trade_add_names = {'T24-1'}, trade_remove_names = {'T16-1'},
  powerstruggles = { PS_GUIDs.italian_wars, PS_GUIDs.struggle_for_the_balkans, PS_GUIDs.holy_league, PS_GUIDs.war_of_spanish_succession },
  remove = { {-9.02, 6.84, 'Cube'}, {-9.02, 7.22, 'Cube'}, {-7.80, 6.45, 'Alliance'} },
  options = {[1] = {name = 'Power Struggles', values = {'Ordered','Random','Off'}, default = 3, info = [[Set up power struggles:
  
  We recommend not using Power Struggles for this scenario. However, if you would rather play for Prestiege only, and not compete for the Objectives listed in the Victory Conditions below, you can use the following Power Struggles in the listed order or randomized:
1. The Italian Wars, 2. Struggle for the Balkans, 3. The Holy League, 4. War of Spanish Succession]]}, },},
  { name = '6 Players (Teams)', age = 3, last_age = 4, book = {2,3}, board = MAIN_BOARD_STATE.s2_03_6p, draw_per_round = 6, player_realms = {
    [REALM.venice] = { seat = 6, color = 'red', realm = {REALM.venice,'S203-6P'}, no_missions = true, extra_mp = 3, start = true, },
    [REALM.rumelia] = { name = "Ottomans I", seat = 1, color = 'green', realm = {REALM.rumelia,'1618'}, no_missions = true, extra_mp = 3, },
    [REALM.castile] = { name = "Spain I", seat = 2, color = 'yellow', realm = {REALM.castile,'1618'}, no_missions = true, extra_mp = 3, },
    [REALM.france] = { seat = 3, color = 'blue', realm = {REALM.france,'S203-6P'}, no_missions = true, extra_mp = 3, },
    [REALM.egypt] = { name = "Ottomans II", seat = 4, color = 'purple', realm = {REALM.egypt,'1618'}, no_missions = true, extra_mp = 3, },
    [REALM.aragon] = { name = "Spain II", seat = 5, color = 'white', realm = {REALM.aragon,'S203-6P'}, no_missions = true, extra_mp = 3, },
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'354b',  4}, {'355b', 4}, {'358b', 4},
    {'302-1', 4}, {'304-1', 4}, {'306-1', 4}, {'314-1', 4}, {'315-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'351b',  3}, {'357b', 3}, {'359b', 3},
    {'302-2', 3}, {'304-2', 3}, {'306-2', 3}, {'314-2', 3}, {'315-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'451b',  2}, {'452b', 2}, {'454b', 2},
    {'402-1', 2}, {'404-1', 2}, {'406-1', 2}, {'414-1', 2}, {'415-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'453b',  1}, {'456b', 1}, {'468b', 1},
    {'402-2', 1}, {'404-2', 1}, {'406-2', 1}, {'414-2', 1}, {'415-2', 1},
  }, 
  ideas = {
    admin = {{Idea_Card_GUIDs.admin.tolerance, {REALM.venice, REALM.rumelia}}, '', '', ''},
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, {REALM.castile, REALM.france}}, {Idea_Card_GUIDs.diplo.mercantilism, {REALM.france}}, {Idea_Card_GUIDs.diplo.free_trade, {REALM.venice}}, ''},
    war = {{Idea_Card_GUIDs.war.cannons, {REALM.venice, REALM.rumelia, REALM.castile, REALM.france, REALM.egypt, REALM.aragon}}, {Idea_Card_GUIDs.war.tercios_janissaries, {REALM.rumelia, REALM.castile, REALM.aragon}}, {Idea_Card_GUIDs.war.noble_knights, {REALM.egypt}}, ''}, 
  },
  curia = {REALM.none, REALM.castile, REALM.venice, REALM.france, REALM.aragon, }, trade_add_all = true, 
  remove = { {-0.95, -0.16, 'Cube'}, },
  },
}


Scenario_List['2-04'].description = [[This scenario starts in the middle of the Age of Revolutions and lasts for 3 Rounds, but it is not a very short scenario since there is a lot going on in Age IV.

With Events triggering the spread of the Revolution, Grand Coa-litions, coups, and much more, this scenario should be action-packed and ripe for chaos and lots of player vs. player interaction. No Realm should escape unscathed in this game.

Will the Revolution sweep the old monarchies aside? Will Na-poleon rise to power and form a new European Empire? Or, will the European Concert keep the revolutionary forces at bay?
]]
Scenario_List['2-04'].options = {
  [1] = {name = 'DNPR USA', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the United States of America using pink (1) tokens?' },
  [2] = {name = 'DNPR Netherlands', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Netherlands using orange tokens?' },
  [3] = {name = 'DNPR Sweden', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Sweden using blue tokens?' },
  [4] = {name = 'DNPR Sicily', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Two Sicilies using green tokens?' },
  [5] = {name = 'DNPR Savoy', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Savoy using pink (2) tokens?' },
}
Scenario_List['2-04'].variants = {
{ name = '6 Players', age = 4, last_age = 4, book = {2,4}, board = MAIN_BOARD_STATE.s2_04, draw_per_round = 6, player_realms = {
    [REALM.prussia] = { name = 'Prussia', seat = 5, color = 'purple', realm = {REALM.prussia,'S204'}, no_missions = true, extra_mp = 4, prestige= 10, start = true },
    [REALM.russia] = { name = 'Russia', seat = 6, color = 'green', realm = {REALM.russia,'S204'}, no_missions = true, extra_mp = 4, },
    [REALM.france] = { seat = 1, color = 'blue', realm = {REALM.france,'S204'}, no_missions = true, extra_mp = 4, },
    [REALM.spain] = { name = 'Spain', seat = 2, color = 'yellow', realm = {REALM.spain,'S204'}, no_missions = true, extra_mp = 4, },
    [REALM.great_britain] = { name = 'Great Britain',  seat = 3, color = 'red', realm = {REALM.great_britain,'S204'}, no_missions = true, extra_mp = 4, },
    [REALM.austria] = { seat = 4, color = 'white', realm = {REALM.austria,'S204'}, no_missions = true, extra_mp = 4, },
  }, age_4_events = {
    {'44a-1', 3}, {'43a-2', 3}, { '451b', 3}, { '454b', 3}, {'404-2', 3}, {'405-2', 3},
    { '452b', 2}, { '453b', 2}, { '455b', 2}, { '456b', 2}, { '258b', 2}, {'403-2', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'44a-2', 1}, {'401-2', 1}, {'402-2', 1}, {'413-2', 1},
  }, 
  ideas = {
    admin = {
      {Idea_Card_GUIDs.admin.tolerance, {}},
      {Idea_Card_GUIDs.admin.absolute_monarchy, {REALM.prussia, REALM.france, REALM.austria, REALM.russia, REALM.spain}}, '', ''
    },
    diplo = {
      {Idea_Card_GUIDs.diplo.quest_for_the_new_world, {REALM.france, REALM.great_britain, REALM.spain}},
      {Idea_Card_GUIDs.diplo.cabinet, {REALM.austria}},
      {Idea_Card_GUIDs.diplo.mercantilism, {REALM.france}},
      {Idea_Card_GUIDs.diplo.constitutional_monarchy, {REALM.great_britain}}
    },
    war = {
      {Idea_Card_GUIDs.war.cannons, {REALM.prussia, REALM.russia, REALM.france, REALM.spain, REALM.great_britain, REALM.austria}},
      {Idea_Card_GUIDs.war.tercios_janissaries, {REALM.prussia, REALM.russia, REALM.france, REALM.spain, REALM.great_britain, REALM.austria}},
      {Idea_Card_GUIDs.war.line_infantry, {REALM.france}}, ''
    },
  },  empire = { ruler = REALM.austria, authority = 1, influence = {HRE_Influence_Map_Pos.rhineland} },
  curia = {REALM.none, REALM.spain, REALM.austria, REALM.france, }, trade_add_all = true, DNPR_Pink_S = { 
    AmericaMap.virginia, AmericaMap.newengland,
  }, DNPR_Orange_L = { 
    WesternMap.amsterdam, WesternMap.gent, WesternMap.antwerpen, WesternMap.brugge, WesternMap.namur, WesternMap.luxembourg, AfricaMap.capeofgoodhope,
  }, DNPR_Blue_L = { 
    WesternMap.stockholm, WesternMap.lund, WesternMap.gotland, WesternMap.stralsund,
  }, DNPR_Green_S = { 
    WesternMap.napoli, WesternMap.salerno, WesternMap.bari, WesternMap.palermo, WesternMap.mesina,
  }, DNPR_Pink_L = { 
    WesternMap.savoie, WesternMap.piemont, WesternMap.sardenya, WesternMap.milano, WesternMap.cremona,
  }, powerstruggles = { PS_GUIDs.napoleonic_wars }, },
}


Scenario_List['2-05'].description = [[This scenario pays tribute to the board game Here I Stand.
It features some very unique styles of play for ›Protestant League and ›Papal States players. The ›Habsburg player may appear set to steamroll all before them, but they will find themselves beset by opponents on all sides. ›Papal States and ›Protestant League players will compete for religious domination, while the other 4 powers will need to conduct in-game diplomacy with care to prevent any one power from gaining too much strength. This is an advanced scenario, with additional setup and special rules, but is also quite rewarding and should hopefully excite players familiar with HiS or Virgin Queen, as well as anyone who enjoys asymmetric strategy games.
]]
Scenario_List['2-05'].variants = {
    { name = '6 Players', age = 2, last_age = 3, book = {2,5}, board = MAIN_BOARD_STATE.s2_05, player_realms = {
      [REALM.england] = { seat = 3, color = 'red', realm = {REALM.england,'S205'}, no_missions = true, extra_mp = 2, start = true },
      [REALM.france] = { seat = 4, color = 'blue', realm = {REALM.france,'S205'}, no_missions = true, extra_mp = 2, },
      [REALM.spain] = { name= 'Habsburgs', seat = 5, color = 'yellow', realm = {REALM.spain,'S205'}, no_missions = true, extra_mp = 2, },
      [REALM.papal] = { seat = 6, color = 'white', realm = {REALM.papal,'S205'}, no_missions = true, extra_mp = 2, locked = true, },
      [REALM.ottomans] = { seat = 1, color = 'green', realm = {REALM.ottomans,'S205'}, no_missions = true, extra_mp = 2, },
      [REALM.brandenburg] = { name = 'Protestant League',  seat = 2, color = 'purple', realm = {REALM.brandenburg,'S205'}, no_missions = true, extra_mp = 2, },
    }, age_2_events = {
      {'21a-1', 6}, {'22a-2', 6}, {'23a-1', 6}, {'24a-1', 6}, {'251b', 6}, {'253b', 6}, {'259b', 6}, {'260b', 6}, {'261b', 6},
      {'202-1', 6}, {'203-1', 6}, {'204-1', 6}, {'206-1', 6}, {'212-1', 6},
      {'21a-2', 5}, {'22a-1', 5}, {'23a-2', 5}, {'24a-2', 5}, {'252b', 5}, {'257b', 5}, {'258b', 5}, {'254b', 5},
      {'201-2', 5}, {'203-2', 5}, {'204-2', 5}, {'206-2', 5}, {'212-2', 5}, {'213-2', 5},
    }, age_3_events = {
      {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-1', 4}, {'353b', 4}, {'358b', 4}, {'359b', 4}, {'362b', 4},
      {'301-1', 4}, {'303-1', 4}, {'304-1', 4}, {'306-1', 4}, {'312-1', 4}, {'313-1', 4},
    }, ideas = {
      admin = {{Idea_Card_GUIDs.admin.tolerance, {REALM.ottomans}}, '', ''},
      diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, {REALM.spain}}, '', ''},
      war = {{Idea_Card_GUIDs.war.cannons, {REALM.england, REALM.france, REALM.spain, REALM.papal, REALM.ottomans, REALM.brandenburg}}, {Idea_Card_GUIDs.war.tercios_janissaries, {REALM.ottomans}}, ''},
    }, empire = { ruler = REALM.spain, authority = 2, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia} },
    curia = {REALM.papal, REALM.spain, REALM.france, REALM.england, }, trade_add_tags = {'TradeStar', 'Trade1', },
    manpower = { EasternMap.krakow, EasternMap.lublin, EasternMap.sandomierz, EasternMap.warszawa,},
  },
}


Scenario_List['2-06'].description = [[A challenging solo campaign, where you, as ›Byzantium, face over-whelming odds against the encroaching ›Ottoman forces and addi-tional threats from your long-standing rival in ›Venice. This scenario is recommended for experienced players who are comfortable start-ing with fewer resources than their Bot Opponents.

Despite the difficult start, a successful ›Byzantine player will be able to make gains against the ›Ottomans, to reclaim their former heartland. Once a power base has been secured, goals can include re-claiming all of Anatolia or even avenging the Fourth Crusade. Should further success ensue, the player may turn their eyes West and seek to restore as much of the former Roman Empire as possible, although new Opponents in ›Spain and ›France may have something to say about that.
]]
Scenario_List['2-06'].options = {
  [1] = {name = 'DNPR Hungary', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Hungary using green tokens?' },
  [2] = {name = 'DNPR Mamluks', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Mamluks using orange tokens?' },
}
Scenario_List['2-06'].variants = {
  { name = '1 Player', age = 1, last_age = 4, book = {2,6}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
    [REALM.byzantium] = { seat = 6, color = 'purple', realm = {REALM.byzantium,'S206'}, no_missions = true, locked = true, start = true  },
    [REALM.ottomans] = { seat = 1, color = 'green', realm = {REALM.ottomans,'1444'}, locked = true, bot = true  },
    [REALM.castile] = { seat = 2, color = 'yellow', realm = {REALM.castile,'1444'}, locked = true, bot = true, inactive = true  },
    [REALM.france] ={ seat = 4, color = 'blue', realm = {REALM.france,'1444'}, locked = true, bot = true, inactive = true },
    [REALM.venice] = { seat = 5, color = 'red', realm = {REALM.venice,'S206'}, locked = true, bot = true },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'156b', 8}, {'116-1', 8}, {'106-1', 8}, {'114-1', 8},
    {'11a-3', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-3', 7}, {'162b', 7}, {'116-2', 7}, {'106-2', 7}, {'114-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-3', 6}, {'251b', 6}, {'216-1', 6}, {'206-1', 6}, {'214-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'264b', 5}, {'216-2', 5}, {'206-2', 5}, {'214-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'363b', 4}, {'316-1', 4}, {'306-1', 4}, {'314-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'357b', 3}, {'316-2', 3}, {'306-2', 3}, {'314-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'454b', 2}, {'416-1', 2}, {'406-1', 2}, {'414-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'453b', 1}, {'416-2', 1}, {'406-2', 1}, {'414-2', 1},
  }, ideas = {
    admin = {{Idea_Card_GUIDs.admin.tolerance, {}}, '', ''},
    diplo = { '', '', '' },
    war = {{Idea_Card_GUIDs.war.cannons, {}}, '', '' },
  }, curia = {REALM.none, REALM.venice, REALM.venice, 'blocked', }, DNPR_Green_S = { 
    WesternMap.pest, EasternMap.szabolcs, WesternMap.sopron, WesternMap.pozsony, EasternMap.szepes,
    EasternMap.torda, EasternMap.hunyad, EasternMap.beograd, WesternMap.zagreb, WesternMap.rijeka,
  }, DNPR_Orange_L = { 
    EasternMap.qahirah, EasternMap.bangazi, EasternMap.iskandariyya, EasternMap.fayyum, EasternMap.dumyat, EasternMap.gazzah,
    EasternMap.alquds, EasternMap.jaffa, EasternMap.dimashq, EasternMap.tarabulus, EasternMap.halab, AfricaMap.upperegypt, IndiaMap.hejaz,
  }, trade_add_tags = {'TradeStar'}, },
}


Scenario_List['2-07'].description = [[There may well be an alternative timeline, where ›Ulm's presence looms large way into the 21st century. Unfortunately for we fourth dimensional creatures that can only perceive a single timeline, we are not living that reality. Not since 1805 has ›Ulm made the headlines, and while headlines are still hard to come by, the After Action Report comic about ›Ulm's exploits in Europa Universalis III left a growing online community in its wake – much to the confusion of its original creator.
]]
Scenario_List['2-07'].options = {
  [1] = {name = 'DNPR Ferrara', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Ferrara using green tokens?' },
  [2] = {name = 'DNPR Siena', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Siena using orange tokens?' },
  [3] = {name = 'DNPR Palatinate', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for the Palatinate using blue tokens?' },
  [4] = {name = 'DNPR Frankfurt', values = {'On','Off'}, default = 1, info = 'Set up a dynamic NPR for Frankfurt using pink tokens?' },
}
Scenario_List['2-07'].variants = { 
  { name = 'Default Start', age = 1, last_age = 4, book = {2,7}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
    [REALM.ulm] = { seat = 6, color = 'purple', realm = {REALM.ulm,'1444'}, no_missions = true, locked = true, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria,'1444'}, locked = true, bot = true },
    [REALM.france] = { seat = 2, color = 'blue', realm = {REALM.france,'S207'}, locked = true, bot = true },
    [REALM.kalmar] = { seat = 3, color = 'red', realm = {REALM.kalmar,'S207'}, locked = true, bot = true, inactive = true },
    [REALM.poland] = { seat = 4, color = 'yellow', realm = {REALM.poland,'1444'}, locked = true, bot = true, inactive = true  },
    [REALM.ottomans] = { seat = 5, color = 'green', realm = {REALM.ottomans,'1444'}, locked = true, bot = true, inactive = true },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'157b', 8}, {'117-1', 8}, {'101-1', 8}, {'104-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'117-2', 7}, {'101-2', 7}, {'104-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'259b', 6}, {'217-1', 6}, {'201-1', 6}, {'204-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'258b', 5}, {'217-2', 5}, {'201-2', 5}, {'204-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'360b', 4}, {'317-1', 4}, {'301-1', 4}, {'304-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'359b', 3}, {'317-2', 3}, {'301-2', 3}, {'304-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'417-1', 2}, {'401-1', 2}, {'404-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'417-2', 1}, {'401-2', 1}, {'404-2', 1},
  }, manpower = { WesternMap.ferrara, WesternMap.siena, WesternMap.pfalz, WesternMap.frankfurt, },
     DNPR_Green_L = { WesternMap.ferrara, },
     DNPR_Orange_S = { WesternMap.siena, },
     DNPR_Blue_L = { WesternMap.pfalz, },
     DNPR_Pink_S = { WesternMap.frankfurt, }, 
     empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
     curia = {REALM.none, REALM.austria, REALM.france, REALM.ulm, }, trade_add_tags = {'TradeStar'},
  },
  { name = 'Alternate Start', age = 1, last_age = 4, book = {2,7}, board = MAIN_BOARD_STATE.deluxe_1444, player_realms = {
    [REALM.ulm] = { seat = 6, color = 'purple', realm = {REALM.ulm,'1444'}, no_missions = true, locked = true, start = true },
    [REALM.austria] = { seat = 1, color = 'white', realm = {REALM.austria,'1444'}, locked = true, bot = true },
    [REALM.venice] = { seat = 2, color = 'blue', realm = {REALM.venice,'1444'}, locked = true, bot = true },
    [REALM.kalmar] = { seat = 3, color = 'red', realm = {REALM.kalmar,'S207'}, locked = true, bot = true, inactive = true },
    [REALM.poland] = { seat = 4, color = 'yellow', realm = {REALM.poland,'1444'}, locked = true, bot = true, inactive = true  },
    [REALM.ottomans] = { seat = 5, color = 'green', realm = {REALM.ottomans,'1444'}, locked = true, bot = true, inactive = true },
  }, age_1_events = {
    {'11a-1', 8}, {'12a-1', 8}, {'13a-1', 8}, {'14a-1', 8}, {'157b', 8}, {'117-1', 8}, {'101-1', 8}, {'114-1', 8},
    {'11a-2', 7}, {'12a-2', 7}, {'13a-2', 7}, {'14a-2', 7}, {'155b', 7}, {'117-2', 7}, {'101-2', 7}, {'114-2', 7},
  }, age_2_events = {
    {'21a-1', 6}, {'22a-1', 6}, {'23a-1', 6}, {'24a-1', 6}, {'259b', 6}, {'217-1', 6}, {'201-1', 6}, {'214-1', 6},
    {'21a-2', 5}, {'22a-2', 5}, {'23a-2', 5}, {'24a-4', 5}, {'258b', 5}, {'217-2', 5}, {'201-2', 5}, {'214-2', 5},
  }, age_3_events = {
    {'31a-1', 4}, {'32a-1', 4}, {'33a-1', 4}, {'34a-3', 4}, {'360b', 4}, {'317-1', 4}, {'301-1', 4}, {'314-1', 4},
    {'31a-2', 3}, {'32a-2', 3}, {'33a-2', 3}, {'34a-2', 3}, {'359b', 3}, {'317-2', 3}, {'301-2', 3}, {'314-2', 3},
  }, age_4_events = {
    {'41a-1', 2}, {'42a-1', 2}, {'43a-1', 2}, {'44a-1', 2}, {'453b', 2}, {'417-1', 2}, {'401-1', 2}, {'414-1', 2},
    {'41a-2', 1}, {'42a-2', 1}, {'43a-2', 1}, {'44a-2', 1}, {'452b', 1}, {'417-2', 1}, {'401-2', 1}, {'414-2', 1},
  }, manpower = { WesternMap.ferrara, WesternMap.siena, WesternMap.pfalz, WesternMap.frankfurt, },
     DNPR_Green_L = { WesternMap.ferrara, },
     DNPR_Orange_S = { WesternMap.siena, },
     DNPR_Blue_L = { WesternMap.pfalz, },
     DNPR_Pink_S = { WesternMap.frankfurt, }, 
     empire = { ruler = REALM.austria, authority = 3, influence = {HRE_Influence_Map_Pos.rhineland, HRE_Influence_Map_Pos.westphalia, HRE_Influence_Map_Pos.saxony} },
     curia = {REALM.none, REALM.austria, REALM.venice, REALM.ulm, }, trade_add_tags = {'TradeStar'}, 
  },
}
