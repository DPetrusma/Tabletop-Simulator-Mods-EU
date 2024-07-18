TEST_MODE = false
UI_PAGES = { scenario = 1, variant = 2, bots = 3, options = 4 }
UI_Data = { page = UI_PAGES.scenario, scenario = '', variant = '', variant_num = 0, players = {}, options = {}, start_age = 1, }
Deferred_Placements = {}
Change_Rotation = {}
Last_Moving_Map_Marker = nil
Last_Moving_Card = nil
Idea_Config = {}
HRE_Config = { ['ruler'] = '', ['authority'] = 3 }

MAIN_BOARD_STATE = {
  base_1444 = 1, base_1618 = 2, deluxe_1444 = 3, deluxe_1618 = 4, s1_02 = 5, s2_01 = 6, s2_02_4p = 7,
  s2_02_dk_se = 8, s2_02_m = 9, s2_02_6p = 10, s2_03_5p = 11, s2_03_6p = 12, s2_04 = 13, s2_05 = 14
}
MAIN_BOARD_DATE = {
  '1444', '1618', '1444', '1618', '1444', '1444', '1444', '1444', '1444', '1444',
  '1444', '1618', '1618', '1444'
}
REALM = {
  none = '000', austria = '001', castile = '002', spain = '002', england = '003', great_britain = '003', france = '004', muscovy = '005', russia = '005',
  ottomans = '006', rumelia = '006', poland = '007', denmark = '008', kalmar = '008', sweden = '009', portugal = '010', netherlands = '011',
  papal = '012', brandenburg = '013', prussia = '013', venice = '014', mamluks = '015', egypt = '015', byzantium = '016', ulm = '017',  aragon = '018',
  burgundy = '019', bohemia = '020', lithuania = '021', hungary = '022', novgorod = '023', great_horde = '024', morocco = '025', norway = '026',
  teutonic_order = '028', tunis = '029', persia = '030', scotland = '031', saxony = '032', bavaria = '033', milan = '034', genoa = '035',
  naples = '036', livonian_order = '037', crimea = '038', aq_qoyunlu = '039', savoy = '040', tuscany = '041', florence = '042'
}
REALM_NAME = {
  ['000'] = 'None', ['001'] = 'Austria', ['002'] =  'Castile', ['003'] = 'England', ['004'] = 'France', ['005'] = 'Muscovy',
  ['006'] = 'Ottomans', ['007'] = 'Poland', ['008'] = 'Denmark', ['009'] = 'Sweden', ['010'] = 'Portugal', ['011'] = 'Netherlands',
  ['012'] = 'Papal States', ['013'] = 'Brandenburg', ['014'] = 'Venice', ['015'] = 'Mamluks', ['016'] = 'Byzantium', ['017'] = 'Ulm', ['018'] = 'Aragon',
  ['019'] = 'Burgundy', ['020'] = 'Bohemia', ['021'] = 'Lithuania', ['022'] = 'Hungary', ['023'] = 'Novgorod', ['024'] = 'Great Horde', ['025'] = 'Morocco', ['026'] = 'Norway',
  ['028'] = 'Teutonic Order', ['029'] = 'Tunis', ['030'] = 'Persia', ['031'] = 'Scotland', ['032'] = 'Saxony', ['033'] = 'Bavaria', ['034'] = 'Milan', ['035'] = 'Genoa',
  ['036'] = 'Naples', ['037'] = 'Livonian Order', ['038'] = 'Crimea', ['039'] = 'Aq Qoyunlu', ['040'] = 'Savoy', ['041'] = 'Tuscany', ['042'] = 'Florence'
}

RELIGION = { none = 0, catholic = 1, diverse = 2, protestant = 3, counter_reformed = 4, muslim = 5, orthodox = 6, revolutionary = 7 }

COLOR_RGB_CODES = { -- The RGB codes need to be scaled to between 0 and 1
  red = {224/255, 22/255, 23/255, 255/255},
  yellow = {237/255, 227/255, 0/255, 255/255},
  blue = {47/255, 67/255, 150/255, 255/255},
  green = {33/255, 177/255, 155/255, 255/255},
  purple = {161/255, 78/255, 154/255, 255/255},
  white = {255/255, 255/255, 254/255, 255/255}
}

--[[ ------------------
        Object GUIDs
     ------------------ ]]

Setup_Button_GUID = '0300cd'

Main_Board_GUID = 'a9044b'
Rulebook_GUID = '864ab6'
HRE_Authority_Marker_GUID = '7cf5e2'
First_Player_Marker_GUID = '8e8911'

Removed_Components_Bag_GUID = '1205f3'
Generic_Mission_Deck_GUID = 'cadfa8'

Scenario_Book_1_GUID = '1ae561'
Scenario_Book_2_GUID = '79893d'

Player_Hand_GUIDs = { red = '7a5107', yellow = '4f7aff', blue = '3320f7', green = '82f3dd', purple = 'b29a91', white = 'a98fd0' }
Main_Tableau_GUIDs = { red = '388336', yellow = '90ffbf', blue = '1418fd', green = '82efa3', purple = 'ad4d79', white = '30484d' }
Army_Tableau_GUIDs = { red = '655dff', yellow = 'd20799', blue = 'a076d6', green = 'e8a3ab', purple = 'c8a406', white = 'be9e18' }
Fleet_Tableau_GUIDs = { red = 'ddf4d4', yellow = '005750', blue = 'fbdfa1', green = '558a42', purple = 'a76ad9', white = '3f02c4' }
Bot_Tableau_GUIDs = { red = 'cd844f', yellow = 'c2add8', blue = '7fa64c', green = '3cfa64', purple = 'd06ee7', white = '3fed49' }

Setup_Card_Deck_GUID = '6c6621'
Event_Deck_GUIDs = {
  age1a = '4a0286', age1b = 'cc3e5d', age1r = '5406f5',
  age2a = '58cb59', age2b = 'dfd613', age2r = '9a4d2b',
  age3a = '3cb0a4', age3b = '38955d', age3r = '1ad75f',
  age4a = '883762', age4b = '16eecb', age4r = 'ca197b'
}

Milestone_Deck_GUIDs = {
  age1 = { eco = 'fb9c33', exp = '47612b', pol = 'b3a31a', war = '7d81c6' },
  age2 = { eco = '0c3d54', exp = 'acc9cd', pol = 'a7ee91', war = 'f58214' },
  age3 = { eco = '6cf858', exp = '2c0ef4', pol = '280e82', war = '683420' },
  age4 = { eco = 'c67c68', exp = '44e8c7', pol = 'e41bb5', war = '5ac1fe' }
}

Trade_Deck_GUIDs = {main = 'a3d44a', future = 'daca61' }
Action_Deck_GUIDs = {admin = 'c4e73b', diplo = 'ff53d6', war = '26b642' }

Idea_Deck_GUIDs = { admin = 'c6fc59', diplo = '681d59', war = '49baba', future = 'ff2cd6' }
Idea_Card_GUIDs = {
  admin = { tolerance = 'ea4a5e', inquisition = '751730', scientific_revolution = '4567c4', bureaucracy = 'f9bb48', colonization_policy = '3d6248',
            church_attendance_duty = '1704a3', deus_vult = '7b5ca3', national_bank = 'f85c57', absolute_monarchy = '298204', industrial_revolution = '99e678' },
  diplo = { quest_for_the_new_world = 'bf035e', benign_diplomats = 'b6e975', pride_and_glory = '2b3add', efficient_spies = '080d9f', free_trade = '8c4bf6',
            shrewd_trade_practices = '558592', cabinet = 'e8472c', mercantilism = 'c10ca7', trade_companies = '7fc26f', constitutional_monarchy = '0c1460' },
  war = { cannons = '350528', glorious_arms = '223ea9', serfdom = '8ec813', noble_knights = 'e37660', defensive_mentality = '140222',
          tercios_janissaries = '935c9f', military_drill = '50f26d', line_infantry = 'fea981', revolutionary_regime = '54e66b', mass_conscription = '14c6be' },
}

Power_Struggle_Deck_GUID = '415d79'
Event_Deck_Zone_GUID = 'd0891c'
Deck_Shuffler_Zone_1_GUID = '01f252'
Deck_Shuffler_Zone_2_GUID = 'cfa853'
Mission_Deck_Zone_GUIDs = { '1eb848', 'cc5194', '20585e', 'cebe7a', '630a25', 'da131d' }
Reference_Zone_GUIDs = { '8d2e59', '6b4503', '60bdb8', '385e74', '572aa8', '4da8ac' }
Physics_Determination_Zone_GUID = '27b424'

Event_1a_GUIDs = {
  ['11a-1'] = 'c3c39a', ['11a-2'] = 'c13be3', ['11a-3'] = 'de3de5', ['12a-1'] = '8d7755', ['12a-2'] = 'a3c094',
  ['13a-1'] = '853035', ['13a-2'] = '3232c3', ['14a-1'] = '867498', ['14a-2'] = 'b67213', ['14a-3'] = '984851'
}

Event_1b_GUIDs = {
  ['151b'] = '2951d4', ['152b'] = '804bf5', ['153b'] = '97ee16', ['154b'] = 'faf029', ['155b'] = '6d4a5c', ['156b'] = '57f15d',
  ['157b'] = '2b07e9', ['158b'] = '99c094', ['159b'] = '519ecc', ['160b'] = '1057aa', ['161b'] = '1e495e', ['162b'] = '967966',
}

Event_1r_GUIDs = {
  ['101-1'] = '471d71', ['101-2'] = 'c5a036', ['102-1'] = '81aa15', ['102-2'] = '75f64d', ['103-1'] = '189a25', ['103-2'] = 'e50b90',
  ['104-1'] = '493690', ['104-2'] = '57c370', ['105-1'] = 'c4ba75', ['105-2'] = 'ae21ab', ['106-1'] = 'd62a42', ['106-2'] = '7187b7',
  ['107-1'] = 'ecc58b', ['107-2'] = '9eb311', ['108-1'] = 'f51740', ['108-2'] = '90e69a', ['109-1'] = '35b518', ['109-2'] = 'e7a00f',
  ['110-1'] = 'b6dc3b', ['110-2'] = '88c88f', ['111-1'] = '420baf', ['111-2'] = '757884', ['112-1'] = '8ce2da', ['112-2'] = '1fc73e',
  ['113-1'] = 'a9f754', ['113-2'] = '58acdf', ['114-1'] = '54a29e', ['114-2'] = '8bfdcf', ['115-1'] = '2f898e', ['115-2'] = '3cc2ad',
  ['116-1'] = 'b509c4', ['116-2'] = '0aa36c', ['117-1'] = 'af6582', ['117-2'] = 'b273d0'
}

Event_2a_GUIDs = {
  ['21a-1'] = 'ec1375', ['21a-2'] = '866f9f', ['22a-1'] = '0d9239', ['22a-2'] = '941bd9', ['23a-1'] = 'cf293a',
  ['23a-2'] = 'fd401c', ['24a-1'] = '546d38', ['24a-2'] = '8871e3', ['24a-3'] = '6d29e3', ['24a-4'] = 'f3589e'
}

Event_2b_GUIDs = {
  ['251b'] = '22a5e6', ['252b'] = 'b8ec1b', ['253b'] = 'aff6b8', ['254b'] = '7ea348', ['255b'] = 'ebf03b', ['256b'] = '119555', ['257b'] = 'b3d6fe',
  ['258b'] = 'd5b711', ['259b'] = '369cdf', ['260b'] = 'a2eacc', ['261b'] = 'e9e198', ['262b'] = 'f3ad88', ['263b'] = '2e10aa', ['264b'] = '9738fe'
}

Event_2r_GUIDs = {
  ['201-1'] = 'e53c3c', ['201-2'] = '19650f', ['202-1'] = '35eae6', ['202-2'] = 'df5b6e', ['203-1'] = '8d7bab', ['203-2'] = '2df84a',
  ['204-1'] = 'a98e27', ['204-2'] = '70889a', ['205-1'] = '201d42', ['205-2'] = '996953', ['206-1'] = 'f05210', ['206-2'] = '12493b',
  ['207-1'] = '632941', ['207-2'] = '79ceb7', ['208-1'] = '848c2a', ['208-2'] = '7581c8', ['209-1'] = 'a02d97', ['209-2'] = 'ccfac0',
  ['210-1'] = 'b35a0b', ['210-2'] = 'c30055', ['211-1'] = '152a1c', ['211-2'] = '85cdd9', ['212-1'] = 'be4407', ['212-2'] = '8e4637',
  ['213-1'] = '71c708', ['213-2'] = 'cb3234', ['214-1'] = 'ae0b77', ['214-2'] = '7db65f', ['215-1'] = '00034c', ['215-2'] = '5981e7',
  ['216-1'] = 'c6b7f0', ['216-2'] = 'f43c9b', ['217-1'] = '4c37e7', ['217-2'] = '7260f5'
}

Event_3a_GUIDs = {
  ['31a-1'] = 'b0a7bd', ['31a-2'] = '9bf825', ['32a-1'] = '46d4d5', ['32a-2'] = 'fa4d43', ['33a-1'] = 'ecc08b',
  ['33a-2'] = 'bf1860', ['34a-1'] = 'eb5b3e', ['34a-2'] = 'c88184', ['34a-3'] = 'cc5175'
}

Event_3b_GUIDs = {
  ['351b'] = '7d618b', ['352b'] = '2c6750', ['353b'] = '30691b', ['354b'] = 'fb8d7b', ['355b'] = '05ce6f', ['356b'] = '9bbeb0', ['357b'] = 'bd1d05',
  ['358b'] = '9ffefd', ['359b'] = 'dccc5a', ['360b'] = 'b40b30', ['361b'] = '8e3360', ['362b'] = '2016c6', ['363b'] = '141147', ['364b'] = '5ddd3a'
}

Event_3r_GUIDs = {
  ['301-1'] = '329e72', ['301-2'] = '501d1d', ['302-1'] = '8d667e', ['302-2'] = 'e0e9d9', ['303-1'] = '1b9d58', ['303-2'] = '333c62',
  ['304-1'] = '9100e7', ['304-2'] = '95fb5b', ['305-1'] = '060ad1', ['305-2'] = '4f289b', ['306-1'] = '0cbcab', ['306-2'] = '0109c4',
  ['307-1'] = 'f9be11', ['307-2'] = 'c7b793', ['308-1'] = '4896aa', ['308-2'] = 'b0eb6a', ['309-1'] = 'ca3eb9', ['309-2'] = '853efb',
  ['310-1'] = '6e3582', ['310-2'] = 'a35eec', ['311-1'] = '0ba5bf', ['311-2'] = '80f09e', ['312-1'] = '474a07', ['312-2'] = 'eda983',
  ['313-1'] = '9394be', ['313-2'] = '65e0b8', ['314-1'] = 'eb47a0', ['314-2'] = 'a9d70b', ['315-1'] = 'ed757f', ['315-2'] = '5a73e5',
  ['316-1'] = '15dc7c', ['316-2'] = '1498ed', ['317-1'] = '966468', ['317-2'] = '838bc3'
}

Event_4a_GUIDs = {
  ['41a-1'] = '90d0e2', ['41a-2'] = '86db52', ['42a-1'] = '4ed84b', ['42a-2'] = 'f1a8e9', ['43a-1'] = '045bb5',
  ['43a-2'] = 'd027e9', ['44a-1'] = '50e9af', ['44a-2'] = '98e0fa'
}

Event_4b_GUIDs = {
  ['451b'] = '4c3daa', ['452b'] = '968ad9', ['453b'] = '273356', ['454b'] = 'd51254',
  ['455b'] = '724744', ['456b'] = '79204e', ['457b'] = '3fcffa', ['458b'] = '3134dd'
}

Event_4r_GUIDs = {
  ['401-1'] = '363ed7', ['401-2'] = 'a2755b', ['402-1'] = 'b3beb5', ['402-2'] = '8d24c8', ['403-1'] = '494116', ['403-2'] = '0ab3f7',
  ['404-1'] = '5af16f', ['404-2'] = '988f27', ['405-1'] = '21aad5', ['405-2'] = '8f871f', ['406-1'] = 'c092f1', ['406-2'] = '76067a',
  ['407-1'] = 'c76046', ['407-2'] = 'c241e4', ['408-1'] = 'bdc0b4', ['408-2'] = '772db9', ['409-1'] = '629328', ['409-2'] = 'd813d1',
  ['410-1'] = 'f7c417', ['410-2'] = '81e912', ['411-1'] = '9b4954', ['411-2'] = '9f08ef', ['412-1'] = 'c300a9', ['412-2'] = '17e94a',
  ['413-1'] = 'c32183', ['413-2'] = 'a1c00f', ['414-1'] = '4e85cc', ['414-2'] = 'dcefbf', ['415-1'] = 'fabad5', ['415-2'] = 'ac1c6f',
  ['416-1'] = 'aef8ee', ['416-2'] = '9f6b24', ['417-1'] = 'ccd04e', ['417-2'] = 'e74562'
}

Milestone_Card_GUIDs = {
  age1 = {
    eco = { cabinet = '483f0a', income = '30e74d', focus = 'fe93a2', reliable = 'b43be8' },
    exp = { fleet = '0a4770', properity = 'dfd413', expand = '14f08e', discover = '57ad1a'},
    pol = { dynastic = 'd8074e', acquire = '907468', italian = '3e0f25', claims = '4c7315' },
    war = { victorious = 'df231b', conquer = 'ab61a8', limit = '07a169', crusader = 'ddd8a5' },
  },
  age2 = {
    eco = { innovative = '0d2349', global = 'b019e8', coffers = '62b3ca', lucrative = '479d46' },
    exp = { expand = '580cab', circumnavigation = '02874a', fleet = 'f01201', mare = '7bb7d4' },
    pol = { annex = '022b44', suppress = 'c6d18f', colonial = '253d29', religious = '83cc31' },
    war = { cleanse = 'de387a', humiliate = '2f86fe', epic = '529ee9', dominate = '91c6d5' },
  },
  age3 = {
    eco = { fleet = '386007', council = '5e96a7', gold = '0b963c', generation = 'ee4c99' },
    exp = { sun = '0e0a28', trade = '29e074', borders = 'bd1134', empire = '4b035c' },
    pol = { enemy = 'ca1985', religious = '35eae1', lead = '09fd01', peacemaker = 'ba2bb5' },
    war = { forces = '94e068', waves = 'e76dc9', colonies = '8bece8', balance = 'de4f4f' },
  },
  age4 = {
    eco = { enlightened = 'b00ca1', revolutionary = '5a9089', workshop = 'fcd277', europ = 'a03c7b' },
    exp = { jewel = 'c3f267', australis = '0f599e', empire = '05f0b3', maritime = '0af6ad' },
    pol = { dismantle = '6cf70a', tide = '40143f', hand = 'e164b2', diplomatic = 'e34ffa' },
    war = { throne = '765c76', cut = '12b157', spoils = 'e44e40', hubris = '3f2ce2' },
  },
}

PS_GUIDs = {
  holy_league = 'e92f57', struggle_for_the_balkans = 'f1aae3', thirty_years_war = '6fdd0a', italian_wars = '5c7165', great_northern_war = '192497',
  war_of_spanish_succession = '7d2122', distant_trade = 'a40cf0', deluge = '64c694', seven_years_war = '1e3668', napoleonic_wars = 'a8bd78'
}

Prestige_Marker_GUIDs = {
  red = 'a34738', yellow = '917e57', blue = 'b6350f', green = 'b1f322', purple = 'c3dffe', white = '24d817'
}

Round_Status_Marker_GUIDs = {
  red = 'f8fe6f', yellow = 'e7476a', blue = '3a5740', green = '842237', purple = '0476d7', white = '72c3bd'
}

Figurine_GUIDs = {
  red    = {'b198c2', 'dfb12f', 'cce497', '0019b4' },
  yellow = {'0a4d9e', '38029f', '4dc1da', '507c52' },
  blue   = {'196789', '6f49ec', 'f4ea35', '357ceb' },
  green  = {'f49823', 'b2ccc9', '390ccb', '1d9350' },
  purple = {'18b918', '84a1a8', 'a3fbd1', '66a7e9' },
  white  = {'9dfd9b', '849af8', 'ea745a', '2c826c' }
}

Merchant_GUIDs = {
  red    = {'65c7d5', 'dd9bef', 'd6b5d0' },
  yellow = {'f59c7f', '0dc52d', '88ba29' },
  blue   = {'f30cd6', '17dd06', 'dc0f3e' },
  green  = {'5ec83e', '16ce9d', 'f02763' },
  purple = {'0cceef', 'ff439f', 'd8da5c' },
  white  = {'29421f', '778c3f', '7d16fe' }
}

Income_Token_GUIDs = { 'e144a8', '1480cc', '1a0674', 'f5ee76', '4ca903', '621d3a' }

Bag_GUIDs = {
  mercs = 'a7061d', npr_land = 'db613d', npr_sea = 'f1f1b1', cat_div = '41dd44', ort_mus = '6e524b', cou_pro = '11fd73',
  rev_man = 'ad8c36', exp_man = '16b0a2', dnpr_og = '2eec48', dnpr_pb = '909920', hre_man = 'fc669a', papal = '8a5392',
  ill_int = '8697b5', rebel = 'da5324',  occ_bat = '5be8c4', i_coin = '505382', v_coin = '846392', x_coin = '9a6ed7'
}

Setup_Bag_GUIDs = {
  red = '5073e8', yellow = '8fa43c', blue = '7a2239', green = 'ddbf73', purple = 'fdd7a0', white = 'deaa34'
}

Setup_Bag_Item_GUIDs = {
  red    = { stability = '823a51', ruler_general = '272d23', ship = 'd80c7e', soldier = '04d4c0', cube = 'fe26c8',
             vassal = '405477', s_town = '622025', l_town = '21dcc8', claim = '3479d2', alliance = 'fbf72e', marriage = 'e0f1f0',
             war = 'a313fd', tag_chit = '347db4', merchant_1 = '65c7d5', merchant_2 = 'dd9bef', merchant_3 = 'd6b5d0',
             army_1 = 'b198c2', army_2 = 'dfb12f', army_3 = 'cce497', fleet = '0019b4' },
  yellow = { stability = 'c5fd9e', ruler_general = '8c295b', ship = '9c5ace', soldier = '7cdf8b', cube = '15ea2d',
             vassal = '21e4d6', s_town = '806208', l_town = 'cbfda2', claim = '2ff54a', alliance = 'e33aa3', marriage = '16045a',
             war = '710cae', tag_chit = 'f36db4', merchant_1 = '0dc52d', merchant_2 = 'f59c7f', merchant_3 = '88ba29',
             army_1 = '0a4d9e', army_2 = '38029f', army_3 = '4dc1da', fleet = '507c52' },
  blue   = { stability = 'e71bbe', ruler_general = 'c57fcf', ship = 'd3d3c8', soldier = '264b61', cube = '2a66a0',
             vassal = 'b28b31', s_town = 'bbba61', l_town = 'fa5e7d', claim = '188a15', alliance = '696031', marriage = '4064c1',
             war = '1f6dfb', tag_chit = '1d258f', merchant_1 = 'f30cd6', merchant_2 = 'dc0f3e', merchant_3 = '17dd06',
             army_1 = '196789', army_2 = '6f49ec', army_3 = 'f4ea35', fleet = '357ceb' },
  green  = { stability = '1de95e', ruler_general = '235e36', ship = '748bb4', soldier = '82a19e', cube = 'd90508',
             vassal = 'a2b1ce', s_town = '57dd90', l_town = '3eacd6', claim = 'fdaa7b', alliance = '31e859', marriage = '6f94d9',
             war = 'b0560c', tag_chit = '1b9ae8', merchant_1 = 'f02763', merchant_2 = '5ec83e', merchant_3 = '16ce9d',
             army_1 = 'f49823', army_2 = 'b2ccc9', army_3 = '390ccb', fleet = '1d9350' },
  purple = { stability = '7659ef', ruler_general = 'abc742', ship = '89bf50', soldier = '3735aa', cube = '168120',
             vassal = 'ef2a36', s_town = 'b0d827', l_town = 'cbcea5', claim = 'dbc249', alliance = 'f3661e', marriage = '955f8d',
             war = 'd82571', tag_chit = '1f43f9', merchant_1 = 'ff439f', merchant_2 = '0cceef', merchant_3 = 'd8da5c',
             army_1 = '18b918', army_2 = '84a1a8', army_3 = 'a3fbd1', fleet = '66a7e9' },
  white  = { stability = 'b27422', ruler_general = 'd90cf4', ship = '455429', soldier = '0f16c8', cube = 'df9f2a',
             vassal = 'c1f2d4', s_town = '56e7e7', l_town = '78bff9', claim = 'a9c9a9', alliance = 'ab7108', marriage = 'b4c14b',
             war = 'c35452', tag_chit = '6d1ef0', merchant_1 = '778c3f', merchant_2 = '29421f', merchant_3 = '7d16fe',
             army_1 = '9dfd9b', army_2 = '849af8', army_3 = 'ea745a', fleet = '2c826c' }
}

HRE_Influence_Cube_GUIDs = {
  gray = {'372088', '903b7c', '4040f0', 'ea33c0', 'd38810', 'f366e3' }
}

DNPR_Capital_GUIDs = {
  orange_l = '17512d', orange_s = '13d1e0', green_l = '262f53', green_s = '6e7d49',
  pink_l = '175553', pink_s = 'e1faad', blue_l = 'e75acb', blue_s = '5df33c',
}


--[[ ---------------
        Positions
     --------------- ]]

Scenario_Book_Position = {37.86, 0.95, 10.00}

Power_Struggle_Active = {8.48, 15.11}
Power_Struggle_Upcoming = {11.61, 15.01}

Event_Card_Positions = {
  {-24.06, 2, 3.33},  {-24.06, 2, 1.15},  {-24.06, 2, -1.04}, {-24.06, 2, -3.24},
  {-24.06, 2, -5.44}, {-24.06, 2, -7.64}, {-24.06, 2, -9.84}, {-24.06, 2, -12.04}
}

Discard_Positions = {
  trade = {-27.32, 2, 12.16}, admin = {-27.38, 2, 9.98}, diplo = {-27.38, 2, 7.78}, war = {-27.38, 2, 5.52}, event = {-27.32, 2, 3.36}
}

Milestone_Deck_Positions = {
  future = {-8.50, 2, -14.50},
  top = { {-5.80, 2, -14.50}, {-3.54, 2, -14.49}, {-1.30, 2, -14.50}, {0.95, 2, -14.50} },
  bot = { {-5.80, 2, -16.02}, {-3.55, 2, -16.02}, {-1.30, 2, -16.01}, {0.95, 2, -16.00} }
}

Idea_Card_Positions = {
  admin = { { 7.63, 2, -22.11}, { 7.63, 2, -20.54}, { 7.63, 2, -18.98}, { 7.63, 2, -17.48}, { 7.63, 2, -15.98} },
  diplo = { { 9.88, 2, -22.11}, { 9.88, 2, -20.54}, { 9.88, 2, -18.98}, { 9.88, 2, -17.48}, { 9.88, 2, -15.98} },
  war   = { {12.13, 2, -22.11}, {12.13, 2, -20.54}, {12.13, 2, -18.98}, {12.13, 2, -17.48}, {12.13, 2, -15.98} }
}

HRE_Authority_Positions = {
  ['0'] = {1.62, 15.16}, ['1'] = {2.46, 15.15}, ['2'] = {3.29, 15.16}, ['3'] = {4.08, 15.16}, ['4'] = {4.88, 15.17},
  ['5'] = {5.69, 15.16}, ['6'] = {6.59, 15.16}
}

HRE_Influence_Map_Pos = {
  rhineland = {-0.12, 0.27}, westphalia = {-0.69, 2.07}, saxony = {1.93, 1.92},
  central_italy = {1.87, -5.73}, lombardy = {-1.35, -3.34}, bavaria_swabia = {0.93, 0.36},
}

Papal_Curia_Positions = {
  {1.57, 17.29}, {2.49, 17.29}, {3.30, 17.29}, {4.09, 17.29},
  {4.90, 17.29}, {5.70, 17.29}, {6.52, 17.29},
}

Main_Tableau_Positions = {
  {-11.09, 1, -23.47}, {-33.80, 1, -11.95}, {-33.80, 1, 11.23}, {-14.98, 1, 25.06}, {18.28, 1, 25.07}, {27.33, 1, -23.51}
}

Main_Tableau_Rotations = {
  {0.00, 180.00, 0.00}, {0.00, 270.00, 0.00}, {0.00, 270.00, 0.00}, {0.00, 0.00, 0.00}, {0.00, 0.00, 0.00}, {0.00, 180.00, 0.00}
}

Player_Hand_Positions = {
  {-14.66, 3.35, -36.00}, {-46.00, 3.35, -15.41}, {-46.00, 3.35, 14.62}, {-11.01, 3.35, 37.50}, {21.22, 3.35, 37.50}, {23.67, 3.35, -36.00}
}

Player_Hand_Rotations = {
  {0.00, 0.00, 0.00}, {0.00, 90.00, 0.00}, {0.00, 90.00, 0.00}, {0.00, 180.00, 0.00}, {0.00, 180.80, 0.00}, {0.00, 0.00, 0.00}
}

Main_Tableau_Offset_Positions = {
  ['stability'] = {-3.22, 1.92}, ['ruler_general'] = {-3.21, -2.12}, ['army_1_left'] = {-13.19, 2.03}, ['army_1_right'] = {5.49, 2.04},
  ['army_2_left'] = {-9.98, 1.99}, ['army_2_right'] = {8.72, 1.99}, ['army_3_left'] = {-8.70, 2.14}, ['army_3_right'] = {10.00, 2.14},
  ['fleet_left'] = {-5.45, 2.03}, ['fleet_right'] = {13.25, 2.02}, ['armies_left'] = {-11.61, 0.00}, ['armies_right'] = {7.11, 0.00},
  ['mixed_left'] = {-7.11, 0.00},  ['mixed_right'] = {11.61, 0.00}, ['merchant_1_left'] = {-11.50, 3.25}, ['merchant_2_left'] = {-10.75, 3.25},
  ['merchant_3_left'] = {-10.00, 3.25}, ['merchant_1_right'] = {11.50, 3.25}, ['merchant_2_right'] = {10.75, 3.25}, ['merchant_3_right'] = {10.00, 3.25},
  ['soldier_left'] = {-8.00, 3.25}, ['soldier_right'] = {6.00, 3.25}, ['ship_left'] = {-6.00, 3.25}, ['ship_right'] = {8.00, 3.25},
  ['l_town'] = {-3.40, 4.75}, ['s_town'] = {-3.40, 3.25}, ['vassal'] = {-2.10, 4.75}, ['cube'] = {-2.10, 3.25},
  ['claim'] = {-0.80,  3.25}, ['alliance'] = {0.50, 3.25}, ['marriage'] = {1.80, 3.25}, ['war'] = {3.10, 3.25}, ['tag_chit'] = {4.40, 3.25},
  ['bot_ideas_admin_1'] = {0.46, -1.49}, ['bot_ideas_admin_2'] = {0.81, -1.49}, ['bot_ideas_admin_3'] = {1.19, -1.49},
  ['bot_ideas_diplo_1'] = {2.02, -1.49}, ['bot_ideas_diplo_2'] = {2.38, -1.49}, ['bot_ideas_diplo_3'] = {2.75, -1.49},
  ['bot_ideas_war_1'] = {3.62, -1.49}, ['bot_ideas_war_2'] = {3.96, -1.49}, ['bot_ideas_war_3'] = {4.33, -1.49}, ['extra_events'] = {-3.23, -7.40},
}

Main_Tableau_Local_Positions = { ['religion'] = {0.84, 2, 0.78}, ['ruler'] = {1.30, 2, 1.69}, ['missions'] = {-2.57, 2, -0.75}, ['missions_left'] = {2.57, 2, -0.75},
  ['starting'] = {1.30, 2, 3.1}, ['income_token'] = {0.30, 2, 1.69}, ['tuck_zone'] = {0.00, -0.25, 1.09},
  ['manpower_1'] = { 1.16, 2, -0.38},  ['manpower_2'] = { 0.95, 2, -0.38},  ['manpower_3'] = { 1.16, 2, -0.24},  ['manpower_4'] = { 0.95, 2, -0.24},
  ['manpower_5'] = { 1.16, 2, -0.09},  ['manpower_6'] = { 0.95, 2, -0.09},  ['manpower_7'] = { 1.16, 2,  0.05},  ['manpower_8'] = { 0.95, 2,  0.05},
  ['manpower_9'] = { 0.74, 2, -0.38}, ['manpower_10'] = { 0.74, 2, -0.24}, ['manpower_11'] = { 0.74, 2, -0.09}, ['manpower_12'] = { 0.74, 2,  0.05},
  ['manpower_13'] = { 1.06, 2, -0.38}, ['manpower_14'] = { 0.84, 2, -0.38}, ['manpower_15'] = { 1.06, 2, -0.24}, ['manpower_16'] = { 0.84, 2, -0.24},
  ['manpower_17'] = { 1.06, 2, -0.09}, ['manpower_18'] = { 0.84, 2, -0.09}, ['manpower_19'] = { 1.06, 2,  0.05}, ['manpower_20'] = { 0.84, 2,  0.05},
  ['treasury_1'] = { 1.75, 2, 0.45},  ['treasury_2'] = { 1.45, 2, 0.45},  ['treasury_3'] = { 1.15, 2, 0.45},  ['treasury_4'] = { 0.85, 2, 0.45},
  ['mp_a_1'] = { 0.44, 2, 0.67},  ['mp_a_2'] = { 0.22, 2, 0.67},  ['mp_a_3'] = { 0.00, 2, 0.67}, ['mp_d_1'] = { -0.38, 2, 0.67},  ['mp_d_2'] = { -0.60, 2, 0.67},
  ['mp_d_3'] = { -0.82, 2, 0.67},  ['mp_m_1'] = { -1.22, 2, 0.67},  ['mp_m_2'] = { -1.44, 2, 0.67},  ['mp_m_3'] = { -1.66, 2, 0.67},
  ['extra_mp_1'] = {1.00, 2, 2.40}, ['extra_mp_2'] = {1.20, 2, 2.40}, ['extra_mp_3'] = {1.40, 2, 2.40}, ['extra_mp_4'] = {1.60, 2, 2.40},
  ['extra_mp_5'] = {1.00, 2, 2.58}, ['extra_mp_6'] = {1.20, 2, 2.58}, ['extra_mp_7'] = {1.40, 2, 2.58}, ['extra_mp_8'] = {1.60, 2, 2.58},
}

Bot_Tableau_Local_Positions = { ['religion'] = {0.18, 2, 0.68}, ['army'] = {0.5, 2, 0.65}, ['bot_rules'] = {5.50, 2, 3.0}, ['bot_rules_right'] = {-5.50, 2, 3.0},
  ['starting'] = {2.57, 2, 0.25}, ['starting_left'] = {-2.57, 2, 0.25}, ['targeting_chart'] = {0.00, 2, 3.0}, ['die'] = {0.00, 2, 5.0}, ['income_token'] = {0.00, 2, 1.05},
  ['setup_card'] = {2.57, 2, 0.00},['setup_card_left'] = {-2.57, 2, 0.00}, ['event_cards'] = {3.57, 2, 0.00},['event_cards_left'] = {-3.57, 2, 0.00},
  ['manpower_1'] = { 1.77, 2, 0.00},  ['manpower_2'] = { 1.56, 2, 0.00},  ['manpower_3'] = { 1.35, 2, 0.00},  ['manpower_4'] = { 1.14, 2, 0.00},  ['manpower_5'] = { 0.93, 2, 0.00},  ['manpower_6'] = { 0.72, 2, 0.00},
  ['manpower_7'] = { 1.77, 2, 0.22},  ['manpower_8'] = { 1.56, 2, 0.22},  ['manpower_9'] = { 1.35, 2, 0.22}, ['manpower_10'] = { 1.14, 2, 0.22}, ['manpower_11'] = { 0.93, 2, 0.22}, ['manpower_12'] = { 0.72, 2, 0.22},
  ['manpower_13'] = { 1.77, 2, 0.11}, ['manpower_14'] = { 1.56, 2, 0.11}, ['manpower_15'] = { 1.35, 2, 0.11}, ['manpower_16'] = { 1.14, 2, 0.11}, ['manpower_17'] = { 0.93, 2, 0.11}, ['manpower_18'] = { 0.72, 2, 0.11},
  ['manpower_19'] = { 1.67, 2, 0.11}, ['manpower_20'] = { 1.24, 2, 0.11},
  ['army_1'] = { 1.77, 2, 0.60}, ['army_2']  = { 1.56, 2, 0.60}, ['army_3']  = { 1.35, 2, 0.60}, ['army_4']  = { 1.14, 2, 0.60},
  ['army_5'] = { 1.77, 2, 0.82}, ['army_6']  = { 1.56, 2, 0.82}, ['army_7']  = { 1.35, 2, 0.82}, ['army_8']  = { 1.14, 2, 0.82},
  ['army_9'] = { 1.77, 2, 1.04}, ['army_10'] = { 1.56, 2, 1.04}, ['army_11'] = { 1.35, 2, 1.04}, ['army_12'] = { 1.14, 2, 1.04},
  ['bot_power_1'] = { 1.72, 2, -0.70},  ['bot_power_2'] = {1.54, 2, -0.70},  ['bot_power_3'] = { 1.36, 2, -0.70},
  ['bot_power_4'] = { 1.72, 2, -0.52},  ['bot_power_5'] = {1.54, 2, -0.52},  ['bot_power_6'] = { 1.36, 2, -0.52},
  ['bot_power_7'] = { 1.72, 2, -0.34},  ['bot_power_8'] = {1.54, 2, -0.34},  ['bot_power_9'] = { 1.36, 2, -0.34},
  ['bot_power_10'] = { 1.63, 2, -0.61},  ['bot_power_11'] = {1.45, 2, -0.61},  ['bot_power_12'] = { 1.63, 2, -0.43},
  ['bot_power_13'] = { 1.45, 2, -0.43},  ['bot_power_14'] = {1.54, 2, -0.52},
}

Local_Large_Town_Positions = {
  { 0.485, -0.179}, { 0.177, -0.179}, { -0.134, -0.179}, { -0.468, -0.179}, { -0.772, -0.179}, { -1.083, -0.179}, { -1.402, -0.179}, { -1.712, -0.179}
}

Local_Small_Town_Positions = {
  { 0.521, -0.72}, { 0.276, -0.72}, { 0.018, -0.72}, { -0.228, -0.72}, { -0.488, -0.72}, { -0.739, -0.72}, { -0.996, -0.72}, { -1.241, -0.72}, { -1.503, -0.72}, { -1.747, -0.72},
  { 0.519, -0.47}, { 0.267, -0.47}, { 0.019, -0.47}, { -0.231, -0.47}, { -0.489, -0.47}, { -0.743, -0.47}, { -0.991, -0.47}, { -1.246, -0.47}, { -1.495, -0.47}, { -1.749, -0.47}
}

Local_Vassal_Positions = {
{ 0.527, 0.195},  { 0.274, 0.195},  { 0.274, 0.195},  { 0.019, 0.195},  { 0.019, 0.195},  { -0.235, 0.195}, { -0.235, 0.195},
{ -0.489, 0.195}, { -0.489, 0.195}, { -0.733, 0.195}, { -0.733, 0.195}, { -0.990, 0.195}, { -0.990, 0.195},
{ -1.241, 0.195}, { -1.241, 0.195}, { -1.498, 0.195}, { -1.498, 0.195}, { -1.752, 0.195}, { -1.752, 0.195}
}

Military_Tableau_Local_Positions = {
  ['upper_1']  = { 0.61, 1, -0.44},  ['upper_2'] = { 0.25, 1, -0.44}, ['upper_3'] = { 0.61, 1, -0.18}, ['upper_4'] = { 0.25, 1, -0.18},
  ['middle_1'] = { 0.61, 1, 0.08},  ['middle_2'] = { 0.25, 1, 0.08}, ['middle_3'] = { 0.61, 1, 0.26}, ['middle_4'] = { 0.25, 1, 0.26},
  ['lower_1']  = { 0.61, 1, 0.52},   ['lower_2'] = { 0.25, 1, 0.52},  ['lower_3'] = { 0.61, 1, 0.67},  ['lower_4'] = { 0.25, 1, 0.67},
  ['tuck_zone'] = {0.00, -0.25, 1.09},
}


--[[ --------------------
        onLoad Handler
     -------------------- ]]
function onLoad()
  -- Bury buttons
  local btn = getObjectFromGUID(Setup_Button_GUID)
  if btn then
    btn.setPosition({ 0, -0.7, 0})
    Notes.setNotes("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCheck the [b]Notebook[/b] for details on usage of this module")
  end

  -- Object Refs
  Removed_Components_Bag = getObjectFromGUID(Removed_Components_Bag_GUID)

  EventDecks = {}
  EventDecks['age1a'] = getObjectFromGUID(Event_Deck_GUIDs['age1a'])
  EventDecks['age1b'] = getObjectFromGUID(Event_Deck_GUIDs['age1b'])
  EventDecks['age1r'] = getObjectFromGUID(Event_Deck_GUIDs['age1r'])
  EventDecks['age2a'] = getObjectFromGUID(Event_Deck_GUIDs['age2a'])
  EventDecks['age2b'] = getObjectFromGUID(Event_Deck_GUIDs['age2b'])
  EventDecks['age2r'] = getObjectFromGUID(Event_Deck_GUIDs['age2r'])
  EventDecks['age3a'] = getObjectFromGUID(Event_Deck_GUIDs['age3a'])
  EventDecks['age3b'] = getObjectFromGUID(Event_Deck_GUIDs['age3b'])
  EventDecks['age3r'] = getObjectFromGUID(Event_Deck_GUIDs['age3r'])
  EventDecks['age4a'] = getObjectFromGUID(Event_Deck_GUIDs['age4a'])
  EventDecks['age4b'] = getObjectFromGUID(Event_Deck_GUIDs['age4b'])
  EventDecks['age4r'] = getObjectFromGUID(Event_Deck_GUIDs['age4r'])

  Generic_Mission_Deck = getObjectFromGUID(Generic_Mission_Deck_GUID)
  HRE_Authority_Marker = getObjectFromGUID(HRE_Authority_Marker_GUID)
  First_Player_Marker = getObjectFromGUID(First_Player_Marker_GUID)

  local tuckedCards = getObjectsWithTag('Tucked')
  if tuckedCards ~= nil then
    for _,i in pairs(tuckedCards) do
      i.clearContextMenu()
      i.addContextMenuItem("Detach Card", DetachCard)
    end
  end

  --On game load, seat everyone as a spectator so they won't see any hidden information
  for _, color in ipairs(getSeatedPlayers()) do
    Player[color].changeColor("Grey")
  end
end

--[[ ----------------------------------
       Helpers for manual setup
     ---------------------------------- ]]

function CreateRealmButtons()
  --This will track the actual buttons and what realm they are associated with
  RealmSetupButtons = {}
  --Trying to avoid placing duplicate tiles for realm pairs like England and Great Britian
  RealmsWithButtons = {}
  PlayerInSetup.color = Select_Realm_Target_Color

  --This is only used for seat 2 to put some things in a different spot
  PlayerInSetup.seat = Player_Seat_From_Color[Select_Realm_Target_Color]
  --Work out what year of the board is face up to determine what realms are selectable
  local mainboard = getObjectsWithTag('MainBoard')
  local mainboardYear = MAIN_BOARD_DATE[mainboard[1].getStateId()]
  PlayerInSetup.year = mainboardYear

  for name, code in pairs(REALM) do
    --First, we need to check if that realm is already taken, or
    --if a button has already been placed
    if code ~= '000' and SelectedRealms[code] == nil and RealmsWithButtons[code] == nil then
      --Then we need to make sure the relevant year exists for this realm's setup
      if SETUP_DATA[code][mainboardYear] ~= nil then
        --Then make sure we have a capital defined
        if SETUP_DATA[code][mainboardYear]['capital'] ~= nil then            
          local spawn_pos = SETUP_DATA[code][mainboardYear]['capital']
          local realmButton = spawnObject({
              type = "reversi_chip",
              position = {spawn_pos[1],2.0,spawn_pos[2]}, --This spawn the object just above the main board
              scale = {0.3,0.3,0.3},
              sound = false,
          })
          --Store a table of the buttons we've placed to reference later
          RealmSetupButtons[realmButton] = code
          --Track which realms we've placed a button for this time
          RealmsWithButtons[code] = true
          --This tag is used to define the behaviour when it's selected
          realmButton.addTag('RealmSetupButton')
          realmButton.setName(REALM_NAME[code])
          --This is so it's obvious which player it is for
          realmButton.setColorTint(COLOR_RGB_CODES[PlayerInSetup.color])
        end
      end
    end
  end

  -- At this point, we can't handle swapping or removing this seat, so
  -- destroy those buttons
  for button,data in pairs(Buttons_To_Swap) do
    if ( data.seat == PlayerInSetup.seat or data.target_color == PlayerInSetup.color ) and not button.isDestroyed() then
      button.destroy()
      waitFrames(5)
    end
  end

  for button,seat in pairs(Buttons_For_Realm_Selection) do
    if ( seat == PlayerInSetup.seat ) and not button.isDestroyed() then
      button.destroy()
    end
  end

  for button,seat in pairs(Buttons_To_Remove_Player) do
    if ( seat == PlayerInSetup.seat ) and not button.isDestroyed() then
      button.destroy()
    end
  end

  return 1
end

function AutoSetupRealm()
  -- Remove the buttons before placing other tokens
  for button,code in pairs(RealmSetupButtons) do
    button.destruct()
  end
   --Make sure this realm is not selected again
  SelectedRealms[PlayerInSetup.realm] = true
  SetupRealm({ seat = PlayerInSetup.seat, color = PlayerInSetup.color, realm = { PlayerInSetup.realm, PlayerInSetup.year}, })
  --Clear out this table so that someone else can choose a realm
  PlayerInSetup = {}
  Is_Realm_Selecting = false

  -- At this point, I need to check if all colours have been dealt with. If so, place
  -- the deferred pieces and other final steps
  ManualSetupRealmsDealtWithCount = ManualSetupRealmsDealtWithCount + 1
  if ManualSetupRealmsDealtWithCount == 6 then
    DeferredPlacements()
    RotateMissionDecks()

    local players = {} -- Work out which players are left
    for color,seat in pairs(Player_Seat_From_Color) do
      if getObjectFromGUID(Player_Hand_GUIDs[color]) ~= nil then
        players[seat] = {
          bot = false,
          color = color
        }
      end
    end

    DealActionCards(players)
    RotateTruceAndRemoveBags()
    printToAll("Remember to draw three additional action cards and appoint advisors and leaders.\nYou may keep up to four action cards and two missions in your hand (unless otherwise specified by the scenario)", {1,1,1})
  else
    broadcastToAll('Marriage and Alliance tokens will be placed after all colors have a realm selected or have been removed')
  end

  return 1
end


--[[ ----------------------------------
       Game Option Button Handlers
     ---------------------------------- ]]
function UnlockButtonPressed()
  local mainboard = getObjectsWithTag('MainBoard')
  if mainboard ~= nil then
    mainboard[1].interactable = true
  end
end

--[[ --------------------------
       Handle XML UI Elements
     -------------------------- ]]
function ui_set_active()
  for key, value in pairs(UI_PAGES) do
    local active = value == UI_Data.page
    Global.UI.setAttribute(key, "active",  active)
  end
  local elements = 0
  if UI_Data.page == UI_PAGES.scenario then
    for key, value in pairs(Scenario_List) do
      Global.UI.setAttribute(key, "active", value.active)
      if UI_Data.scenario == key then
        Global.UI.setAttribute(key, "image", "button-selected")
        Global.UI.setAttributes("scn-start", {image = "button", onClick = "ui_start_game"})
      else
        Global.UI.setAttribute(key, "image", "button")
      end
      if value.active then elements = elements + 1 end
    end
    Global.UI.setAttribute("scenario_panel", "height", (elements * 70))
  elseif UI_Data.page == UI_PAGES.variant then
    if Scenario_List[UI_Data.scenario] ~= nil then
      if UI_Data.variant_num == 0 then
        Global.UI.setAttributes("var-start", {image = "button-inactive", onClick = ""})
      else
        Global.UI.setAttributes("var-start", {image = "button", onClick = "ui_start_game"})
      end
      for i = 1, 6 do
        if Scenario_List[UI_Data.scenario]['variants'][i] ~= nil then
          Global.UI.setAttribute(('var0' .. i), "active", true)
          Global.UI.setAttribute(('var0' .. i .. '-text'), "text", Scenario_List[UI_Data.scenario]['variants'][i].name)
          elements = elements + 1
        else
          Global.UI.setAttribute(('var0' .. i), "active", false)
        end
        if UI_Data.variant_num == i then
          Global.UI.setAttribute('var0' .. i, "image", "button-selected")
        else
          Global.UI.setAttribute('var0' .. i, "image", "button")
        end
      end
    end
    Global.UI.setAttribute("variant_panel", "height", (elements * 70))
  elseif UI_Data.page == UI_PAGES.bots then
    for i = 1, 6 do
      if UI_Data.players[i] ~= nil then
        Global.UI.setAttribute(('bot'.. i ..'-cell1'), "active", true)
        Global.UI.setAttribute(('bot'.. i ..'-cell2'), "active", true)
        Global.UI.setAttribute(('bot'.. i ..'-realm'), "text", UI_Data.players[i].name)
        if UI_Data.players[i].bot then
          Global.UI.setAttribute(('bot'.. i ..'-type'), "text", 'Bot')
        else
          Global.UI.setAttribute(('bot'.. i ..'-type'), "text", 'Human')
        end
        if UI_Data.players[i].locked then
          Global.UI.setAttributes(('bot'.. i ..'-btn'), {image = "small-button-inactive", onClick = ""})
        else
          Global.UI.setAttributes(('bot'.. i ..'-btn'), {image = "small-button", onClick = "ui_toggle_bot"})
        end
        elements = elements + 1
      else
        Global.UI.setAttribute(('bot'.. i ..'-cell1'), "active", false)
        Global.UI.setAttribute(('bot'.. i ..'-cell2'), "active", false)
      end
    end
  elseif UI_Data.page == UI_PAGES.options then
    for i = 1, 9 do
      if UI_Data.options[i] ~= nil then
        Global.UI.setAttribute(('opt'.. i), "active", true)
        Global.UI.setAttribute(('opt'.. i ..'-desc'), "text", UI_Data.options[i].name)
        Global.UI.setAttribute(('opt'.. i ..'-text'), "text", UI_Data.options[i].values[UI_Data.options[i].selected])
        elements = elements + 1
      else
        Global.UI.setAttribute(('opt'.. i), "active", false)
      end
    end
    Global.UI.setAttribute("option_panel", "height", (elements * 70))
  end
end

function ui_minimise()
    --Use this method, rather than UI.hide, so that ui_set_active() works
    for key, _ in pairs(UI_PAGES) do
        Global.UI.setAttribute(key, "active",  false)
    end
    Global.UI.show("maximise")
end

function ui_maximise()
    --Find the "current" page and make it active
    --Then hide the maximise button
    ui_set_active()
    Global.UI.hide("maximise")
end


function ui_num_players_filter(player, value, id)
  local active = value=="True" and true or false
  Global.UI.setAttribute(id, "isOn", value)
  local num = tonumber(id)
  for key, val in pairs(Scenario_List) do
    if num == 0 then
      Scenario_List[key].active = true
    elseif val.players[num] then
      Scenario_List[key].active = active
    else
      Scenario_List[key].active = false
    end
  end
  ui_set_active()
end


function ui_generate_player_data(realms)
  for key, realm in pairs(realms) do
    local name = realm.name or REALM_NAME[key]
    local bot = realm.bot or false
    local locked = realm.locked or false
    local inactive = realm.inactive or false
    if not inactive then
      table.insert(UI_Data.players, {name = name, bot = bot, locked = locked})
    end
  end
end


function ui_generate_options()
  UI_Data.options = {}
  if Scenario_List[UI_Data.scenario] == nil then
    return
  end
  if Scenario_List[UI_Data.scenario].variants[UI_Data.variant_num] == nil then
    return
  end
  UI_Data.options[9] = {
    name = 'Randomize X-Events',
    values = {'On','Off'},
    selected = 2,
    info = [[Randomize the distribution of events with an "x" symbol within an age according to optional Rule #6.
  WARNING: This can cause erratic behavior in the mortality clock because two cards with the same symbol might show up in the same half of an age or even the same turn occasionally.]]
  }
  for _, list in pairs({Scenario_List[UI_Data.scenario], Scenario_List[UI_Data.scenario].variants[UI_Data.variant_num]}) do
    if list.options ~= nil then
      for i = 1, 9 do
        if list.options[i] ~= nil then
          if list.options[i].name == 'hide' then
            UI_Data.options[i] = nil
          else
            UI_Data.options[i] = {
              name = list.options[i].name or 'NAME MISSING',
              values = list.options[i].values or {'####'},
              selected = list.options[i].default or 1,
              info = list.options[i].info or '',
            }
          end
        end
      end
    end
  end
end


function ui_select_scenario(player, value, id)
  if value ~= "-1" then return end
  UI_Data.scenario = id
  Global.UI.setAttribute("scn-num_players", "text", 3)
  Global.UI.setAttribute("var-num_players", "text", 3)
  Global.UI.setAttribute("scn-title", "text", Scenario_List[id].name)
  Global.UI.setAttribute("var-title", "text", Scenario_List[id].name)
  local desc_text = Scenario_List[id].description
  local c = string.len(desc_text)
  local _, count = string.gsub(desc_text, "\n", "")
  local lines = (c / 55) + count
  local height = math.max(300, 50 + (lines * 20))
  Global.UI.setAttribute("scn_desc-panel", "height", height)
  Global.UI.setAttribute("var_desc-panel", "height", height)
  Global.UI.setAttribute("scn-description", "text", desc_text)
  Global.UI.setAttribute("var-description", "text", desc_text)
  Global.UI.setAttribute("scn-start", "active", true)
  if id == '0-00' then
    Global.UI.setAttribute("scn-start-text", "text", 'Start Game')
  else
    Global.UI.setAttribute("scn-start-text", "text", 'Continue')
  end
  ui_set_active()
end


function ui_select_variant(player, value, id)
  if value ~= "-1" then return end
  UI_Data.variant = id
  local num = string.sub(id, -2)
  UI_Data.variant_num = tonumber(num)
  local variant = Scenario_List[UI_Data.scenario].variants[UI_Data.variant_num]
  local desc_text = ""
  if variant ~= nil and variant.description ~= nil and variant.description ~= "" then
    desc_text = "Variant Information:\n" .. variant.description .. "\n\nScenario Information:\n" .. Scenario_List[UI_Data.scenario].description
  else
    desc_text = Scenario_List[UI_Data.scenario].description
  end
  local c = string.len(desc_text)
  local _, count = string.gsub(desc_text, "\n", "")
  local lines = (c / 55) + count
  local height = math.max(300, 50 + (lines * 20))
  Global.UI.setAttribute("var_desc-panel", "height", height)
  Global.UI.setAttribute("var-description", "text", desc_text)
  ui_set_active()
end


function ui_toggle_bot(player, value, id)
  if value ~= "-1" then return end
  local num = tonumber(string.sub(id, 4, 4))
  if UI_Data.players[num] ~= nil then
    UI_Data.players[num].bot = not (UI_Data.players[num].bot)
  end
  ui_set_active()
end

function ui_show_option_info(player, value, id)if value ~= "-1" then return end
  local num = tonumber(string.sub(id, 4, 4))
  Global.UI.setAttribute(('opt-description'), "text", UI_Data.options[num].info)
  ui_set_active()
end

function ui_toggle_option(player, value, id)
  if value ~= "-1" then return end
  local num = tonumber(string.sub(id, 4, 4))
  local i = UI_Data.options[num].selected
  if UI_Data.options[num].values[(i+1)] ~= nil then
    UI_Data.options[num].selected = i + 1
  else
    UI_Data.options[num].selected = 1
  end
  Global.UI.setAttribute(('opt-description'), "text", UI_Data.options[num].info)
  ui_set_active()
end

function ui_toggle_logging(player, value, id)
  if value ~= "-1" then return end
  if TEST_MODE then
    Global.UI.setAttribute(('log_txt_1'), "text", "Logging: Off")
    Global.UI.setAttribute(('log_txt_2'), "text", "Logging: Off")
    Global.UI.setAttribute(('log_txt_3'), "text", "Logging: Off")
    Global.UI.setAttribute(('log_txt_4'), "text", "Logging: Off")
    Global.UI.setAttribute(('log_btn_1'), "image", "small-button")
    Global.UI.setAttribute(('log_btn_2'), "image", "small-button")
    Global.UI.setAttribute(('log_btn_3'), "image", "small-button")
    Global.UI.setAttribute(('log_btn_4'), "image", "small-button")
    TEST_MODE = false
  else
    Global.UI.setAttribute(('log_txt_1'), "text", "Logging: On")
    Global.UI.setAttribute(('log_txt_2'), "text", "Logging: On")
    Global.UI.setAttribute(('log_txt_3'), "text", "Logging: On")
    Global.UI.setAttribute(('log_txt_4'), "text", "Logging: On")
    Global.UI.setAttribute(('log_btn_1'), "image", "small-button-selected")
    Global.UI.setAttribute(('log_btn_2'), "image", "small-button-selected")
    Global.UI.setAttribute(('log_btn_3'), "image", "small-button-selected")
    Global.UI.setAttribute(('log_btn_4'), "image", "small-button-selected")
    TEST_MODE = true
  end
end


function ui_back(player, value, id)
  if value ~= "-1" then return end
  if UI_Data.page == UI_PAGES.variant then
    UI_Data.page = UI_PAGES.scenario
    UI_Data.variant = ''
    UI_Data.variant_num = 0
    local height = Global.UI.getAttribute( "scn_desc-panel",  "height")
    Global.UI.setAttribute("var_desc-panel", "height", height)
    local desc_text = Global.UI.getAttribute( "scn-description",  "text")
    Global.UI.setAttribute("var-description", "text", desc_text)
    ui_set_active()
  elseif UI_Data.page == UI_PAGES.bots then
    UI_Data.page = UI_PAGES.variant
    UI_Data.players = {}
    ui_set_active()
  elseif UI_Data.page == UI_PAGES.options then
    UI_Data.page = UI_PAGES.bots
    UI_Data.options = {}
    Global.UI.setAttribute(('opt-description'), "text", "Click on an option to the left for more information")
    ui_set_active()
  end
end


function ui_start_game(player, value, id)
  if value ~= "-1" then return end
  if UI_Data.page == UI_PAGES.scenario and UI_Data.scenario ~= '0-00' then
    UI_Data.page = UI_PAGES.variant
    ui_set_active()
  elseif UI_Data.page == UI_PAGES.variant then
    UI_Data.page = UI_PAGES.bots
    ui_generate_player_data(Scenario_List[UI_Data.scenario]['variants'][UI_Data.variant_num]['player_realms'])
    ui_set_active()
  elseif UI_Data.page == UI_PAGES.bots then
    UI_Data.page = UI_PAGES.options
    ui_generate_options()
    ui_set_active()
  else
    Global.UI.hide("scenario")
    Global.UI.hide("variant")
    Global.UI.hide("bots")
    Global.UI.hide("options")
    startLuaCoroutine(Global, 'Setup_Game')
    local setup_button = getObjectFromGUID(Setup_Button_GUID)
    if setup_button then
      setup_button.destruct()
    end
  end
end



--[[
  ------------------------------------------------
  ------------------------------------------------
              Scenario Set-Up Scripts
  ------------------------------------------------
  ------------------------------------------------
--]]
function Setup_Game()

  -- Handle Manual Setup
  if UI_Data.scenario == '0-00' then
    --Keep these in sync for the later color-swapping features
    Player_Seat_From_Color =
    {
      blue = 1,
      yellow = 2,
      red = 3,
      white = 4,
      purple = 5,
      green = 6
    }

    Player_Color_From_Seat =
    {
      [Player_Seat_From_Color.blue] = 'blue',
      [Player_Seat_From_Color.yellow] = 'yellow',
      [Player_Seat_From_Color.red] = 'red',
      [Player_Seat_From_Color.white] = 'white',
      [Player_Seat_From_Color.purple] = 'purple',
      [Player_Seat_From_Color.green] = 'green'
    }

    --These are used for the manual setup helpers
    PlayerInSetup = {}
    SelectedRealms = {}
    --Once the below counter hits 6, we will place the deferred pieces
    ManualSetupRealmsDealtWithCount = 0

    for seat, color in pairs(Player_Color_From_Seat) do
      PlaceTableausAndBags(seat, color)
      local player_hand = getObjectFromGUID(Player_Hand_GUIDs[color])
      if player_hand == nil then
        log('Could not find player hand object')
      else
        player_hand.setPosition(Player_Hand_Positions[seat])
        player_hand.setRotation(Player_Hand_Rotations[seat])
      end
    end

    local hiddenzone = getObjectFromGUID('ccceaf')
    hiddenzone.destruct()
    local mainboard = getObjectFromGUID(Main_Board_GUID)
    mainboard.interactable = true

    DestructByGUID({ Deck_Shuffler_Zone_1_GUID, Deck_Shuffler_Zone_2_GUID, Event_Deck_Zone_GUID })
    DestructByGUID(Mission_Deck_Zone_GUIDs)
    DestructByGUID(Reference_Zone_GUIDs)
    DestructByGUID({ Physics_Determination_Zone_GUID })
    UpdateTuckZonePositions()

    --Create buttons for selecting a realm, removing a color and swapping them around
    CreateButtonsForRealms()

    broadcastToAll("Right-click the map to select the starting state, then click the Select Realm tile to choose your realm from the map", {1,1,1})
    return 1
  end


  -- Generate scenario data from selected scenario and variant
  -- TODO: May be outdated by UI_Data storage
  local scenario_data = {}
  local variant_list = Scenario_List[UI_Data.scenario].variants
  scenario_data = variant_list[UI_Data.variant_num]

  local players = scenario_data.player_realms

  -- Configure main board
  if scenario_data.board then
    local board = getObjectFromGUID(Main_Board_GUID)
    if board ~= nil then
      board.setState(scenario_data.board)
    end
  end

  UI_Data.start_age = (scenario_data.age or 1)

  -- Configure Bots
  if TEST_MODE then log('Configuring bots') end
  local active_count = 1
  local counter = 1
  for _, player in pairs(players) do
    if not player.inactive then
      player.bot = UI_Data.players[active_count].bot
      active_count = active_count + 1
    else
      player.bot = true
    end
    counter = counter + 1
  end

  if TEST_MODE then log('Setting Event draw count') end
  local event_config = { }
  if scenario_data.draw_per_round then
    event_config.draw_per_round = scenario_data.draw_per_round
  else
    event_config.draw_per_round = active_count
  end
  if scenario_data.reveal_per_round then
    event_config.reveal_per_round = scenario_data.reveal_per_round
  else
    event_config.reveal_per_round = 3
  end

  if TEST_MODE then log('Game configured to draw ' .. (event_config.draw_per_round or '?') .. ' cards per round.') end

  Idea_Config = {
    admin = {{Idea_Card_GUIDs.admin.tolerance, {}}, '', ''},
    diplo = {{Idea_Card_GUIDs.diplo.quest_for_the_new_world, {}}, '', ''},
    war =   {{Idea_Card_GUIDs.war.cannons, {}}, '', ''}
  }

  if UI_Data.scenario == '1-00' then
    broadcastToAll("Setting up: [u]Introductory Scenario (3 players)[/u]", {1,1,1})

    local deck_admin = getObjectFromGUID(Action_Deck_GUIDs.admin)
    local deck_diplo = getObjectFromGUID(Action_Deck_GUIDs.diplo)
    local deck_war = getObjectFromGUID(Action_Deck_GUIDs.war)
    local deck_future_trade = getObjectFromGUID(Trade_Deck_GUIDs.future)

    -- Remove unused Action cards from decks
    local pos = { deck_future_trade.getPosition()[1], 2, deck_future_trade.getPosition()[3]}
    local rot = {0, 270, 180}
    pos[3] = pos[3] - 2.5
    PlaceCardsByPrefixOrTag(deck_admin, pos, rot, {'ADM-01-', 'ADM-02-', 'ADM-07-', 'ADM-08-'})
    pos[3] = pos[3] - 2.5
    PlaceCardsByPrefixOrTag(deck_diplo, pos, rot, {'DIP-02-', 'DIP-05-', 'DIP-06-', 'DIP-07-'})
    pos[3] = pos[3] - 2.5
    PlaceCardsByPrefixOrTag(deck_war, pos, rot, {'MIL-01-', 'MIL-03-', 'MIL-05-', 'MIL-06-', 'MIL-09-'})
    pos[3] = pos[3] - 2.5

    -- Religion Token
    PlaceObjectsFromBag({ WesternMapReligion.andalucia }, Bag_GUIDs['cat_div'], true)

    CoreScenarioSetup(scenario_data)

    -- move event cards for second half of age 1
    local event_zone = getObjectFromGUID(Event_Deck_Zone_GUID)
    for _, obj in ipairs(event_zone.getObjects()) do
      obj.setPosition(pos)
    end


  elseif UI_Data.scenario == '1-01' then

    -- Options
    if UI_Data.options[1] ~= nil then
      if UI_Data.options[1].selected == 1 then
        scenario_data.last_age = 1
        scenario_data.age_2_events = nil
        scenario_data.age_3_events = nil
        -- TODO: Remove all future ideas
      elseif UI_Data.options[1].selected == 2 then
        scenario_data.last_age = 2
        scenario_data.age_3_events = nil
        -- TODO: Remove all future ideas
      end
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Green_S = nil -- Remove Portugal DNPR
    end
    if UI_Data.options[3] ~= nil then
      if UI_Data.options[3].selected == 2 then
        scenario_data.DNPR_Pink_L = nil -- Remove Denmark DNPR
      else
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false) -- Left HRE marker
      end
    end
    if UI_Data.options[4] == nil or UI_Data.options[4].selected == 2 then
      scenario_data.powerstruggles = nil
    end

    -- Religion Token
    PlaceObjectsFromBag({ WesternMapReligion.andalucia }, Bag_GUIDs['cat_div'], true)

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Discovery and Reformation (3 players)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]Discovery and Reformation (4 players)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 3 then
      broadcastToAll("Setting up: [u]Discovery and Reformation (5 players)[/u]", {1,1,1})
      if players[REALM.denmark].bot then
        -- Left HRE markers
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false)

        -- Remove Influence
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {0.25, 6.35, 'Cube'} )
      else
        local denmark_seat = players[REALM.denmark].seat
        local pos = Main_Tableau_Positions[denmark_seat]
        local rot = Main_Tableau_Rotations[denmark_seat]
        local new_pos = GetOffset(pos, Main_Tableau_Offset_Positions.extra_events, denmark_seat, 2)
        TakeCardsByCodes({{'309-2', 1}, {'309-1', 1}, {'209-2', 1}, {'209-1', 1}}, new_pos, rot )
      end

    end

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '1-02' then

    -- Options
    if UI_Data.options[1] ~= nil then
      if UI_Data.options[1].selected == 1 then
        if TEST_MODE then log('Option 1 Selected: Amsterdam & Zeeland') end
        scenario_data.player_realms[REALM.netherlands].realm = {REALM.netherlands, '1444'}
      elseif UI_Data.options[1].selected == 2 then
        if TEST_MODE then log('Option 2 Selected: Brugge & Gent') end
        scenario_data.player_realms[REALM.netherlands].realm = {REALM.netherlands, 'S102B'}
      elseif UI_Data.options[1].selected == 3 then
        if TEST_MODE then log('Option 3 Selected: Antwerpen & Breda') end
        scenario_data.player_realms[REALM.netherlands].realm = {REALM.netherlands, 'S102C'}
      end
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Blue_L = nil -- Remove France DNPR
    end
    if UI_Data.options[3] ~= nil then
      if UI_Data.options[3].selected == 2 then
        scenario_data.DNPR_Pink_S = nil -- Remove Denmark DNPR
      else
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false) -- Left HRE marker
      end
    end
    if UI_Data.options[4] == nil or UI_Data.options[4].selected == 2 then
      scenario_data.powerstruggles = nil
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Imperial Waltz (3 players + 1 Bot)[/u]", {1,1,1})
    else
      broadcastToAll("Setting up: [u]Imperial Waltz (3 players + 2 Bots)[/u]", {1,1,1})
    end

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '1-03' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Blue_L = nil -- Remove France/Austria DNPR
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Sea Route to India (3 players)[/u]", {1,1,1})
    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]Sea Route to India (4 players)[/u]", {1,1,1})
      if players[REALM.france].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {WesternMap.nantes[1], WesternMap.nantes[2], 'Marriage'} )
        table.insert(scenario_data.remove, {-5.54, 0.35, 'Cube'} )
      end
    end

    -- Religion
    PlaceObjectsFromBag({ WesternMapReligion.andalucia }, Bag_GUIDs['cat_div'], false)
    PlaceObjectsFromBag({ WesternMapReligion.northernmorocco }, Bag_GUIDs['ort_mus'], true)

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '1-04' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Green_L = nil -- Remove Portugal DNPR
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Blue_S = nil -- Remove Venice DNPR
    end
    if UI_Data.options[3] ~= nil and UI_Data.variant_num ~=2 then
      if UI_Data.options[3].selected == 1 then
        scenario_data.DNPR_Pink_L = nil -- Remove Denmark/Poland DNPR
      elseif UI_Data.options[3].selected == 2 then
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false) -- Left HRE marker
      elseif UI_Data.options[3].selected == 3 then
        scenario_data.DNPR_Pink_L = {WesternMap.sieradz, WesternMap.poznan, WesternMap.kalisz, WesternMap.danzig, WesternMap.kulm}
      end
    end
    if UI_Data.options[4] ~= nil then
      if UI_Data.options[4].selected == 2 then
        scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 2)
      elseif UI_Data.options[4].selected == 3 then
        scenario_data.powerstruggles = nil
      end
    else
      scenario_data.powerstruggles = nil
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]The Wars of Religion (2 players, 0 bots)[/u]", {1,1,1})
    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]The Wars of Religion (3 players)[/u]", {1,1,1})
      -- Remove marriage token for French bot due to lack of vassals
      if players[REALM.france].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {WesternMap.nantes[1], WesternMap.nantes[2], 'Marriage'} )
        table.insert(scenario_data.remove, {-8.41, 0.29, 'Cube'} )
        table.insert(scenario_data.remove, {-8.41, -0.08, 'Cube'} )
      end
    elseif UI_Data.variant_num == 3 then
      broadcastToAll("Setting up: [u]The Wars of Religion (4 players)[/u]", {1,1,1})
      if players[REALM.france].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {WesternMap.nantes[1], WesternMap.nantes[2], 'Marriage'} )
        table.insert(scenario_data.remove, {-8.41, 0.29, 'Cube'} )
        table.insert(scenario_data.remove, {-8.41, -0.08, 'Cube'} )
      end
    else
      broadcastToAll('Scenario variant not found: ' .. UI_Data.variant_num)
    end

    -- Religion
    PlaceObjectsFromBag({ WesternMapReligion.andalucia }, Bag_GUIDs['cat_div'], false)

    CoreScenarioSetup(scenario_data)

  elseif UI_Data.scenario == '1-05' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Pink_S = nil -- Remove Hungary DNPR
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Green_L = nil -- Remove Peru DNPR
    end
    if UI_Data.options[3] ~= nil and UI_Data.options[3].selected == 2 then
      scenario_data.DNPR_Orange_S = nil -- Remove New Spain DNPR
    end
    if UI_Data.options[4] ~= nil then
      if UI_Data.variant_num == 1 then
        if UI_Data.options[4].selected == 1 then
          scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 2)
        elseif UI_Data.options[4].selected == 2 then
          scenario_data.powerstruggles = nil
        end
      elseif UI_Data.variant_num == 2 then
        if UI_Data.options[4].selected == 1 then
          scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 5)
          table.remove(scenario_data.powerstruggles, math.random(5))
        elseif UI_Data.options[4].selected == 2 then
          scenario_data.powerstruggles = nil
        end
      end
    else
      scenario_data.powerstruggles = nil
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]The Bourbonic Plague (4 players)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]The Bourbonic Plague (6 players)[/u]", {1,1,1})

      local book2 = getObjectFromGUID(Scenario_Book_2_GUID)
      book2.setPositionSmooth({41.31, 0.91, 10.00})
      book2.Book.setPage(1)
    end

    -- Left HRE markers
    PlaceObjectsFromBag({ {-0.84, -2.31}, {-0.33, -3.19} }, Bag_GUIDs['hre_man'], false)

    CoreScenarioSetup(scenario_data)

    broadcastToAll("Remember to assign the extra MP (not exceeding 5 total in any category)", {1,1,1})
    waitFrames(60)
    broadcastToAll("Remember to only draw 4 event cards per round", {1,1,1})


  elseif UI_Data.scenario == '1-06' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Blue_L = nil -- Remove France DNPR
    end

    broadcastToAll("Setting up: [u]The Ambitious Margrave (solo)[/u]", {1,1,1})
    -- Left HRE markers
    PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false)

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '2-01' then

    -- Options
    if UI_Data.options[1] ~= nil then
      if UI_Data.options[1].selected == 1 then
        scenario_data.last_age = 2
        scenario_data.age_3_events = nil
        scenario_data.age_4_events = nil
        -- TODO: Remove all future ideas
      elseif UI_Data.options[1].selected == 2 then
        scenario_data.last_age = 3
        scenario_data.age_4_events = nil
        -- TODO: Remove all future ideas
      end
    end
    if UI_Data.options[2] ~= nil then
      if UI_Data.options[2].selected == 2 then
        scenario_data.DNPR_Pink_L = nil -- Remove Denmark DNPR
      else
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false) -- Left HRE marker
      end
    end
    if UI_Data.options[3] ~= nil and UI_Data.options[3].selected == 2 then
      scenario_data.DNPR_Green_S = nil -- Remove Portugal DNPR
    end
    if UI_Data.options[4] ~= nil and UI_Data.options[4].selected == 2 then
      scenario_data.DNPR_Orange_L = nil -- Remove Mamluks DNPR
    end
    if UI_Data.options[5] ~= nil then
      if UI_Data.options[5].selected == 2 then
        scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 6)
      elseif UI_Data.options[5].selected == 3 then
        scenario_data.powerstruggles = nil
      end
    else
      scenario_data.powerstruggles = nil
    end

    broadcastToAll("Setting up: [u]The Grand Campaign (6 players)[/u]", {1,1,1})

    -- Remove influence cube for Polish bot due to lack of vassals
    if players[REALM.poland].bot then
      if scenario_data.remove == nil then
        scenario_data.remove = {}
      end
      table.insert(scenario_data.remove, {8.21, 2.07, 'Cube'} )
    end

    if UI_Data.variant_num == 2 then
      -- Remove influence cube for Muscovy bot due to lack of vassals
      if players[REALM.muscovy].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {15.57, 7.53, 'Cube'} )
        table.insert(scenario_data.remove, {15.75, 6.33, 'Cube'} )
      end

    end

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '2-02' then

    -- Options
    if UI_Data.options[1] ~= nil then
      if UI_Data.options[1].selected == 1 then
        scenario_data.last_age = 3
        scenario_data.age_4_events = nil
        -- TODO: Remove all future ideas
      end
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Green_S = nil -- Remove Hungary DNPR
    end
    if UI_Data.options[3] ~= nil and UI_Data.options[3].selected == 1 then
      PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false) -- Left HRE marker
    else
      scenario_data.DNPR_Pink_S = nil -- Remove Denmark DNPR
    end
    if UI_Data.options[4] ~= nil and UI_Data.options[4].selected == 2 then
      scenario_data.DNPR_Orange_L = nil -- Remove Mamluks DNPR
    end
    if UI_Data.options[5] ~= nil then
      if UI_Data.options[5].selected == 2 then
        scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 4)
      elseif UI_Data.options[5].selected == 3 then
        scenario_data.powerstruggles = nil
      end
    else
      scenario_data.powerstruggles = nil
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (3 players)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (4 players)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 3 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (5 players with Denmark)[/u]", {1,1,1})
      -- Remove influence cube for Denmark bot due to lack of vassals and remove area from HRE
      if players[REALM.denmark].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {0.25, 6.35, 'Cube'} )
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false)
      end

    elseif UI_Data.variant_num == 4 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (5 players with Sweden)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 5 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (5 players with Mamluks)[/u]", {1,1,1})

    elseif UI_Data.variant_num == 6 then
      broadcastToAll("Setting up: [u]Enemy at the Gates (6 players)[/u]", {1,1,1})
      -- Remove influence cube for Denmark bot due to lack of vassals and remove area from HRE
      if players[REALM.denmark].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {0.25, 6.35, 'Cube'} )
        PlaceObjectsFromBag({ {-0.37, 5.60} }, Bag_GUIDs['hre_man'], false)
      end
    end

    -- Remove influence cube for Muscovy bot due to lack of vassals
    if players[REALM.muscovy].bot then
      if scenario_data.remove == nil then
        scenario_data.remove = {}
      end
      table.insert(scenario_data.remove, {15.57, 7.53, 'Cube'} )
      table.insert(scenario_data.remove, {15.75, 6.33, 'Cube'} )
    end

    if UI_Data.variant_num > 1 then
      -- Remove influence cube for Polish bot due to lack of vassals
      if players[REALM.poland].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {8.21, 2.07, 'Cube'} )
      end
    end

    CoreScenarioSetup(scenario_data)

  elseif UI_Data.scenario == '2-03' then

    -- Options
    if UI_Data.options[1] ~= nil then
      if UI_Data.options[1].selected == 2 then
        scenario_data.powerstruggles = RandomizePartialList(scenario_data.powerstruggles, 1, 4)
      elseif UI_Data.options[1].selected == 3 then
        scenario_data.powerstruggles = nil
      end
    else
      scenario_data.powerstruggles = nil
    end

    local objective_positions = {}
    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Mediterranean Dominance (5 players)[/u]", {1,1,1})
      objective_positions = { EasternMap.athina, WesternMap.baleares, EasternMap.cyprus, WesternMap.firenze, WesternMap.genova,
                              WesternMap.napoli, WesternMap.provence, EasternMap.rhodes, WesternMap.tangiers, WesternMap.tunis }
      if scenario_data.remove == nil then
        scenario_data.remove = {}
      end
      table.insert(scenario_data.remove, {13.10, -11.95, 'Cube'} )

    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]Mediterranean Dominance (6 players)[/u]", {1,1,1})
      objective_positions = { WesternMap.baleares, EasternMap.creta, EasternMap.cyprus, WesternMap.firenze, WesternMap.genova,
                              WesternMap.gibraltar, WesternMap.malta, WesternMap.provence, EasternMap.rhodes, WesternMap.tangiers }
      -- Remove influence cube for Ottoman I (Rumelia) bot due to lack of vassals
      if players[REALM.rumelia].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {9.95, -2.50, 'Cube'} )
      end
      -- Remove influence cubes for Ottoman II (Egypt) bot due to lack of vassals
      if players[REALM.egypt].bot then
        if scenario_data.remove == nil then
          scenario_data.remove = {}
        end
        table.insert(scenario_data.remove, {-2.20, -10.08, 'Cube'} )
        table.insert(scenario_data.remove, {0.15, -10.66, 'Cube'} )
        table.insert(scenario_data.remove, {1.77, -12.10, 'Cube'} )
      end
    end

    -- Objective Markers
    PlaceObjectsFromBag( objective_positions, Bag_GUIDs['occ_bat'], false)

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '2-04' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Pink_S = nil -- Remove USA DNPR
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Orange_L = nil -- Remove Netherlands DNPR
    end
    if UI_Data.options[3] ~= nil and UI_Data.options[3].selected == 2 then
      scenario_data.DNPR_Blue_L = nil -- Remove Sweden DNPR
    end
    if UI_Data.options[4] ~= nil and UI_Data.options[4].selected == 2 then
      scenario_data.DNPR_Green_S = nil -- Remove Sicily DNPR
    end
    if UI_Data.options[5] ~= nil and UI_Data.options[5].selected == 2 then
      scenario_data.DNPR_Pink_L = nil -- Remove Savoy DNPR
    end

    broadcastToAll("Setting up: [u]Napoleon Rising (6 players)[/u]", {1,1,1})

    -- Left HRE markers
    PlaceObjectsFromBag({ {-2.54, 2.70}, {-0.73, -2.29}, {-0.19, -3.26} }, Bag_GUIDs['hre_man'], false)

    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '2-05' then
    broadcastToAll("Setting up: [u]Here I Stand Once More (6 players)[/u]", {1,1,1})

    -- Religion
    PlaceObjectsFromBag({ WesternMapReligion.andalucia }, Bag_GUIDs['cat_div'], false)
    PlaceObjectsFromBag({ WesternMapReligion.brandenburg }, Bag_GUIDs['cou_pro'], true)

    -- Left HRE markers
    PlaceObjectsFromBag({ {-0.33, -3.19}, {2.30, -4.66} }, Bag_GUIDs['hre_man'], false)

    -- Remove an influence cube for Papal states if Habsburgs is a bot
    if players[REALM.spain].bot then
      if scenario_data.remove == nil then
        scenario_data.remove = {}
      end
      table.insert(scenario_data.remove, {3.43, -5.89, 'Cube'} )
      table.insert(scenario_data.remove, {3.78, -5.90, 'Cube'} )
    end
    CoreScenarioSetup(scenario_data)


  elseif UI_Data.scenario == '2-06' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Green_S = nil -- Remove Hungary DNPR
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Orange_L = nil -- Remove Mamluks DNPR
    end

    broadcastToAll("Setting up: [u]The Rise of the Purple Phoenix (solo)[/u]", {1,1,1})

    local deck_future_trade = getObjectFromGUID(Trade_Deck_GUIDs.future)
    local pos = { deck_future_trade.getPosition()[1], 2, deck_future_trade.getPosition()[3]}
    local rot = {0, 90, 180}
    pos[3] = pos[3] - 2.5
    PlaceCardsByGUIDs(Milestone_Deck_GUIDs.age1.exp, {Milestone_Card_GUIDs.age1.exp.discover}, pos, rot )
    pos[3] = pos[3] - 2.5
    PlaceCardsByGUIDs(Idea_Deck_GUIDs.admin, {Idea_Card_GUIDs.admin.colonization_policy}, pos, rot )
    PlaceCardsByGUIDs(Idea_Deck_GUIDs.diplo, {Idea_Card_GUIDs.diplo.quest_for_the_new_world}, pos, rot )

    CoreScenarioSetup(scenario_data)

    -- TODO: Remove when MP is in treasury
    -- PlaceObjectsFromBag( {WesternMap.venezia}, Bag_GUIDs['rev_man'], true)


  elseif UI_Data.scenario == '2-07' then

    -- Options
    if UI_Data.options[1] ~= nil and UI_Data.options[1].selected == 2 then
      scenario_data.DNPR_Green_L = nil -- Remove Ferrara DNPR
    end
    if UI_Data.options[2] ~= nil and UI_Data.options[2].selected == 2 then
      scenario_data.DNPR_Orange_S = nil -- Remove Siena DNPR
    end
    if UI_Data.options[3] ~= nil and UI_Data.options[3].selected == 2 then
      scenario_data.DNPR_Blue_L = nil -- Remove Palatinate DNPR
    end
    if UI_Data.options[4] ~= nil and UI_Data.options[4].selected == 2 then
      scenario_data.DNPR_Pink_S = nil -- Remove Frankfurt DNPR
    end

    if UI_Data.variant_num == 1 then
      broadcastToAll("Setting up: [u]Glory for Ulm (solo)[/u]", {1,1,1})
    elseif UI_Data.variant_num == 2 then
      broadcastToAll("Setting up: [u]Glory for Ulm (solo with alternate start)[/u]", {1,1,1})
    end

    CoreScenarioSetup(scenario_data)

    local seat = players[REALM.ulm].seat
    local new_pos = Player_Hand_Positions[seat]
    PlaceGuidObjectFromBag( { new_pos[1], new_pos[3] }, Action_Deck_GUIDs.diplo, false, '04259f', Main_Tableau_GUIDs[seat])
    PlaceGuidObjectFromBag( { new_pos[1], new_pos[3] }, Action_Deck_GUIDs.diplo, false, '545fdd', Main_Tableau_GUIDs[seat])


  else
    broadcastToAll("Scenario not handled: " .. (UI_Data.scenario or '') , {1,1,1})
  end


      -----------------------------------
      --- End setup for all scenarios ---
      -----------------------------------

  DeferredPlacements()

  RotateMissionDecks()

  if TEST_MODE then log('Starting bot deck coroutine') end
  startLuaCoroutine(Global, 'SetupBotDecks')


  if TEST_MODE then log('Shuffing cards in zone 1') end
  local shuffler = getObjectFromGUID(Deck_Shuffler_Zone_1_GUID)
  local decks_to_shuffle = shuffler.getObjects()
  for _,i in pairs(decks_to_shuffle) do
    if i.type == 'Deck' then
      i.shuffle()
      local pos = i.getPosition()
      if pos[3] < 1.5 then
        local new_pos = Event_Card_Positions[1]
        new_pos[2] = 3 - (1 * pos[3])
        i.setPosition(new_pos)
      end
    end
  end
  if TEST_MODE then log('Zone 1 completed') end

  if TEST_MODE then log('Shuffing cards in zone 2') end
  shuffler = getObjectFromGUID(Deck_Shuffler_Zone_2_GUID)
  decks_to_shuffle = shuffler.getObjects()
  for _,i in pairs(decks_to_shuffle) do
    if i.type == 'Deck' then
      i.shuffle()
    end
  end
  if TEST_MODE then log('Zone 2 completed') end

  if TEST_MODE then log('Preparing Milestones') end
    PrepareMilestones(scenario_data)
  if TEST_MODE then log('Milestone script completed') end

  if TEST_MODE then log('Preparing Idea Cards') end
    PrepareIdeaDisplay(scenario_data)
  if TEST_MODE then log('Idea Card script completed') end

  -- Lock Rules & References
  local references = getObjectsWithTag('Reference')
  local targeting = getObjectsWithTag('Targeting')
  local rules = getObjectsWithTag('Rules')
  for _, o in ipairs(references) do
    o.setLock(true)
  end
  for _, o in ipairs(targeting) do
    o.setLock(true)
  end
  for _, o in ipairs(rules) do
    o.setLock(true)
  end

  -- Draw Event Cards
  waitFrames(25)
  local event_zone = getObjectFromGUID(Event_Deck_Zone_GUID)
  local event_deck = event_zone.getObjects()[1]
  if event_deck ~= nil then
    for i = 2, (event_config.draw_per_round + 1), 1 do
      local pos = Event_Card_Positions[i]
      local flip = true
      if i > (event_config.reveal_per_round + 1 ) then
        flip = false
      end
      event_deck.takeObject({
        position          = pos,
        flip              = flip
      })
      waitFrames(5)
    end
  end
  waitFrames(10)

  DealActionCards(players)

  RotateTruceAndRemoveBags()

  -- Remove any objects specified by the scenario
  if scenario_data.remove then
    for _, entry in pairs(scenario_data.remove) do
      local pos = {entry[1], entry[2]}
      local tag = entry[3]
      RemoveByPosAndTags( {pos}, {tag} )
      waitFrames(5)
    end
  end

  -- Late removal of cards specified by the scenario
  if UI_Data.scenario == '2-06' then
    local deck_future_trade = getObjectFromGUID(Trade_Deck_GUIDs.future)
    local pos = { deck_future_trade.getPosition()[1], 2, deck_future_trade.getPosition()[3] - 2.5}
    PlaceCardsByGUIDs(Milestone_Deck_GUIDs.age4.war, {
      Milestone_Card_GUIDs.age2.eco.global, Milestone_Card_GUIDs.age2.exp.circumnavigation, Milestone_Card_GUIDs.age2.exp.expand,
      Milestone_Card_GUIDs.age2.pol.colonial, Milestone_Card_GUIDs.age3.exp.empire, Milestone_Card_GUIDs.age3.exp.sun,
      Milestone_Card_GUIDs.age3.exp.trade, Milestone_Card_GUIDs.age3.war.colonies, Milestone_Card_GUIDs.age4.eco.workshop,
      Milestone_Card_GUIDs.age4.exp.australis, Milestone_Card_GUIDs.age4.exp.jewel
    }, pos, {0, 90, 180} )
  end

  -- Flip Power Struggle deck if available:
  FlipObjectsByPosition({Power_Struggle_Upcoming}, {'PowerStruggle'})
  waitFrames(5)

  -- Check for wrong physics settings
  local physics_zone = getObjectFromGUID(Physics_Determination_Zone_GUID)
  local physics_zone_objects = physics_zone.getObjects()
  if physics_zone_objects ~= nil then
    if #physics_zone_objects > 0 then
      broadcastToAll('Physics settings seem incorrect! Please enable "Full Physics" in the options and reload the module.', {1,0.5,0.5})
    end
  end

    -- Remove inactive scripting zones
  DestructByGUID({ Deck_Shuffler_Zone_1_GUID, Deck_Shuffler_Zone_2_GUID, Event_Deck_Zone_GUID })
  DestructByGUID(Mission_Deck_Zone_GUIDs)
  DestructByGUID(Reference_Zone_GUIDs)
  physics_zone.destruct()

  -- Update Tuck Zones
  UpdateTuckZonePositions()

  waitFrames(10)
  Notes.setNotes("")
  broadcastToAll("See chat for required user actions", {1,1,1})
  broadcastToAll("Set-up completed", {1,1,1})
  printToAll("Remember to draw three additional action cards and appoint advisors and leaders.\nYou may keep up to four action cards and two missions in your hand (unless otherwise specified by the scenario)", {1,1,1})
  return 1
end


--[[
  ------------------------------------------------
  ------------------------------------------------
            Core Scenario Setup Script
  ------------------------------------------------
  ------------------------------------------------
--]]

function CoreScenarioSetup(scenario_data)
  if TEST_MODE then log('Starting core scenario setup') end
  local players = scenario_data.player_realms

  if scenario_data.book then
    if scenario_data.book[1] == 1 then
      PlaceScenarioBook(Scenario_Book_1_GUID, scenario_data.book[2])

    elseif scenario_data.book[1] == 2 then
      PlaceScenarioBook(Scenario_Book_2_GUID, scenario_data.book[2])
    end
  end

  if scenario_data.ideas then
    if scenario_data.ideas.admin then
      Idea_Config.admin = scenario_data.ideas.admin
    end
    if scenario_data.ideas.diplo then
      Idea_Config.diplo = scenario_data.ideas.diplo
    end
    if scenario_data.ideas.war then
      Idea_Config.war = scenario_data.ideas.war
    end
  end

  ManageHandsAndPrestige(players)
  for _, p in pairs(players) do
    PlaceTableausAndBags(p.seat, p.color)
  end

  if TEST_MODE then log('Preparing Event Deck') end
  PrepareEventDecks(scenario_data)

  if TEST_MODE then log('Preparing Trade Deck') end
  PrepareTradeDeck(scenario_data)

  if TEST_MODE then log('Placing extra Manpower') end
  if scenario_data.manpower then
    PlaceObjectsFromBag( scenario_data.manpower, Bag_GUIDs['rev_man'], true)
  end

  if TEST_MODE then log('Setting up Papal Curia') end
  SetupPapalCuria(scenario_data)

  if TEST_MODE then log('Setting up HRE') end
  SetupHRE(scenario_data)

  if TEST_MODE then log('Placing DNPRs') end
    PlaceDNPRs(scenario_data)

  -- Realms
  for _, p in pairs(players) do
    SetupRealm(p)
  waitFrames(15)
  end

  if TEST_MODE then log('Preparing Missions') end
  ProcessMissionDecks(scenario_data)
  waitFrames(5)

  if TEST_MODE then log('Preparing Power Struggle deck') end
  PreparePowerStruggles(scenario_data)

  if TEST_MODE then log('Core scenario setup complete') end
end



--[[
  ------------------------------------------------
  ------------------------------------------------
              Set-Up Realm Script
  ------------------------------------------------
  ------------------------------------------------
--]]
-- Setup a Realm based on a card and color
function SetupRealm(player)
  local realmTable = {}
  if player.inactive then
    local dataTable = GetRealmData(player.realm[1], player.realm[2])
    realmTable = GetRealmData('000', 'default')
    realmTable.setup_bag_guid = dataTable.setup_bag_guid
    realmTable.ruler = dataTable.ruler
    realmTable.religion = RELIGION.none
    realmTable.army1 = 0
    realmTable.bot_power = dataTable.bot_power
    realmTable.events = dataTable.events
  else
    realmTable = GetRealmData(player.realm[1], player.realm[2])
  end
  realmTable.realm_name = player.name or REALM_NAME[player.realm[1]]
  if TEST_MODE then log('Created Realm table for ' .. realmTable.realm_name or 'unknown') end
  local seat = player.seat
  local color = player.color
  local is_bot = player.bot
  local is_start = player.start
  local prestige = player.prestige
  local extra_mp = player.extra_mp

  local main_tableau = getObjectFromGUID(Main_Tableau_GUIDs[color])
  local army_tableau = getObjectFromGUID(Army_Tableau_GUIDs[color])
  local fleet_tableau = getObjectFromGUID(Fleet_Tableau_GUIDs[color])
  local prestige_marker = getObjectFromGUID(Prestige_Marker_GUIDs[color])
  local status_marker = getObjectFromGUID(Round_Status_Marker_GUIDs[color])

  local positions = {}
  local new_pos = {}

  -- Check for starting player
  if is_start then
    if is_bot then
        if seat == 2 then
            First_Player_Marker.setPositionSmooth(main_tableau.positionToWorld(Bot_Tableau_Local_Positions.starting_left))
            First_Player_Marker.setRotationSmooth(Main_Tableau_Rotations[seat])
        else
            First_Player_Marker.setPositionSmooth(main_tableau.positionToWorld(Bot_Tableau_Local_Positions.starting))
            First_Player_Marker.setRotationSmooth(Main_Tableau_Rotations[seat])
        end
    else
        First_Player_Marker.setPositionSmooth(main_tableau.positionToWorld(Main_Tableau_Local_Positions.starting))
        First_Player_Marker.setRotationSmooth(Main_Tableau_Rotations[seat])
    end
  end

  -- Remove components unused by bot players
  if is_bot then
    main_tableau.setState(2)
    waitFrames(5)
    main_tableau = getObjectFromGUID(Bot_Tableau_GUIDs[color])

    local guids_for_removal = {}
    table.insert(guids_for_removal, Setup_Bag_Item_GUIDs[color]['stability'])
    table.insert(guids_for_removal, Setup_Bag_Item_GUIDs[color]['ruler_general'])
    table.insert(guids_for_removal, Figurine_GUIDs[color][2])
    table.insert(guids_for_removal, Figurine_GUIDs[color][3])
    table.insert(guids_for_removal, Figurine_GUIDs[color][4])
    table.insert(guids_for_removal, Army_Tableau_GUIDs[color])
    table.insert(guids_for_removal, Fleet_Tableau_GUIDs[color])

    for _, v in ipairs(guids_for_removal) do
      local token = getObjectFromGUID(v)
      Removed_Components_Bag.putObject(token)
      waitFrames(3)
    end

    -- Add bot deck
    if seat == 2 then
      new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.missions_left)
    else
      new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.missions)
    end
    PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, realmTable.setup_bag_guid, true, 'BotCard', main_tableau)

    -- Add bot rules, die & targeting chart
    ClearZone(Reference_Zone_GUIDs[seat])
    if seat == 2 then
      new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.bot_rules_right)
    else
      new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.bot_rules)
    end
    PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, realmTable.setup_bag_guid , false, 'Rules', main_tableau )
    waitFrames(5)
    new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.targeting_chart)
    PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, realmTable.setup_bag_guid , false, 'Targeting', main_tableau )
    waitFrames(5)
    new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.die)
    spawnObject({
      type              = 'Die_6',
      position          = new_pos,
    })


  elseif player.no_missions then
    -- Get no deck
  else
    -- Fetch mission deck
    if seat == 2 then
      new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.missions_left)
    else
      new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.missions)
    end
    PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, realmTable.setup_bag_guid, true, 'MissionCard', main_tableau)
  end

  -- Name main tableau, army tableau, fleet tableau with realm name; turn tooltip off
  for _,o in ipairs({main_tableau, army_tableau, fleet_tableau}) do
    if type(o) == "userdata" then
      if not o.isDestroyed() then
        o.setName(realmTable.realm_name or "")
        o.tooltip = false -- turn tooltip off for main user boards as they will be hovered all the time
      end
    end
  end

  -- Name score markers and round status with realm namel; turn tooltip on (helps with color blind players)
  for _,o in ipairs({prestige_marker, status_marker}) do
    if type(o) == "userdata" then
      if not o.isDestroyed() then
        o.setName(realmTable.realm_name or "")
        o.tooltip = true -- turn tooltip on for the markers to easily see which one will be picked up
      end
    end
  end

  -- Ruler & inactive bot events
  if not is_bot and realmTable.ruler ~= nil then
    new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.ruler)
    PlaceGuidObjectFromBag( { new_pos[1], new_pos[3] }, realmTable.ruler.deck_guid, realmTable.ruler.flip, realmTable.ruler.card_guid, main_tableau)
    if realmTable.ruler.ill then
      PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, Bag_GUIDs['ill_int'], false, false, main_tableau)
    end
  elseif player.inactive then
    if realmTable.ruler ~= nil then
      if seat == 2 then
        new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.setup_card_left)
      else
        new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.setup_card)
      end
      PlaceGuidObjectFromBag( { new_pos[1], new_pos[3] }, realmTable.ruler.deck_guid, realmTable.ruler.flip, realmTable.ruler.card_guid, main_tableau)
    end
    waitFrames(2)
    if realmTable.events ~= nil then
      if seat == 2 then
        new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.event_cards_left)
      else
        new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.event_cards)
      end
      TakeCardsByCodes(realmTable.events, new_pos, Main_Tableau_Rotations[seat])
    end
  end

  -- Religion
  if is_bot then
    new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.religion)
  else
    new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.religion)
  end
  if realmTable['religion'] ~= RELIGION.none then
    local religion_bag_guid = ''
    local religion_flip = false
    if realmTable['religion'] == RELIGION.catholic then
      religion_bag_guid = Bag_GUIDs['cat_div']
    elseif realmTable['religion'] == RELIGION.diverse then
      religion_bag_guid = Bag_GUIDs['cat_div']
      religion_flip = true
    elseif realmTable['religion'] == RELIGION.orthodox then
      religion_bag_guid = Bag_GUIDs['ort_mus']
    elseif realmTable['religion'] == RELIGION.muslim then
      religion_bag_guid = Bag_GUIDs['ort_mus']
      religion_flip = true
    elseif realmTable['religion'] == RELIGION.counter_reformed then
      religion_bag_guid = Bag_GUIDs['cou_pro']
    elseif realmTable['religion'] == RELIGION.protestant then
      religion_bag_guid = Bag_GUIDs['cou_pro']
      religion_flip = true
    elseif realmTable['religion'] == RELIGION.revolutionary then
      religion_bag_guid = Bag_GUIDs['rev_man']
    end
    PlaceObjectsFromBag({ { new_pos[1], new_pos[3] } }, religion_bag_guid, religion_flip, false, main_tableau)
  end


  -- Monarch Power
  if is_bot then
    local bot_power = realmTable.bot_power
    if extra_mp then
      bot_power = realmTable.bot_power + extra_mp
    end
    AppendTableauPositions(positions, bot_power, main_tableau, Bot_Tableau_Local_Positions, 'bot_power_', false)
  else
    AppendTableauPositions(positions, realmTable['monarch_power'][1], main_tableau, Main_Tableau_Local_Positions, 'mp_a_', false)
    AppendTableauPositions(positions, realmTable['monarch_power'][2], main_tableau, Main_Tableau_Local_Positions, 'mp_d_', false)
    AppendTableauPositions(positions, realmTable['monarch_power'][3], main_tableau, Main_Tableau_Local_Positions, 'mp_m_', false)
    if extra_mp then
      AppendTableauPositions(positions, extra_mp, main_tableau, Main_Tableau_Local_Positions, 'extra_mp_', false)
    end
  end
  PlaceObjectsFromBag( positions, Setup_Bag_Item_GUIDs[color]['cube'], false, false, main_tableau)

  -- Towns & Vassals
  local s_town_list = {}
  local l_town_list = realmTable['l_towns']
  local vassal_target_table = {}
  for _, pos in ipairs(realmTable['s_towns']) do
    table.insert( s_town_list, pos )
  end
  if is_bot then
    local last_pos = {1000, 1000}
    for _, pos in ipairs(realmTable['vassals']) do
      if last_pos[1] == pos[1] and last_pos[2] == pos[2] and #l_town_list < 8 then
        table.remove(s_town_list)
        table.insert( l_town_list, pos )
      else
        table.insert( s_town_list, pos )
      end
      last_pos[1] = pos[1]
      last_pos[2] = pos[2]
    end
  else
    vassal_target_table = CreateTargetData(realmTable['vassals'], Local_Vassal_Positions, main_tableau)
  end
  local l_town_target_table = CreateTargetData(l_town_list, Local_Large_Town_Positions, main_tableau)
  PlaceRotatedObjectsFromBag(l_town_target_table, Setup_Bag_Item_GUIDs[color]['l_town'])
  local s_town_target_table = CreateTargetData(s_town_list, Local_Small_Town_Positions, main_tableau, true)
  PlaceRotatedObjectsFromBag(s_town_target_table, Setup_Bag_Item_GUIDs[color]['s_town'])
  if vassal_target_table ~= {} then
    PlaceRotatedObjectsFromBag(vassal_target_table, Setup_Bag_Item_GUIDs[color]['vassal'])
  end
  if #s_town_list > 19 then
    local token = getObjectFromGUID(Income_Token_GUIDs[seat])
    if token ~= nil then
      local new_pos = main_tableau.positionToWorld(Main_Tableau_Local_Positions.income_token)
      if is_bot then
        new_pos = main_tableau.positionToWorld(Bot_Tableau_Local_Positions.income_token)
      end
      token.setPositionSmooth(new_pos)
    end
  end

  waitFrames(10)

  -- Flip towns & vassals in unrest
  FlipObjectsByPosition(realmTable['unrest'], {'Town', 'Vassal'})

  -- Tokens
  table.insert(Deferred_Placements, { realmTable['allies'], Setup_Bag_Item_GUIDs[color]['alliance'] })
  table.insert(Deferred_Placements, { realmTable['marriages'], Setup_Bag_Item_GUIDs[color]['marriage'] })
  table.insert(Deferred_Placements, { realmTable['truces'], Setup_Bag_Item_GUIDs[color]['war'] })
  for _, v in ipairs(realmTable['truces']) do
    table.insert(Change_Rotation, { v, 'War'})
  end

  PlaceObjectsFromBag( realmTable['influence'], Setup_Bag_Item_GUIDs[color]['cube'], false)
  PlaceObjectsFromBag( realmTable['claims'], Setup_Bag_Item_GUIDs[color]['claim'], false)
  PlaceObjectsFromBag( realmTable['core'], Setup_Bag_Item_GUIDs[color]['claim'], true, 'Core')

  if is_bot then
    PlaceObjectsFromList( {realmTable['merchants'][1]}, Merchant_GUIDs, color, false)
  else
    PlaceObjectsFromList( realmTable['merchants'], Merchant_GUIDs, color, false)
  end
  if is_bot then
    local army = getObjectFromGUID(Figurine_GUIDs[color][1])
    army.setPositionSmooth(main_tableau.positionToWorld(Bot_Tableau_Local_Positions.army)  )
  else
    PlaceObjectsFromList( realmTable['figurines'], Figurine_GUIDs, color, false)
  end


  -- Populate Army Positions
  positions = {}
  local total_manpower = CalculateTotalManpower(realmTable, color, is_bot)
  local deployed_units = CountDeployedUnits(realmTable)
  if TEST_MODE then log('Total Manpower for ' .. color .. ': ' .. total_manpower) end
  if TEST_MODE then log('Deployed Units for ' .. color .. ': ' .. deployed_units) end

  if is_bot then
    AppendTableauPositions(positions, deployed_units, main_tableau, Bot_Tableau_Local_Positions, 'army_', false)
  else
    if realmTable['army1'] ~= 0 then
      AppendTableauPositions(positions, realmTable['army1'][1], army_tableau, Military_Tableau_Local_Positions, 'upper_', false)
      AppendTableauPositions(positions, realmTable['army1'][2], army_tableau, Military_Tableau_Local_Positions, 'middle_', false)
      AppendTableauPositions(positions, realmTable['army1'][3], army_tableau, Military_Tableau_Local_Positions, 'lower_', false)
    end

    if realmTable['army2'] ~= 0 then
      AppendTableauPositions(positions, realmTable['army2'][1], army_tableau, Military_Tableau_Local_Positions, 'upper_', true)
      AppendTableauPositions(positions, realmTable['army2'][2], army_tableau, Military_Tableau_Local_Positions, 'middle_', true)
      AppendTableauPositions(positions, realmTable['army2'][3], army_tableau, Military_Tableau_Local_Positions, 'lower_', true)
    end

    if realmTable['army3'] ~= 0 then
      AppendTableauPositions(positions, realmTable['army3'][1], fleet_tableau, Military_Tableau_Local_Positions, 'upper_', false)
      AppendTableauPositions(positions, realmTable['army3'][2], fleet_tableau, Military_Tableau_Local_Positions, 'middle_', false)
      AppendTableauPositions(positions, realmTable['army3'][3], fleet_tableau, Military_Tableau_Local_Positions, 'lower_', false)
    end
  end

  -- Manpower
  local available_manpower = math.min( (20 - deployed_units), math.max(0, (total_manpower - deployed_units)))
  if is_bot then
    AppendTableauPositions(positions, available_manpower, main_tableau, Bot_Tableau_Local_Positions, 'manpower_', false)
  else
    AppendTableauPositions(positions, available_manpower, main_tableau, Main_Tableau_Local_Positions, 'manpower_', false)
  end

  -- Place Soldiers on Boards
  if TEST_MODE then log('Placing soldiers for ' .. color .. ' player') end
  PlaceObjectsFromBag( positions, Setup_Bag_Item_GUIDs[color]['soldier'], false, false, main_tableau)

  -- Place extra manpower tokens on Board
  if is_bot then
    if player.realm[1] == REALM.netherlands or player.realm[1] == REALM.brandenburg then
      if TEST_MODE then log('Adding extra manpower to ' .. color .. ' bot player') end
      realmTable['extra_manpower'] = realmTable['extra_manpower']  + 1
    end
  end
  if realmTable['extra_manpower']  > 0 then
    if is_bot then
      positions = RepeatPosition(main_tableau.positionToWorld(Bot_Tableau_Local_Positions.manpower_12), realmTable['extra_manpower'])
      PlaceObjectsFromBag( positions, Bag_GUIDs['hre_man'], true, false, main_tableau)
    else
      positions = RepeatPosition(main_tableau.positionToWorld(Main_Tableau_Local_Positions.treasury_4), realmTable['extra_manpower'])
      PlaceObjectsFromBag( positions, Bag_GUIDs['hre_man'], true, false, main_tableau)
    end
  end

  -- Place Fleet Ships on Board
  if TEST_MODE then log('Placing fleet ships on player mats for ' .. color .. ' player') end
  if not is_bot and realmTable['fleet'] ~= 0 then
    if TEST_MODE then log('Building Fleet for ' .. color) end
    positions = {}
    AppendTableauPositions(positions, realmTable['fleet'][1], fleet_tableau, Military_Tableau_Local_Positions, 'upper_', true)
    AppendTableauPositions(positions, realmTable['fleet'][2], fleet_tableau, Military_Tableau_Local_Positions, 'middle_', true)
    AppendTableauPositions(positions, realmTable['fleet'][3], fleet_tableau, Military_Tableau_Local_Positions, 'lower_', true)
    PlaceObjectsFromBag( positions, Setup_Bag_Item_GUIDs[color]['ship'], false, false, main_tableau)
  end

  -- Place units on map
  if TEST_MODE then log('Placing units on map board for ' .. color .. ' player') end
  if is_bot then
    PlaceObjectsFromBag( realmTable['ships_bot'], Setup_Bag_Item_GUIDs[color]['ship'], false)
  else
    PlaceObjectsFromBag( realmTable['ships'], Setup_Bag_Item_GUIDs[color]['ship'], false)
    PlaceObjectsFromBag( realmTable['soldiers'], Setup_Bag_Item_GUIDs[color]['soldier'], false)
  end

  -- Add Coins to Treasury
  if not is_bot then
    local coin = realmTable['coin']
    local v_coin = math.max( 0, math.floor(coin / 5) - 2)
    local i_coin = math.max( 0, (coin - v_coin * 5))
    positions = RepeatPosition(main_tableau.positionToWorld(Main_Tableau_Local_Positions.treasury_1), v_coin)
    PlaceObjectsFromBag( positions, Bag_GUIDs['v_coin'], false, false, main_tableau)
    if i_coin > 5 then
      positions = RepeatPosition(main_tableau.positionToWorld(Main_Tableau_Local_Positions.treasury_2), 5)
      PlaceObjectsFromBag( positions, Bag_GUIDs['i_coin'], false, false, main_tableau)
      positions = RepeatPosition(main_tableau.positionToWorld(Main_Tableau_Local_Positions.treasury_3), (i_coin - 5))
      PlaceObjectsFromBag( positions, Bag_GUIDs['i_coin'], false, false, main_tableau)
    else
      positions = RepeatPosition(main_tableau.positionToWorld(Main_Tableau_Local_Positions.treasury_2), i_coin)
      PlaceObjectsFromBag( positions, Bag_GUIDs['i_coin'], false, false, main_tableau)
    end
  end

  -- Starting Prestige
  if prestige then
    local marker = getObjectFromGUID(Prestige_Marker_GUIDs[player.color])
    marker.setPositionSmooth(PrestigeToPos(prestige))
    waitFrames(5)
    onObjectDrop(nil, marker)
  end

end



--[[
  ------------------------------------------------
  ------------------------------------------------
            Set-Up Helper Functions
  ------------------------------------------------
  ------------------------------------------------
--]]

-- Place Tableaus and Bags
function PlaceTableausAndBags(seat, color)
  if TEST_MODE then log('Placing color ' .. color .. ' at position ' .. seat) end
  local obj = false
  local lock = true
  local pos = Main_Tableau_Positions[seat]
  local height = 1
  local new_pos = {0, 2, 0}
  local rot = Main_Tableau_Rotations[seat]
  local guid = Main_Tableau_GUIDs[color]
  local suffix = '_left'
  if seat == 2 then
    suffix = '_right'
  end
  local bag = getObjectFromGUID(Setup_Bag_GUIDs[color])
  obj = bag.takeObject({
    position          = pos,
    rotation          = rot,
    guid              = guid
  })
  obj.setLock(lock)
  waitFrames(15)

  local army_tableau_offset = Main_Tableau_Offset_Positions['armies_left']
  local fleet_tableau_offset = Main_Tableau_Offset_Positions['mixed_left']
  if seat == 2 then
    army_tableau_offset = Main_Tableau_Offset_Positions['armies_right']
    fleet_tableau_offset = Main_Tableau_Offset_Positions['mixed_right']
  end
  new_pos = GetOffset(pos, army_tableau_offset, seat, height)
  guid = Army_Tableau_GUIDs[color]
  obj = bag.takeObject({
    position          = new_pos,
    rotation          = rot,
    guid              = guid
  })
  obj.setLock(lock)
  waitFrames(5)

  new_pos = GetOffset(pos, fleet_tableau_offset, seat, height)
  guid = Fleet_Tableau_GUIDs[color]
  obj = bag.takeObject({
    position          = new_pos,
    rotation          = rot,
    guid              = guid
  })
  obj.setLock(lock)
  waitFrames(5)

  for name, guid in pairs(Setup_Bag_Item_GUIDs[color]) do
    lock = true
    height = 1.02
    if (name == 'ship') or (name == 'soldier') then
      name = name .. suffix
      height = 0.93
    elseif (name == 'merchant_1') or (name == 'merchant_2') or (name == 'merchant_3') then
      name = name .. suffix
      height = 1.50
      lock = false
    elseif (name == 'army_1') or (name == 'army_2') or (name == 'army_3') or (name == 'fleet') then
      name = name .. suffix
      height = 2.00
      lock = false
    elseif (name == 'ruler_general') or (name == 'stability') then
      lock = false
      height = 1.45
    elseif (name == 'cube') then
      height = 1.4
    end
    if TEST_MODE then log('Placing Bag: ' .. color .. ' --> ' .. name) end
    new_pos = GetOffset(pos, Main_Tableau_Offset_Positions[name], seat, height)
    obj = bag.takeObject({
      position          = new_pos,
      rotation          = rot,
      guid              = guid
    })
    obj.setLock(lock)
    waitFrames(5)
  end

end


-- Get offset by seat
function GetOffset(position, offset2D, seat, height)
  local new_pos = { 0, 2 ,0 }
  if height ~= nil then
    new_pos[2] = height
  end
  if (seat == 1) or (seat == 6) then
    new_pos[1] = position[1] + offset2D[1]
    new_pos[3] = position[3] + offset2D[2]
  elseif (seat == 2) or (seat == 3) then
    new_pos[1] = position[1] + offset2D[2]
    new_pos[3] = position[3] - offset2D[1]
  elseif (seat == 4) or (seat == 5) then
    new_pos[1] = position[1] - offset2D[1]
    new_pos[3] = position[3] - offset2D[2]
  end
  return new_pos
end


--Return Position from 1 to 6 depending on main tableau coordinates
function GetSeatFromPosition(position3d)
  if position3d[1] > 0 then
    if position3d[3] > 0 then
      return 5
    else
      return 6
    end
  elseif position3d[1] > -27 then
    if position3d[3] > 0 then
      return 4
    else
      return 1
    end
  elseif position3d[1] > -38 then
    if position3d[3] > 0 then
      return 3
    else
      return 2
    end
  end
  return false
end


-- Get Realm fields through inheritance if available
function GetRealmData(realm_code, setup_variant)
  local entry = SETUP_DATA[realm_code][setup_variant]
  local parent = SETUP_DATA[realm_code][setup_variant].parent
  if parent ~= nil then
    if parent[1] == realm_code and parent[2] == setup_variant then
      parent = nil
    end
  end

  local realm_data = {}
  for _, field_name in ipairs({
    'setup_bag_guid','religion', 'ruler', 'coin', 'monarch_power', 'bot_power', 'l_towns', 's_towns',
    'vassals', 'unrest', 'allies', 'truces', 'marriages', 'claims', 'core', 'influence', 'merchants',
    'figurines', 'soldiers', 'ships', 'ships_bot', 'army1', 'army2', 'army3', 'fleet', 'extra_manpower', 'events'
  }) do
    local field = entry[field_name]
    if field == nil and parent then
      realm_data[field_name] = GetRealmData(parent[1], parent[2])[field_name]
    else
      realm_data[field_name] = entry[field_name]
    end
  end
  return realm_data
end


-- Create target data by fusing positions and creating rotation information
function CreateTargetData(table_a, table_b, tableau, is_small_towns)
  local counter = #table_b
  local table_o = {}
  local new_rot = tableau.getRotation()
  if is_small_towns and #table_a > 19 then
    counter = 40
  end
  for i = 1, counter, 1 do
    if i > #table_a then
      local new_pos = {0,2,0}
      if is_small_towns and (i > 20 ) then
        new_pos = tableau.positionToWorld({table_b[i-20][1], 1, table_b[i-20][2]})
      else
        new_pos = tableau.positionToWorld({table_b[i][1], 1, table_b[i][2]})
      end
      table.insert(table_o, { ['position'] = { new_pos[1], new_pos[3] }, ['rotation'] = new_rot[2] })
    else
      table.insert(table_o, { ['position'] = table_a[i], ['rotation'] = 180 })
    end
  end
  return table_o
end


-- Remove Hands and scoring markers for unused colors
function ManageHandsAndPrestige(players)
  local used_colors = { red = false, yellow = false, blue = false, green = false, purple = false, white = false}
  for _, p in pairs(players) do
    local player_hand = getObjectFromGUID(Player_Hand_GUIDs[p.color])
    if player_hand == nil then
      log('Could not find player hand object')
    else
      used_colors[p.color] = true
      player_hand.setPosition(Player_Hand_Positions[p.seat])
      player_hand.setRotation(Player_Hand_Rotations[p.seat])
    end
  end
  for col, val in pairs(used_colors) do
    if not val then
      local obj = getObjectFromGUID(Player_Hand_GUIDs[col])
      if obj ~= nil then
        obj.destruct()
      end
      obj = getObjectFromGUID(Prestige_Marker_GUIDs[col])
      if obj ~= nil then
        Removed_Components_Bag.putObject(obj)
      end
      obj = getObjectFromGUID(Round_Status_Marker_GUIDs[col])
      if obj ~= nil then
        Removed_Components_Bag.putObject(obj)
      end
    end
  end
end

-- Prepare Event Card Stacks
function PrepareEventDecks(scenario_data)
  for _, list in ipairs({'age_1_events', 'age_2_events', 'age_3_events', 'age_4_events'}) do
    if scenario_data[list] ~= nil then
      local cards = scenario_data[list]
      if UI_Data.options[9] ~= nil then
        if UI_Data.options[9].selected == 1 then
          cards = RandomizeXEvents(scenario_data[list])
        end
      end
      TakeCardsByCodes(cards)
      waitFrames(15)
    end
  end
end


-- Prepare the Trade Deck
function PrepareTradeDeck(scenario_data)
  local trade_deck = getObjectFromGUID(Trade_Deck_GUIDs.main)
  local future_deck = getObjectFromGUID(Trade_Deck_GUIDs.future)
  if scenario_data.trade_add_all then
    trade_deck.putObject(future_deck)
    return
  end
  if scenario_data.trade_add_tags then
    MoveBetweenDecksByNamesOrTags(future_deck, trade_deck, scenario_data.trade_add_tags, true)
  end
  if scenario_data.trade_add_names then
    MoveBetweenDecksByNamesOrTags(future_deck, trade_deck, scenario_data.trade_add_names, false)
  end
  if scenario_data.trade_remove_names then
    MoveBetweenDecksByNamesOrTags(trade_deck, future_deck, scenario_data.trade_remove_names, false)
  end
end


-- Move cards between decks by name or tag
function MoveBetweenDecksByNamesOrTags(deck_source, deck_destination, names_or_tags, is_tag)
  for _, to_add in ipairs(names_or_tags) do
    local cards = deck_source.getObjects()
    local guids = GetGUIDsByPrefixOrTag(deck_source, to_add, is_tag)

    -- log("Obtained GUIDs:")
    -- log(guids)
    for _, guid in ipairs(guids) do
      local obj = deck_source.takeObject({guid = guid, })
      if obj ~= nil then
        deck_destination.putObject(obj)
        waitFrames(3)
      end
    end

  end
end

-- Place cards from a deck to a single position by GUIDs
function PlaceCardsByGUIDs(deck_guid, guid_list, position, rotation)
  local deck = getObjectFromGUID(deck_guid)
  for _, guid in ipairs(guid_list) do
    deck.takeObject({
      position = position,
      rotation = (rotation or {0, 0, 180}),
      guid = guid,
    })
    waitFrames(3)
  end
end


-- Move cards from a deck by prefix or tag
function PlaceCardsByPrefixOrTag(deck_source, position, rotation, names_or_tags, is_tag)
  for _, to_add in ipairs(names_or_tags) do
    local cards = deck_source.getObjects()
    local guids = GetGUIDsByPrefixOrTag(deck_source, to_add, is_tag)

    for _, guid in ipairs(guids) do
      deck_source.takeObject({
        position = position,
        rotation = rotation,
        guid = guid,
      })
      waitFrames(3)
    end
  end
end

-- Get Card Guids by name prefix or tag
function GetGUIDsByPrefixOrTag(deck, name_or_tag, is_tag)
  local guids = {}
  local cards = deck.getObjects()
  for _, card in ipairs(cards) do
    if is_tag then
      for _, tag in ipairs(card.tags) do
        if tag == name_or_tag then
          table.insert(guids, card.guid)
          break
        end
      end
    else
      local l = string.len(name_or_tag)
      local prefix = string.sub(card.name, 1, l)
      if prefix == name_or_tag then
        table.insert(guids, card.guid)
      end
    end
  end
  return guids
end


-- Prepare Mission Card Decks & Display
function ProcessMissionDecks(scenario_data)
  for realm, realm_data in pairs(scenario_data.player_realms) do
    if not realm_data.bot then
      if realm_data.rem_missions then
        TransferMissionCards(realm_data, Removed_Components_Bag, realm_data.rem_missions)
      end
      waitFrames(5)
      if realm_data.add_missions then
        TransferMissionCards(realm_data, Generic_Mission_Deck, realm_data.add_missions)
      end
      waitFrames(5)
      if realm_data.done_missions then
        DisplayMissionCards(scenario_data, realm)
      end
      waitFrames(5)
      if realm_data.start_missions then
        DisplayMissionCards(scenario_data, realm, true)
      end
    end
  end
end


-- Display cards already completed below deck (take from deck or world if not found there)
function DisplayMissionCards(scenario_data, realm_name, starting)
  if TEST_MODE then log('Displaying mission cards for ' .. (realm_name or 'unknown realm')) end
  local player = scenario_data.player_realms[realm_name]
  local prefix_list = player.done_missions
  if starting then
    prefix_list = player.start_missions
  end
  local zone = getObjectFromGUID(Mission_Deck_Zone_GUIDs[player.seat])
  local objects = zone.getObjects()

  for _, d in ipairs(objects) do
    if d.type == 'Deck' then
      for i, prefix in ipairs(prefix_list) do
        local guid = GetGUIDFromPrefix(d, prefix)
        if guid then
          local position = {0, 1, 0}
          if starting then
            position =  Player_Hand_Positions[player.seat]
          else
            position = d.positionToWorld({0,0, (i * 2.3 + 1)})
          end
          position[2] = 1.00
          local rotation = d.getRotation()
          rotation[2] = (rotation[2] + 270) % 360
          local card = d.takeObject({
            position          = position,
            rotation          = rotation,
            smooth            = true,
            guid              = guid,
            flip              = true,
          })
          waitFrames(2)
          waitFrames(3)
        end
      end
    end
  end
end


-- Prepare Papal Curia Track
function SetupPapalCuria(scenario_data)
  if scenario_data.curia == nil then return end
  local number_placed = 0
  for i = 1, 7, 1 do
    local realm = scenario_data.curia[i]
    if realm == nil then
      --check for position vs placed and add coins
      if number_placed + 2 < i then
        PlaceObjectsFromBag({Papal_Curia_Positions[i]}, Bag_GUIDs['x_coin'], true)
      end
    elseif realm == REALM.none then
      -- skip this position
    elseif realm == 'blocked' then
      PlaceObjectsFromBag({Papal_Curia_Positions[i]}, Bag_GUIDs['x_coin'], true)
    else
      -- try to place a cube
      local col = scenario_data.player_realms[realm].color
      PlaceObjectsFromBag({Papal_Curia_Positions[i]}, Setup_Bag_Item_GUIDs[col]['cube'], false)
      number_placed = number_placed + 1
    end
  end
end


-- Set-up HRE
function SetupHRE(scenario_data)
  local empire = scenario_data.empire
  if empire == nil then return end
  local counter = 1
  if empire.ruler then
    HRE_Config.ruler = scenario_data.player_realms[empire.ruler].color
  else
    HRE_Config.ruler = 'NPR'
  end
  HRE_Config.authority = (empire.authority or 3)
  if HRE_Config.authority ~= 3 then
    local auth = tostring(HRE_Config.authority)
    if TEST_MODE then log('Setting up HRE with ruler ' .. (HRE_Config.ruler or 'unknown') .. 'and authority of ' .. auth) end
    local hre_pos = {HRE_Authority_Positions[auth][1], 2, HRE_Authority_Positions[auth][2]}
    local marker = getObjectFromGUID(HRE_Authority_Marker_GUID)
    marker.setPositionSmooth(hre_pos, false, false)
  end
  counter = 1
  local positions = {}
  for i = 0, 6, 1 do
    if i ~= HRE_Config.authority then
      if empire.influence then
        if empire.influence[counter] then
          table.insert(positions, empire.influence[counter])
          counter = counter + 1
        else
          table.insert(positions, HRE_Authority_Positions[(tostring(i))])
          counter = counter + 1
        end
      else
        table.insert(positions, HRE_Authority_Positions[(tostring(i))])
        counter = counter + 1
      end
    end
  end
  PlaceObjectsFromList(positions, HRE_Influence_Cube_GUIDs, 'gray', false)
end


-- Set-up DNPRs
function PlaceDNPRs(scenario_data)
  local orange_l_towns = {}
  local orange_s_towns = {}
  local green_l_towns = {}
  local green_s_towns = {}
  local pink_l_towns = {}
  local pink_s_towns = {}
  local blue_l_towns = {}
  local blue_s_towns = {}
  if scenario_data.DNPR_Orange_L then
    for i, pos in ipairs(scenario_data.DNPR_Orange_L) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_og'], false, DNPR_Capital_GUIDs.orange_l)
      else
        -- Put other towns in a to-place list
        table.insert(orange_l_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Orange_S then
    for i, pos in ipairs(scenario_data.DNPR_Orange_S) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_og'], false, DNPR_Capital_GUIDs.orange_s)
      else
        -- Put other towns in a to-place list
        table.insert(orange_s_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Green_L then
    for i, pos in ipairs(scenario_data.DNPR_Green_L) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_og'], true, DNPR_Capital_GUIDs.green_l)
      else
        -- Put other towns in a to-place list
        table.insert(green_l_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Green_S then
    for i, pos in ipairs(scenario_data.DNPR_Green_S) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_og'], true, DNPR_Capital_GUIDs.green_s)
      else
        -- Put other towns in a to-place list
        table.insert(green_s_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Pink_L then
    for i, pos in ipairs(scenario_data.DNPR_Pink_L) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_pb'], true, DNPR_Capital_GUIDs.pink_l)
      else
        -- Put other towns in a to-place list
        table.insert(pink_l_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Pink_S then
    for i, pos in ipairs(scenario_data.DNPR_Pink_S) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_pb'], true, DNPR_Capital_GUIDs.pink_s)
      else
        -- Put other towns in a to-place list
        table.insert(pink_s_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Blue_L then
    for i, pos in ipairs(scenario_data.DNPR_Blue_L) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_pb'], false, DNPR_Capital_GUIDs.blue_l)
      else
        -- Put other towns in a to-place list
        table.insert(blue_l_towns, pos)
      end
    end
  end
  if scenario_data.DNPR_Blue_S then
    for i, pos in ipairs(scenario_data.DNPR_Blue_S) do
      if i == 1 then
        PlaceGuidObjectFromBag(pos, Bag_GUIDs['dnpr_pb'], false, DNPR_Capital_GUIDs.blue_s)
      else
        -- Put other towns in a to-place list
        table.insert(blue_s_towns, pos)
      end
    end
  end

  -- Place towns from lists
  PlaceObjectsFromBag(orange_l_towns, Bag_GUIDs['dnpr_og'], false, 'DNPR_One')
  PlaceObjectsFromBag(orange_s_towns, Bag_GUIDs['dnpr_og'], false, 'DNPR_Two')
  PlaceObjectsFromBag(green_l_towns, Bag_GUIDs['dnpr_og'], true, 'DNPR_One')
  PlaceObjectsFromBag(green_s_towns, Bag_GUIDs['dnpr_og'], true, 'DNPR_Two')
  PlaceObjectsFromBag(pink_l_towns, Bag_GUIDs['dnpr_pb'], true, 'DNPR_One')
  PlaceObjectsFromBag(pink_s_towns, Bag_GUIDs['dnpr_pb'], true, 'DNPR_Two')
  PlaceObjectsFromBag(blue_l_towns, Bag_GUIDs['dnpr_pb'], false, 'DNPR_One')
  PlaceObjectsFromBag(blue_s_towns, Bag_GUIDs['dnpr_pb'], false, 'DNPR_Two')
end

-- Deferred placement of alliance, marriages, and truce tokens so they are
-- not underneath towns
function DeferredPlacements()
    if TEST_MODE then log('Starting deferred placements') end
    for _, v in ipairs(Deferred_Placements) do
    PlaceObjectsFromBag( v[1], v[2], false)
    waitFrames(5)
    end
    if TEST_MODE then log('Deferred placements completed') end

    return 1
end

-- Rotate mission decks
function RotateMissionDecks()
    if TEST_MODE then log('Rotating mission decks') end
    local tagged_mission_objects = getObjectsWithTag('MissionCard')
    local missions_decks = {}
    for i, deck in pairs(tagged_mission_objects) do
    if deck.type == 'Deck' then
        local pos = deck.getPosition()
        if pos[1] < 50 then
        table.insert(missions_decks, deck)
        deck.rotate({x=0, y=-90, z=0})
        end
    end
    end
    if TEST_MODE then
    log('Sorting Mission decks\nObjects with matching tag found:')
    waitFrames(1)
    log(missions_decks)
    end
    waitFrames(30)
    for _, deck in pairs(missions_decks) do
    if deck == nil then
        if TEST_MODE then log('Entry in deck list is nil') end
    else
        if deck.type == 'Deck' then
        if TEST_MODE then log('Next deck to be sorted:' .. (deck.guid or 'unknown')) end
        SortDeck(deck)
        end
    end
    end
    if TEST_MODE then log('Mission deck preparation completed') end

    return 1
end

-- Deal 1 action card of each type to each player
function DealActionCards(players)
    -- Deal Action Cards
    local action_deck = {}
    for _, value in ipairs({'admin', 'diplo', 'war'}) do
      action_deck = getObjectFromGUID(Action_Deck_GUIDs[value])
      if action_deck ~= nil then
        for _, p in pairs(players) do
          if not p.bot then
            local cap_color = p.color:gsub("^%l", string.upper)
            -- action_deck.dealToColorWithOffset({-6, 0, 0}, true, cap_color) -- This currently deals the card upside down
            action_deck.deal(1, cap_color)
            waitFrames(3)
          end
        end
      end
    end
  
    return 1
end

function RotateTruceAndRemoveBags()
    if TEST_MODE then log('Changing Rotations for Truce tokens') end
    for _, entry in ipairs(Change_Rotation) do
      SwitchRotationByPosAndTag( entry[1], {0, 90, 180} ,entry[2] )
      waitFrames(2)
    end
  
    -- Remove Large Town and Vassal Bags
    local objects_to_remove = getObjectsWithTag('RemoveAfterSetup')
    for _, o in ipairs(objects_to_remove) do
      Removed_Components_Bag.putObject(o)
      waitFrames(3)
    end
  
    return 1
end

-- Set-up Bot Decks
function SetupBotDecks()
  waitFrames(15)
  if TEST_MODE then log('Handling bot decks') end
  local bot_decks = getObjectsWithTag('BotCard')
  for _, deck in pairs(bot_decks) do
    local pos_current = deck.getPosition()
    if deck.type == 'Deck' and pos_current[1] < 45 then
      local distance = 3.0
      local pos_target = deck.getTransformForward()
      local pos = {
        x = pos_current.x + pos_target.x * distance,
        y = pos_current.y + pos_target.y * distance,
        z = pos_current.z + pos_target.z * distance,
      }
      local rot = deck.getRotation()
      local bot_decks = deck.split(4) -- Split 1 --> Age 2, Split 2 --> Age 3, Split 3 --> Age 4, Split 4 --> Age 1
      waitFrames(20)
      bot_decks[1].shuffle()
      bot_decks[2].shuffle()
      bot_decks[3].shuffle()
      bot_decks[4].shuffle()
      waitFrames(15)

      local current_age_deck = bot_decks[4]
      if UI_Data.start_age > 1 then
        Removed_Components_Bag.putObject(bot_decks[4])
        current_age_deck = bot_decks[1]
        waitFrames(1)
      end
      if UI_Data.start_age > 2 then
        Removed_Components_Bag.putObject(bot_decks[1])
        current_age_deck = bot_decks[2]
        waitFrames(1)
      end
      if UI_Data.start_age > 3 then
        Removed_Components_Bag.putObject(bot_decks[2])
        current_age_deck = bot_decks[3]
        waitFrames(1)
      end
      current_age_deck.setPositionSmooth(pos)
      current_age_deck.setRotationSmooth(rot)

      if UI_Data.start_age == 1 then
        bot_decks[2].setPositionSmooth({pos_current[1], 5 ,pos_current[3]})
        bot_decks[1].setPositionSmooth({pos_current[1], 10 ,pos_current[3]})
        waitFrames(1)
      elseif UI_Data.start_age == 2 then
        bot_decks[2].setPosition({pos_current[1], 5 ,pos_current[3]})
      elseif UI_Data.start_age == 3 then
        bot_decks[3].rotate({0,-90,0})
      end
    end
    waitFrames(10)
  end
  if TEST_MODE then log('Bot deck processing completed') end
  return 1
end

-- Prepare PowerStruggleDeck
function PreparePowerStruggles(scenario_data)
  local ps_deck = getObjectFromGUID(Power_Struggle_Deck_GUID)
  if ps_deck ~= nil then
    if scenario_data.powerstruggles then
      for i, _ in ipairs(scenario_data.powerstruggles) do
        PlaceGuidObjectFromBag(Power_Struggle_Upcoming, Power_Struggle_Deck_GUID, true, scenario_data.powerstruggles[i], ps_deck)
        waitFrames(5)
      end
    end
    Removed_Components_Bag.putObject(ps_deck)
    waitFrames(5)
  end
end

-- Remove Objects in listed positions with a certain tag
function RemoveByPosAndTags(positions, tags)
  if TEST_MODE then
    log('Removing objects called:')
    log(positions, 'Positions: ')
    log(tags, 'Tags: ')
  end
  local objects = GetObjectsByPosAndTags(positions, tags)
  for _, obj in ipairs(objects) do
    if obj.memo then
      local bag = getObjectFromGUID(obj.memo)
      if bag ~= nil then
        bag.putObject(obj)
        waitFrames(2)
      end
    else
      Removed_Components_Bag.putObject(obj)
      waitFrames(2)
    end
  end
end


-- Switch state on objects in a position with a certain tag
function SwitchRotationByPosAndTag(position, rotation, tag)
  if TEST_MODE then log('Switch Rotation called:') end
  local objects = GetObjectsByPosAndTags({position}, {tag})
  for _, obj in ipairs(objects) do
    obj.setRotationSmooth(rotation)
  end
end


-- Flip objects with a tag in a position
function FlipObjectsByPosition(positions, tags)
  if TEST_MODE then log('Flip Objects called:') end
  local objects = GetObjectsByPosAndTags(positions, tags)

  for _, obj in ipairs(objects) do
    obj.flip()
    waitFrames(2)
  end
end


-- Return table of objects matching a tag and located in listed positions
function GetObjectsByPosAndTags(positions, tags)
  if positions == nil then return {} end
  if #positions == 0  then return {} end

  -- wait for moving objects to settle
  if Last_Moving_Map_Marker ~= nil then
    local waitcounter = 0
    while Last_Moving_Map_Marker.isSmoothMoving() do
      waitcounter = waitcounter + 1
      waitFrames(1)
    end
    if waitcounter > 0 then
      if TEST_MODE then
        log('Waited for ' .. waitcounter .. ' frames for moving objects to arrive.')
      end
    end
  end

  local objects_found = {}
  for _, position in ipairs(positions) do
    local zone = spawnObject({
      type              = 'ScriptingTrigger',
      position          = {position[1], 1.4, position[2]},
      scale             = { 0.3, 1.5, 0.3 }
    })
    for _, new_tag in ipairs(tags) do
      zone.addTag(new_tag)
    end
    waitFrames(2)
    local objects = zone.getObjects()
    for _, obj in ipairs(objects) do
      table.insert(objects_found, obj)
    end
    zone.destruct()
  end
  if TEST_MODE then log('Objects found: ' .. #objects_found) end
  if TEST_MODE then log(objects_found) end
  return objects_found
end


-- Prepare the display of idea cards and mark those already researched
function PrepareIdeaDisplay(scenario_data)
  local admin_deck = getObjectFromGUID(Idea_Deck_GUIDs.admin)
  local diplo_deck = getObjectFromGUID(Idea_Deck_GUIDs.diplo)
  local war_deck = getObjectFromGUID(Idea_Deck_GUIDs.war)
  local future_deck = getObjectFromGUID(Idea_Deck_GUIDs.future)
  local bot_ideas = {}

  for name, realm in pairs(scenario_data.player_realms) do
    if realm.bot then
      bot_ideas[name] = { admin = 0, diplo = 0, war = 0 }
    end
  end

  -- Add Age 3 & 4 cards to the idea pool
  if UI_Data.start_age ~= nil then
    if UI_Data.start_age > 2 then
      admin_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.admin.absolute_monarchy }))
      admin_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.admin.national_bank }))
      diplo_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.diplo.trade_companies }))
      diplo_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.diplo.constitutional_monarchy }))
      war_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.war.line_infantry }))
    end
    waitFrames(5)
  if UI_Data.start_age > 3 then
      admin_deck.putObject(future_deck.takeObject({guid = Idea_Card_GUIDs.admin.industrial_revolution }))
      waitFrames(2)
      war_deck.putObject(future_deck)
    end
    waitFrames(2)
    admin_deck.shuffle()
    diplo_deck.shuffle()
    war_deck.shuffle()
    waitFrames(15)
  end

  -- Tag completed ideas
  for _,col in ipairs({'admin', 'diplo', 'war'}) do
    local deck = getObjectFromGUID(Idea_Deck_GUIDs[col])
    if deck ~= nil then
    local rows = #Idea_Config[col]
      local offset = 5 - rows
    for i, idea in ipairs(Idea_Config[col]) do
        local idea_pos = Idea_Card_Positions[col][(i + offset)]
        if idea == '' then
          deck.takeObject({
            position          = idea_pos,
            smooth            = true,
            flip              = true,
          })
        else
          deck.takeObject({
            position          = idea_pos,
            smooth            = true,
            flip              = true,
            guid              = (idea[1]),
          })
          if idea[2] ~= {} then
            waitFrames(5)
            local positions2d = {}
            local bag_guids = {}
            for j, realm in ipairs(idea[2]) do
              table.insert(positions2d, {
                (idea_pos[1] + 0.80 - ( ( (j-1) % 3 ) * 0.45) ),
                (idea_pos[3] - 0.50 + ( math.floor( (j-1) / 3 ) * 0.45) )
              })
              local color = scenario_data.player_realms[realm].color
              if bot_ideas[realm] then
                bot_ideas[realm][col] = bot_ideas[realm][col] + 1
              end
              table.insert(bag_guids, (Setup_Bag_Item_GUIDs[color]['tag_chit']))
            end
            PlaceObjectsFromMultiBags(positions2d, bag_guids)
          end
        end
        waitFrames(5)
      end
    end
  end

  -- Add markers for bot ideas
  for name, value in pairs(bot_ideas) do
    local color =  scenario_data.player_realms[name].color
    local main_tableau = getObjectFromGUID(Bot_Tableau_GUIDs[color])
    if main_tableau ~= nil then
      local pos = main_tableau.getPosition()
      for _, col in ipairs({'admin', 'diplo', 'war'}) do
        if value[col] > 0 then
          local pos_name = 'bot_ideas_' .. col .. '_'
          if value[col] == 1 then
            pos_name = pos_name .. '1'
          elseif value[col] == 2 then
            pos_name = pos_name .. '2'
          elseif value[col] > 2 then
            pos_name = pos_name .. '3'
          end
          local new_pos = GetOffset(pos, Main_Tableau_Offset_Positions[pos_name], scenario_data.player_realms[name].seat )
          local new_rot = main_tableau.getRotation()
          local bag = getObjectFromGUID(Setup_Bag_Item_GUIDs[color]['tag_chit'])
          if bag == nil then
            log('Could not find bag for chit')
            log('Color: ' .. (color or 'unknown'))
          else
            bag.takeObject({
              position          = new_pos,
              rotation          = new_rot,
              smooth            = true,
              flip              = false,
            })
            waitFrames(2)
          end
        end
      end
    end
  end
end


-- Prepare Milestone Cards
function PrepareMilestones(scenario_data)
  local milestone_pos = Milestone_Deck_Positions.future
  local age = (scenario_data.age or 1)
  local last_age = (scenario_data.last_age or 4)
  last_age = math.max(age, last_age)
  local current_age = 'age1'
  local future_ages = { 'age4', 'age3', 'age2', }
  local remove_ages = { }
  if TEST_MODE then log('Preparing Milestones for Age ' .. age) end
  if age > 1 then
    for _, guid in pairs(Milestone_Deck_GUIDs.age1) do
      local deck = getObjectFromGUID(guid)
      if deck ~= nil then
        Removed_Components_Bag.putObject(deck)
        waitFrames(5)
      end
    end
    future_ages = { 'age4', 'age3' }
    current_age = 'age2'
  end

  if age > 2 or last_age < 2 then
    for _, guid in pairs(Milestone_Deck_GUIDs.age2) do
      local deck = getObjectFromGUID(guid)
      if deck ~= nil then
        Removed_Components_Bag.putObject(deck)
        waitFrames(5)
      end
    end
    if age > 2 then
      future_ages = { 'age4' }
      current_age = 'age3'
    end
  end

  if age > 3 or last_age < 3 then
    for _, guid in pairs(Milestone_Deck_GUIDs.age3) do
      local deck = getObjectFromGUID(guid)
      if deck ~= nil then
        Removed_Components_Bag.putObject(deck)
        waitFrames(5)
      end
    end
    if age > 3 then
      future_ages = { }
      current_age = 'age4'
    end
  end

  if last_age < 4 then
    for _, guid in pairs(Milestone_Deck_GUIDs.age4) do
      local deck = getObjectFromGUID(guid)
      if deck ~= nil then
        Removed_Components_Bag.putObject(deck)
        waitFrames(5)
      end
    end
  end

  for i, deck_type in ipairs({'eco', 'exp', 'pol', 'war'}) do
    local deck = getObjectFromGUID(Milestone_Deck_GUIDs[current_age][deck_type])
    if deck ~= nil then
      milestone_pos = Milestone_Deck_Positions.top[i]
      deck.setPosition(milestone_pos)
      waitFrames(5)
    end
  end
  waitFrames(15)

  milestone_pos = Milestone_Deck_Positions.future
  for _, a in ipairs(future_ages) do
    for _, deck_type in ipairs({'war', 'pol', 'exp', 'eco'}) do
      local deck = getObjectFromGUID(Milestone_Deck_GUIDs[a][deck_type])
      if deck ~= nil then
        deck.setPosition(milestone_pos)
        milestone_pos[2] = milestone_pos[2] + 0.4
        waitFrames(5)
      end
    end
  end
  waitFrames(30)

  milestone_pos[2] = 2
  for i, d in ipairs({'eco', 'exp', 'pol', 'war'}) do
    local deck = getObjectFromGUID(Milestone_Deck_GUIDs[current_age][d])
    local guid = ''
    milestone_pos = Milestone_Deck_Positions.bot[i]

    if deck ~= nil then
      if scenario_data.milestones then
        if scenario_data.milestones[d] then
          guid = scenario_data.milestones[d]
        else
          guid = ''
        end
      end

      if guid == '' then
        deck.takeObject({
          position          = milestone_pos,
          smooth            = true,
          flip              = true
        })
        waitFrames(5)
      else
        deck.takeObject({
          position          = milestone_pos,
          smooth            = true,
          flip              = true,
          guid              = guid
        })
        waitFrames(5)
      end
    end
  end
  waitFrames(25)
end


-- Remove any matching objects from a zone
function ClearZone(zone_guid, tag, bag)
  if not bag then
    bag = Removed_Components_Bag
  end
  local zone = getObjectFromGUID(zone_guid)
  if zone ~= nil then
    local objects = zone.getObjects()
    for _, o in ipairs(objects) do
      if not tag then
        bag.putObject(o)
        waitFrames(3)
      else
        if o.hasTag(tag) then
          bag.putObject(o)
          waitFrames(3)
        end
      end
    end
  end
end

-- Place Scenario Book
function PlaceScenarioBook(book_guid, page_number)
  local scenario_book = getObjectFromGUID(book_guid)
  if scenario_book ~= nil then
    scenario_book.Book.setPage(page_number)
    waitFrames(3)
    scenario_book.setPositionSmooth(Scenario_Book_Position)
    return true
  else
    return false
  end
end


-- Destruct Objects by guid
function DestructByGUID(guid_table)
  for _, guid in pairs(guid_table) do
    local obj = getObjectFromGUID(guid)
    if obj ~= nil then
      obj.destruct()
    end
  end
end


function AppendTableauPositions(positions, number, tableau_object, tableau_positions, prefix, right_side)
  if number ~= nil and number >= 1 then
    for i = 1, number, 1 do
      local local_position = {tableau_positions[(prefix .. i)][1], 2.0, tableau_positions[(prefix .. i)][3]}
      if right_side then
        local_position[1] = local_position[1] - 0.85
      end
      local pos = tableau_object.positionToWorld(local_position)
      table.insert(positions, {pos[1], pos[3]} )
    end
  end
end


function RepeatPosition(pos, iterations)
  if iterations == 0 then
    return {}
  end
  local positions = {}
  for i = 1, iterations, 1 do
    table.insert(positions, {pos[1], pos[3]} )
  end
  return positions
end


function TakeCardsByCodes(codes, position_override, rotation_override)
  local params = {}
  params.position = Event_Card_Positions[8]
  params.guid = ''
  params.rotation = {0.00, 270.00, 180.00}
  if rotation_override then
    params.rotation = rotation_override
  end

  for _,i in ipairs(codes) do
    local deck = ''
    local age = string.sub(i[1], 1, 1)
    local in_a = string.find(i[1], "a")
    local in_b = string.find(i[1], "b")
    if age == '1' then
      if in_a then
        deck = EventDecks['age1a']
        params.guid = Event_1a_GUIDs[i[1]]
      elseif in_b then
        deck = EventDecks['age1b']
        params.guid = Event_1b_GUIDs[i[1]]
      else
        deck = EventDecks['age1r']
        params.guid = Event_1r_GUIDs[i[1]]
      end
    elseif age == '2' then
      if in_a then
        deck = EventDecks['age2a']
        params.guid = Event_2a_GUIDs[i[1]]
      elseif in_b then
        deck = EventDecks['age2b']
        params.guid = Event_2b_GUIDs[i[1]]
      else
        deck = EventDecks['age2r']
        params.guid = Event_2r_GUIDs[i[1]]
      end
    elseif age == '3' then
      if in_a then
        deck = EventDecks['age3a']
        params.guid = Event_3a_GUIDs[i[1]]
      elseif in_b then
        deck = EventDecks['age3b']
        params.guid = Event_3b_GUIDs[i[1]]
      else
        deck = EventDecks['age3r']
        params.guid = Event_3r_GUIDs[i[1]]
      end
    elseif age == '4' then
      if in_a then
        deck = EventDecks['age4a']
        params.guid = Event_4a_GUIDs[i[1]]
      elseif in_b then
        deck = EventDecks['age4b']
        params.guid = Event_4b_GUIDs[i[1]]
      else
        deck = EventDecks['age4r']
        params.guid = Event_4r_GUIDs[i[1]]
      end
    end

    params.position = Event_Card_Positions[i[2]]
    if position_override then
      params.position = position_override
    end
    if params.guid == nil then
      log('Card GUID not found for: ' .. (i[1] or 'unknown'))
    else
      if deck == nil then
        local card = getObjectFromGUID(params.guid)
        if card == nil then
          log('Deck is empty and can not find card: ' .. (i or ''))
        else
          card.setPositionSmooth(params.position)
          card.setRotationSmooth(params.rotation)
        end
      else
        deck.takeObject(params)
      end
      waitFrames(3)
    end
  end
end


function PlaceObjectsFromList(positions2d, guids, color, flip)
  for i,pos in ipairs(positions2d) do
    if pos ~= 'none' then
      local obj = getObjectFromGUID(guids[color][i])
      if obj ~= nil then
        local newPos = { pos[1], 2.0, pos[2]}
        obj.setPositionSmooth(newPos, false, false)
        if flip then
          obj.setRotationSmooth({0.00, 180.00, 180.00}, false, false)
        else
          obj.setRotationSmooth({0.00, 180.00, 0.00}, false, false)
        end
        waitFrames(3)
      end
    end
  end
end


function PlaceGuidObjectFromBag(position2d, bag_guid, flip, guid, rotation_reference)
  if TEST_MODE then log('PlaceGuidObjectFromBag called with GUID:') end
  if TEST_MODE then log(guid) end
  local newRot = {0.00, 180.00, 0.00}
  if flip then
    newRot = {0.00, 180.00, 180.00}
  end
  if rotation_reference ~= nil then
    local rot = rotation_reference.getRotation()
    newRot[2] = rot[2]
  end
  local obj = getObjectFromGUID(bag_guid)
  if obj ~= nil then
    local newPos = { position2d[1], 2.0, position2d[2]}
    obj.takeObject({
      position          = newPos,
      rotation          = newRot,
      smooth            = true,
      guid              = guid
    })
    waitFrames(3)
  end
end


function PlaceObjectsFromBag(positions2d, bag_guid, flip, tag, rotation_reference)
  if positions2d == nil then
    log('Position table is nil')
    log('Bag GUID:')
    log(bag_guid)
    log('Tag:')
    log(tag)
    return
  elseif type(positions2d) ~= 'table' then
    log('Positions are no table')
    log( type(positions2d) )
    log(positions2d)
    log('Bag GUID:')
    log(bag_guid)
    log('Tag:')
    log(tag)
    return
  elseif positions2d == {} then
    return
  end

  local newRot = {0.00, 180.00, 0.00}
    if flip then
    newRot[3] = 180.00
  end
  if rotation_reference ~= nil then
    local rot = rotation_reference.getRotation()
    newRot[2] = rot[2]
  end

  for _,pos in ipairs(positions2d) do
    local obj = getObjectFromGUID(bag_guid)
    if obj ~= nil then
      local newPos = { pos[1], 2.0, pos[2]}
      local guid = false
      if tag ~= nil and tag ~= false and tag ~= '' then
        -- log('Looking for tag: ' .. tag )
        guid = GetGUIDFromTag(obj, tag)
      end
      if guid then
        obj.takeObject({
          position          = newPos,
          rotation          = newRot,
          smooth            = true,
          guid              = guid
        })
      else
        obj.takeObject({
          position          = newPos,
          rotation          = newRot,
          smooth            = true
        })
      end

      waitFrames(3)
    end
  end
end

function PlaceRotatedObjectsFromBag(target_data, bag_guid)
  local obj = getObjectFromGUID(bag_guid)
  if obj ~= nil then
    for _,target in ipairs(target_data) do
      local newPos = { target.position[1], 2.0, target.position[2]}
      local newRot = {0.00, target.rotation , 0.00}
      Last_Moving_Map_Marker = obj.takeObject({
          position          = newPos,
          rotation          = newRot,
          smooth            = true
        })
      waitFrames(3)
    end
  end
end


function GetGUIDFromTag(container, tag)
  for _, v in ipairs(container.getObjects()) do
    for _, t in ipairs(v.tags) do
      if tag == t then
        return v.guid
      end
    end
  end
  return false
end


function TransferMissionCards(player, deck, prefix_list)
  if TEST_MODE then log('Moving mission cards for: ' .. player.color) end
  local zone = getObjectFromGUID(Mission_Deck_Zone_GUIDs[player.seat])
  local objects = zone.getObjects()
  for _, d in ipairs(objects) do
    if d.type == 'Deck' then
      for _, prefix in ipairs(prefix_list) do
        if deck == Removed_Components_Bag then
          local guid = GetGUIDFromPrefix(d, prefix)
          if guid then
            Removed_Components_Bag.putObject(d.takeObject({
              position          = {0,0,0},
              guid              = guid
            }))
          else
            log('Could not find card with prefix: ' .. prefix)
          end
        else
          local guid = GetGUIDFromPrefix(deck, prefix)
          if guid then
            d.putObject(deck.takeObject({
              position          = {0,0,0},
              guid              = guid
            }))
          else
            log('Could not find card with prefix: ' .. prefix)
          end
        end
      end
      break
    end
  end
end


function PlaceCardByPrefix(position2d, deck_guid, prefix, rotation_reference, flip, rotation_offset)
  local newRot = {0.00, 180.00, 0.00}
    if flip then
    newRot[3] = 180.00
  end
  if rotation_reference ~= nil then
    local rot = rotation_reference.getRotation()
    newRot[2] = rot[2]
    if rotation_offset ~= nil then
      newRot[2] = (newRot[2] + rotation_offset) % 360
    end
  end

  local obj = getObjectFromGUID(deck_guid)
  if obj ~= nil then
    local newPos = { position2d[1], 2.0, position2d[2]}
    local guid = false
    if prefix ~= nil and prefix ~= false and prefix ~= '' then
      -- log('Looking for prefix: ' .. prefix )
      guid = GetGUIDFromPrefix(obj, prefix)
    end
    if guid then
      obj.takeObject({
        position          = newPos,
        rotation          = newRot,
        smooth            = true,
        guid              = guid
      })
    else
      log('Could not find card with prefix: ' .. prefix)
    end

    waitFrames(3)
  end
end


function GetGUIDFromPrefix(deck, prefix)
  local length = string.len(prefix)
  for _, v in ipairs(deck.getObjects()) do
    local name_start = string.sub(v.name, 1, length)
    if name_start == prefix then
      return v.guid
    end
  end
  return false
end


function PlaceObjectsFromMultiBags(positions2d, bag_guids, flip)
  local newRot = {0.00, 180.00, 0.00}
  if flip then
    newRot = {0.00, 180.00, 180.00}
  end
  for i,pos in ipairs(positions2d) do
    local obj = getObjectFromGUID(bag_guids[i])
    if obj ~= nil then
      local newPos = { pos[1], 2.0, pos[2]}
      obj.takeObject({
        position          = newPos,
        rotation          = newRot,
        smooth            = true,
      })
      waitFrames(3)
    end
  end
end


function CalculateTotalManpower(realmTable, color, is_bot)
  local total_manpower = realmTable['extra_manpower']
  local l_towns = #realmTable['l_towns']
  local s_towns = #realmTable['s_towns']
  local vassals = #realmTable['vassals']

  if color == HRE_Config.ruler then
    total_manpower = total_manpower + HRE_Config.authority
  end

  total_manpower = total_manpower + l_towns
  if is_bot then
    s_towns = s_towns + vassals
  else
    total_manpower = total_manpower + math.floor((vassals + 1) / 2)
  end
  total_manpower = total_manpower + math.ceil((s_towns) / 2)

  if is_bot and (total_manpower) < 3 then
    total_manpower = 3
  end

  return total_manpower
end


function CountDeployedUnits(realmTable)
  local deployed_units = #realmTable['soldiers']
  if realmTable['army1'] ~= 0 then
    deployed_units = deployed_units + realmTable['army1'][1]
    deployed_units = deployed_units + realmTable['army1'][2]
    deployed_units = deployed_units + realmTable['army1'][3]
  end
  if realmTable['army2'] ~= 0 then
    deployed_units = deployed_units + realmTable['army2'][1]
    deployed_units = deployed_units + realmTable['army2'][2]
    deployed_units = deployed_units + realmTable['army2'][3]
  end
  if realmTable['army3'] ~= 0 then
    deployed_units = deployed_units + realmTable['army3'][1]
    deployed_units = deployed_units + realmTable['army3'][2]
    deployed_units = deployed_units + realmTable['army3'][3]
  end
  return deployed_units
end


--[[ --------------------------
        Card Tucking Scripts
     -------------------------- ]]
function onObjectEnterZone(zone, object)
  if zone.hasTag('Tuck_Zone') then
    if object.held_by_color == nil then
      return
    end
    local rotation = zone.getRotation()[2]
    local offset = zone.positionToLocal(object.getPosition())[1]
    local slot = 0
    if zone.hasTag('MainTableau') then
      if offset < 0.6 and offset > 0.25 then
        slot = 1
        TuckCard(object, zone, {0.36, 0.25, -1.08 })
      elseif offset <= 0.25  and offset > 0.05 then
        slot = 2
        TuckCard(object, zone, {0.07, 0.25, -1.08 })
      elseif offset < -0.05 and offset >= -0.25 then
        slot = 3
        TuckCard(object, zone, {-0.17, 0.25, -1.08 })
      elseif offset < -0.25 and offset > -0.6 then
        slot = 4
        TuckCard(object, zone, {-0.405, 0.25, -1.08 })
      end
    elseif zone.hasTag('MilitaryTableau') then
      if offset <= 0.4  and offset > 0.05 then
        slot = 1
        TuckCard(object, zone, {0.245, 0.25, -1.08 })
      elseif offset < -0.05 and offset >= -0.4 then
        slot = 2
        TuckCard(object, zone, {-0.25, 0.25, -1.08 })
      end
    end
  end -- if zone.hasTag()
end


function TuckCard(object, zone, offset)
  object.clearContextMenu()
  object.addContextMenuItem("Detach Card", DetachCard)
  object.setLock(true)
  local newPos = zone.positionToWorld(offset)
  local objRot = object.getRotation()[3]
  local newRot = zone.getRotation()
  if object.hasTag('StartingLeader') and objRot > 90 and objRot < 270 then
    newRot[3] = 180
    object.setRotationSmooth(newRot)
  else
    object.setRotationSmooth(newRot)
  end
  object.setPositionSmooth(newPos)
  object.addTag('Tucked')
end


function DetachCard(player_color, position, object)
  local newpos = object.positionToWorld({0, 0.25, 2.8})
  object.setPositionSmooth(newpos)
  object.clearContextMenu()
  object.setLock(false)
  object.removeTag('Tucked')
end

function UpdateTuckZonePositions()
  if TEST_MODE then log('Updating position of tuck zones') end

  -- find and delete all existing tuck zones
  local tuck_zones = getObjectsWithTag('Tuck_Zone')
  if tuck_zones ~= nil then
    for _,i in pairs(tuck_zones) do
      i.destruct()
    end
  end

  -- get all main tableaus on the table
  local main_tableaus = getObjectsWithTag('MainTableau')
  if main_tableaus ~= nil then
    for _,i in pairs(main_tableaus) do
      -- TODO check state if bot
      local state_id = i.getStateId()
      if state_id == 1 then
        SpawnTuckZone(i, 'MainTableau')
      end
    end
  end

  -- get all army & fleet tableaus on the table
  local military_tableaus = getObjectsWithTag('MilitaryTableau')
  if military_tableaus ~= nil then
    for _,i in pairs(military_tableaus) do
      SpawnTuckZone(i, 'MilitaryTableau')
    end
  end
end


function SpawnTuckZone(tableau, tableau_type)
  local new_pos = tableau.getPosition()
  local new_rot = tableau.getRotation()
  local new_scale = { 1, 2, 1 }

  if tableau_type == 'MainTableau' then
    new_pos = tableau.positionToWorld(Main_Tableau_Local_Positions.tuck_zone)
    new_scale = {9.00, 1.00, 1.00}
  elseif tableau_type ==  'MilitaryTableau' then
    new_pos = tableau.positionToWorld(Military_Tableau_Local_Positions.tuck_zone)
    new_scale = {4.30, 1.00, 1.00}
  else
    log('Tableau type unknown in function SpawnTuckZone')
    return
  end
  new_pos[2] = 0.75

  local zone = spawnObject({
    type              = 'ScriptingTrigger',
    position          = new_pos,
    rotation          = new_rot,
    scale             = new_scale,
  })
  zone.addTag('Tuck_Zone')
  zone.addTag('Tuckable')
  zone.addTag(tableau_type)
end


--[[ -----------------------------
         Generic Helper Scripts
      ---------------------------- ]]


-- Wait a certain number of frames inside a coroutine
function waitFrames(frames)
  while frames > 0 do
    coroutine.yield(0)
    frames = frames - 1
  end
end

-- Set Test Mode
function SetLogging(enabled)
  TEST_MODE = enabled
end

-- Add origin in memo of objects leaving certain containers
function onObjectLeaveContainer(container, object)
  -- log("Object " .. object.guid .. " left container type: " .. container.type .. ' Name: ' .. container.name .. ' --> ' .. (container.getName() or '')  )
  if container.type == 'Infinite' then
    object.memo = 'infinite'
  elseif container.type == 'Bag' then
    local name = container.getName() or ''
    object.memo = container.guid
  end
end

-- Check trash bins for items from other containers

-- BW -- this code all facilitates being able to delete objects safely

function onObjectSpawn(o)
	if o.type == "Card" then o.use_hands = true end -- BW safety-net for BW_NOTE_A below
    o.sticky = false -- BW all objects are no longer sticky - should be easier to manipulate stacking objects now
end

function getRotationValueIndexTable(o)
	local rotationValue = o.getRotationValue()
	if not rotationValue then return end
	local rotationValues = o.getRotationValues() or {}
	for i,t in ipairs(rotationValues) do
		if t.value == rotationValue then
			return i, rotationValues
		end
	end
	return nil, {}
end

function changeRotationValue(o, n)
	if o == nil then return end
	if type(o) ~= "userdata" then return end
	if o.isDestroyed() then return end
	local rotationValueIndex, rotationValues = getRotationValueIndexTable(o)
	if #rotationValues == 0 then return end
	rotationValueIndex = rotationValueIndex + n
	while rotationValueIndex > #rotationValues do
		rotationValueIndex = rotationValueIndex - #rotationValues
	end
	while rotationValueIndex < 1 do
		rotationValueIndex = rotationValueIndex + #rotationValues
	end
	local newRotationValue = rotationValues[rotationValueIndex]
	o.setRotation(newRotationValue.rotation)
	return newRotationValue.value
end

local tagToBehaviour = {
    RoundStatus = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Round Status marker (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Round Status marker (sit in Black to do so)",
            [Player.Action.Delete] = "You cannot delete a Round Status marker (sit in Black or drop into a bin to do so)",
        }
    },
    LargeCard = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Large Card (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Large Card (sit in Black to do so)",
        }
    },
    SmallCard = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Small Card (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Small Card (sit in Black to do so)",
            [Player.Action.Delete] = "You cannot delete a Small Card (sit in Black or drop into a bin to do so)",
        }
    },
    Religion = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Religion token (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Religion token (sit in Black to do so)",
        }
    },
    Figurine = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Figurine (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Figurine (sit in Black to do so)",
        }
    },
    SmallTown = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Small Town (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Small Town (sit in Black to do so)",
        }
    },
    LargeTown = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Large Town (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Large Town (sit in Black to do so)",
        }
    },
    Claim = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Claim token (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Claim token (sit in Black to do so)",
        }
    },
    Cube = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy an Influence Cube (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste an Influence Cube (sit in Black to do so)",
        }
    },
    Imperial_Influence = {
      forbidPlayerActions = {
          [Player.Action.Copy] = "You cannot copy an Imperial Influence Cube (sit in Black to do so)",
          [Player.Action.Paste] = "You cannot paste an Imperial Influence Cube (sit in Black to do so)",
          [Player.Action.Delete] = "You cannot delete an Imperial Influence Cube (sit in Black to do so)",
      }
  },
    NavalUnit = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Naval Unit (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Naval Unit (sit in Black to do so)",
        },
		[Player.Action.FlipOver] = function(o)
			Wait.frames(function()
				if changeRotationValue(o, -1) == "#side" then
					o.setPosition(o.getPosition() + Vector(0,0,-0.1))
				else
					o.setPosition(o.getPosition() + Vector(0,0,0.1))
				end
			end,1)
		end,
		[Player.Action.RotateIncrementalLeft] = function(o)
			Wait.frames(function()
				if changeRotationValue(o, -1) == "#side" then
					o.setPosition(o.getPosition() + Vector(0,0,-0.1))
				else
					o.setPosition(o.getPosition() + Vector(0,0,0.1))
				end
			end,1)
		end,
		[Player.Action.RotateIncrementalRight] = function(o)
			Wait.frames(function()
				if changeRotationValue(o, -1) == "#side" then
					o.setPosition(o.getPosition() + Vector(0,0,-0.1))
				else
					o.setPosition(o.getPosition() + Vector(0,0,0.1))
				end
			end,1)
		end
    },
    LandUnit = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Land Unit (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Land Unit (sit in Black to do so)",
        }
    },
    Marriage = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Marriage token (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Marriage token (sit in Black to do so)",
        }
    },
    Merchant = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Merchant (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Merchant (sit in Black to do so)",
        },
		[Player.Action.FlipOver] = function(o)
			Wait.frames(function()
				changeRotationValue(o, 1)
			end,1)
		end,
		[Player.Action.RotateIncrementalLeft] = function(o)
			Wait.frames(function()
				changeRotationValue(o, -1)
			end,1)
		end,
		[Player.Action.RotateIncrementalRight] = function(o)
			Wait.frames(function()
				changeRotationValue(o, 1)
			end,1)
		end
    },
    Alliance = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy an Alliance token (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste an Alliance token (sit in Black to do so)",
        }
    },
    Vassal = {
        forbidPlayerActions = {
            [Player.Action.Copy] = "You cannot copy a Vassal token (sit in Black to do so)",
            [Player.Action.Paste] = "You cannot paste a Vassal token (sit in Black to do so)",
        }
    },
    --These could probably be replaced with actual buttons, but for now, it's a tile you try to pick up
    RealmSetupButton = {
      [Player.Action.PickUp] = function(o)
        Wait.frames(function()
          PlayerInSetup.realm = RealmSetupButtons[o]
          startLuaCoroutine(Global, 'AutoSetupRealm')
        end,1)
      end,
      forbidPlayerActions = {
        [Player.Action.FlipOver] = "Please click on the piece to set up that realm",
        [Player.Action.Copy] = "Please click on the piece to set up that realm",
        [Player.Action.Delete] = "Please click on the piece to set up that realm",        
      }
    }
}


function onPlayerAction(player, action, targets)
    for _,o in ipairs(targets) do
        for tag,behaviour in pairs(tagToBehaviour) do
            if o.hasTag(tag) then
                if behaviour.forbidPlayerActions and player.color ~= 'Black' then
                    if behaviour.forbidPlayerActions[action] then
                        broadcastToColor(behaviour.forbidPlayerActions[action], player.color, "Orange")
                        return false
                    end
                end
            end
        end
		for tag,behaviour in pairs(tagToBehaviour) do
			if o.hasTag(tag) then
				if behaviour[action] then
					behaviour[action](o)
				end
			end
		end
    end
    if action == Player.Action.Delete then
	    local trashBinObject = getClosesTrashBin(player.getPointerPosition())
        for _,o in ipairs (targets) do
			if getHandZone(o) then
				o.use_hands = false
				Wait.frames(function() if o ~= nil then o.use_hands = true end end,10) -- BW BW_NOTE_A this does not always result in resetting use_hands so is safeguarded in onObjectSpawn too
			end
            if CheckRemovedEnter(o, trashBinObject) then
                trashBinObject.putObject(o) -- all objects that would be destroyed (by players) will instead go to the nearest bin
            else
                -- already handled by CheckRemovedEnter
            end
        end
        return false -- prevents normal delete behaviour
    end
end

function getHandZone(o)
	if o.use_hands == false then return false end
	for _,zone in ipairs(o.getZones()) do
		if zone.type == "Hand" then
			return zone
		end
	end
	return nil
end

function getClosesTrashBin(p)
    local closestDistance, closestObject = math.huge, nil
    for _,o in ipairs (getObjects()) do
        if o.getName() == "Removed from Game" then
            local distance = Vector.distance(o.getPosition(), p)
            if distance < closestDistance then
                closestObject = o
                closestDistance = distance
            end
        end
    end
    return closestObject or nil
end

function enterObjectIntoContainer(container, enter_object)
    if tryObjectEnterContainer(container, enter_object) ~= false then
        container.putObject(enter_object)
    end
end

function tryObjectEnterContainer(container, enter_object)
    if container.hasTag("Trash") then
        return CheckRemovedEnter(enter_object, container)
    end
    return true
end

TRASH_BIN_MIN_DECK_SIZE_TO_AVOID_SEPARATION = 9
function CheckRemovedEnter(object, trashBinObject)
  if object.type == 'Deck' then
    local count = object.getQuantity()
    if object.hasTag('BotCard') or count >= TRASH_BIN_MIN_DECK_SIZE_TO_AVOID_SEPARATION then
      return true
    else
      local pos = object.getPosition() + Vector(0,1,0)
      if trashBinObject then
          pos = trashBinObject.getPosition() + Vector(0,1,0)
      end
      object.setPosition(pos)
      for i = 1, count, 1 do
        pos:setAt("y", pos.y + 0.2)
        local card = object.takeObject({
          position          = pos,
          smooth            = false,
        })
        if trashBinObject then
            enterObjectIntoContainer(trashBinObject, card)
        else
            trashBinObject.putObject(card)
        end
      end
    end
    return false
  end


  if object.hasTag('Town') or object.hasTag('Vassal') or object.hasTag('Imperial_Influence') then
    return false
  end

  if object.hasTag('Figurine') then
    local col = string.lower(GetColorFromTag(object))
    local tableau = getObjectFromGUID(Main_Tableau_GUIDs[col])
    if tableau == nil then return false end
    local pos = tableau.getPosition()
    local seat = GetSeatFromPosition(pos)
    local name = ''
    if object.guid == Setup_Bag_Item_GUIDs[col].army_1 then
      name = 'army_1'
    elseif object.guid == Setup_Bag_Item_GUIDs[col].army_2 then
      name = 'army_2'
    elseif object.guid == Setup_Bag_Item_GUIDs[col].army_3 then
      name = 'army_3'
    elseif object.guid == Setup_Bag_Item_GUIDs[col].fleet then
      name = 'fleet'
    end
    if name == '' then return false end
    if seat == 2 then
      name = name .. '_right'
    else
      name = name .. '_left'
    end
    new_pos = GetOffset(pos, Main_Tableau_Offset_Positions[name], seat, 2)
    object.setPositionSmooth(new_pos)
    object.setRotationSmooth(tableau.getRotation())
    return false
  end

  if object.hasTag('LargeCard') or object.hasTag('SmallCard') then
    if object.hasTag('Tradegood') then
      object.setPositionSmooth(Discard_Positions.trade)
      object.setRotationSmooth({0.00, 270.00, 0.00})
      return false
    elseif object.hasTag('ActionCardAdmin') then
      object.setPositionSmooth(Discard_Positions.admin)
      object.setRotationSmooth({0.00, 270.00, 0.00})
      return false
    elseif object.hasTag('ActionCardDiplo') then
      object.setPositionSmooth(Discard_Positions.diplo)
      object.setRotationSmooth({0.00, 270.00, 0.00})
      return false
    elseif object.hasTag('ActionCardWar') then
      object.setPositionSmooth(Discard_Positions.war)
      object.setRotationSmooth({0.00, 270.00, 0.00})
      return false
    elseif object.hasTag('EventCard') then
      object.setPositionSmooth(Discard_Positions.event)
      object.setRotationSmooth({0.00, 270.00, 0.00})
      return false
    end
    return true
  end
  local memo = object.memo
  if TEST_MODE then log('Object entering bin: ' .. (object.getName() or '') .. ' Memo: ' .. (memo or '')) end
  if memo == nil or memo == '' then
    return true
  elseif memo == 'infinite' then
    return true
  else
    local origin = getObjectFromGUID(memo)
    if origin == nil then
      return false
    elseif object.hasTag('LandUnit') then
      local col = GetColorFromTag(origin)
      if col then
        if IsSeated(col) then
          printToColor("Please decide if to move your land unit to exhausted manpower or the supply and manually put it there.", col, {r=0.8,g=0,b=0})
        else
          printToAll("Please decide if to move the " .. col ..  " land unit to exhausted manpower or the supply and manually put it there.", {r=0.8,g=0,b=0})
        end
      end
      return false
    elseif origin.hasTag('SetupBag') then
      return false
    else
      if TEST_MODE then log('Rotating Object on Entering Container') end
      local rot = origin.getRotation()
      object.setRotation(rot)
      origin.putObject(object)
      return false
    end
  end
end

-- Return Player Color from Tag
function GetColorFromTag(object)
  if object.hasTag('Color_Blue') then
    return 'Blue'
  elseif object.hasTag('Color_Green') then
    return 'Green'
  elseif object.hasTag('Color_Purple') then
    return 'Purple'
  elseif object.hasTag('Color_Red') then
    return 'Red'
  elseif object.hasTag('Color_White') then
    return 'White'
  elseif object.hasTag('Color_Yellow') then
    return 'Yellow'
  end
return false
end

-- Check if a player color is seated
function IsSeated(col)
  local seated = getSeatedPlayers()
  for _, seated_color in ipairs(seated) do
    if seated_color == col then
      return true
    end
  end
  return false
end

-- Empty Trash Bins
function EmptyTrash(bin)
  local contents = bin.getObjects()
  if contents == nil then return end
  for _, obj in ipairs(contents) do
    if obj.memo ~= 'infinite'  then
      Removed_Components_Bag.putObject(bin.takeObject({guid = obj.guid}))
    end
  end
end

-- Get position for prestige value (valid from 0 to 60)
function PrestigeToPos(num)
  if num < 1 then return {-20.37, 2, -12.70} end
  if num > 60 then return {-19.49, 2, 11.58} end
  local pos = {-20.33, 1.08, -11.70}
  if num > 30 then pos[1] = -19.49 end
  pos[3] = (-11.70 + ( ((num-1) % 30) * 0.8028))
  return pos
end

-- Sort a Deck by name alphabetically
function SortDeck(deck)
  local cards = deck.getObjects()
  local size = #cards
  if TEST_MODE then
    log('Sorting card list for deck: ' .. (deck.guid or 'unknown'))
    -- log(cards, 'Cards: ')
  end
  table.sort(cards, function (a, b)
    return string.lower(a.name) > string.lower(b.name)
  end)
  if TEST_MODE then log('Placing cards above deck in sorted order') end
  local position = deck.getPosition()
  for i = 2, size do
    local guid = cards[i].guid
    position[2] = 1.5 + (i * 0.4)
    deck.takeObject({
      position          = position,
      smooth            = true,
      guid              = guid,
    })
    waitFrames(1)
  end
  if TEST_MODE then log('Finished processing deck') end
end

-- Configure rulebook date
function SetRulebookDate(date_string)
  local searchable_rules = getObjectsWithTag('SearchableRules')
  if searchable_rules == nil or searchable_rules == {} then
    if TEST_MODE then log('No searchable rules found') end
  else
    for _, rulebook in pairs(searchable_rules) do
      if TEST_MODE then log('Setting rulebook to date: ' .. date_string) end
      rulebook.call('SetMapDate', date_string)
    end
  end
end


-- Randomize events with X symbol
function RandomizeXEvents(event_list)
  if TEST_MODE then log('Randomizing X-Events') end
  local result = {}
  local x_events = {}
  local stack1 = {position = 0, count=0, current = 0 }
  local stack2 = {position = 0, count=0, current = 0 }

  -- populate two stack positions:
  for _, entry in ipairs(event_list) do
    if stack1.position == 0 then
      stack1.position = entry[2]
    elseif stack1.position ~= entry[2] then
      stack2.position = entry[2]
    end
  end

  -- handle list entries
  for _, entry in ipairs(event_list) do
    if stack1.position == entry[2] then
      stack1.count = stack1.count + 1
    elseif stack2.position == entry[2] then
      stack2.count = stack2.count + 1
    end
    local is_x_card = false
    local age = string.sub(entry[1],1,1)
    if age == '1' then
      x_card_list = Age1XCards
    elseif age == '2' then
      x_card_list = Age2XCards
    elseif age == '3' then
      x_card_list = Age3XCards
    elseif age == '4' then
      x_card_list = Age4XCards
    end
    for _, v in ipairs(x_card_list) do
      if entry[1] == v then
        is_x_card = true
        break
      end
    end
    if is_x_card then
      table.insert(x_events, entry[1])
    else
      table.insert(result, entry)
      if stack1.position == entry[2] then
        stack1.current = stack1.current + 1
      elseif stack2.position == entry[2] then
        stack2.current = stack2.current + 1
      end
    end
  end

  local shuffled_x_cards = {}
  while #x_events > 0 do
    local n = math.random(#x_events)
    table.insert(shuffled_x_cards, table.remove(x_events, n))
  end

  -- distribute x cards
  for _, card in ipairs(shuffled_x_cards) do
    local stack_num = math.random(2)
    if stack_num == 1 then
      if stack1.count > stack1.current then
        table.insert(result, {card, stack1.position})
        stack1.current = stack1.current + 1
      elseif stack2.count > stack2.current then
        table.insert(result, {card, stack2.position})
        stack2.current = stack2.current + 1
      end
    elseif stack_num == 2 then
      if stack2.count > stack2.current then
        table.insert(result, {card, stack2.position})
        stack2.current = stack2.current + 1
      elseif stack1.count > stack1.current then
        table.insert(result, {card, stack1.position})
        stack1.current = stack1.current + 1
      end
    end
  end

  return result
end


-- Randomize partial list
function RandomizePartialList(list, start_pos, end_pos)
  if start_pos > end_pos then
    local pos = end_pos
    end_pos = start_pos
    start_pos = pos
  end
  local result = {}
  local random_list = {}
  local end_list = {}
  if #list < end_pos then
    log('List is shorter than final position to be handled')
    log(list)
    return list
  end
  for i, entry in ipairs(list) do
    if i < start_pos then
      table.insert(result, entry)
    elseif i >= start_pos and i <= end_pos then
      table.insert(random_list, entry)
    elseif i > end_pos then
      table.insert(end_list, entry)
    end
  end
  while #random_list > 0 do
    local pos  = math.random(#random_list)
    table.insert(result, table.remove(random_list, pos))
  end
  for _, entry in ipairs(end_list) do
    table.insert(result, entry)
  end
  return result
end


--[[
  ------------------------------------------------
  ------------------------------------------------
            Functions to facilitate
            swap, delete, and select
            realm buttons
  ------------------------------------------------
  ------------------------------------------------
--]]
-- Swap two pieces, used for swapping two entire colours
function SwapTwoObjects(piece_1, piece_2)
  local p1_pos = piece_1.getPosition()
  local p2_pos = piece_2.getPosition()
  local p1_rot = piece_1.getRotation()
  local p2_rot = piece_2.getRotation()

  piece_1.setPositionSmooth(p2_pos)
  piece_1.setRotationSmooth(p2_rot)
  piece_2.setPositionSmooth(p1_pos)
  piece_2.setRotationSmooth(p1_rot)
end

function SwapTwoColors()
  local color_to_swap_1 = Color_Swapping_Table[1]
  local color_to_swap_2 = Color_Swapping_Table[2]

  if color_to_swap_1 == color_to_swap_2 then
    log("No action on swapping a color with itself")
    Is_Color_Swapping = false
    return 1
  end
  --We need Color_Swapping_Table to be set beforehand with 2 entries
  if TEST_MODE then log('Swapping pieces for '..color_to_swap_1..' and '..color_to_swap_2) end
  --Also, since I will run 3 loops, best to store the objects themselves, their positions and rotations
  -- We are assuming that both lists are the same size
  local objects_to_swap = {}

  --Update the tables first so that if you click another button it will use the new location
  local intermediate_seat = Player_Seat_From_Color[color_to_swap_1]
  Player_Seat_From_Color[color_to_swap_1] = Player_Seat_From_Color[color_to_swap_2]
  Player_Seat_From_Color[color_to_swap_2] = intermediate_seat

  Player_Color_From_Seat[Player_Seat_From_Color[color_to_swap_2]] = color_to_swap_2
  Player_Color_From_Seat[Player_Seat_From_Color[color_to_swap_1]] = color_to_swap_1

  --We want to store, for each piece type in the setup area, the piece itself, the location and rotation
  --for both colours so we can easily reference and swap later
  for piece_name,_ in pairs(Setup_Bag_Item_GUIDs[color_to_swap_1]) do
    objects_to_swap[piece_name] = {
      piece_1 = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_1][piece_name]),
      piece_1_pos = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_1][piece_name]).getPosition(),
      piece_1_rot = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_1][piece_name]).getRotation(),
      
      piece_2 = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_2][piece_name]),
      piece_2_pos = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_2][piece_name]).getPosition(),
      piece_2_rot = getObjectFromGUID(Setup_Bag_Item_GUIDs[color_to_swap_2][piece_name]).getRotation()
    }
  end
  
  --Swap the mats
  SwapTwoObjects(getObjectFromGUID(Main_Tableau_GUIDs[color_to_swap_1]), getObjectFromGUID(Main_Tableau_GUIDs[color_to_swap_2]))
  SwapTwoObjects(getObjectFromGUID(Army_Tableau_GUIDs[color_to_swap_1]), getObjectFromGUID(Army_Tableau_GUIDs[color_to_swap_2]))
  SwapTwoObjects(getObjectFromGUID(Fleet_Tableau_GUIDs[color_to_swap_1]), getObjectFromGUID(Fleet_Tableau_GUIDs[color_to_swap_2]))

  waitFrames(5)

  --Swap all the pieces
  for _,pieces in pairs(objects_to_swap) do
    pieces.piece_1.setPositionSmooth({
      pieces.piece_2_pos[1],
      pieces.piece_2_pos[2],
      pieces.piece_2_pos[3]
    })
    pieces.piece_1.setRotationSmooth(pieces.piece_2_rot)

    pieces.piece_2.setPositionSmooth({
      pieces.piece_1_pos[1],
      pieces.piece_1_pos[2],
      pieces.piece_1_pos[3]
    })
    pieces.piece_2.setRotationSmooth(pieces.piece_1_rot)
    waitFrames(5)
  end

  --Swap the player hand positions
  local player_hand1 = getObjectFromGUID(Player_Hand_GUIDs[color_to_swap_1])
  local player_hand2 = getObjectFromGUID(Player_Hand_GUIDs[color_to_swap_2])
  if player_hand1 == nil or player_hand2 == nil then
    log('Could not find player hand object')
  else
    player_hand1.setPosition(Player_Hand_Positions[Player_Seat_From_Color[color_to_swap_1]])
    player_hand1.setRotation(Player_Hand_Rotations[Player_Seat_From_Color[color_to_swap_1]])
    player_hand2.setPosition(Player_Hand_Positions[Player_Seat_From_Color[color_to_swap_2]])
    player_hand2.setRotation(Player_Hand_Rotations[Player_Seat_From_Color[color_to_swap_2]])
  end

  --Just to make sure everthing is done
  waitFrames(60)
  Is_Color_Swapping = false

  return 1
end

--This will be used to move all pieces back into a bag after manual setup
function removePlayerPieces()
  if TEST_MODE then log('Removing pieces for '..Color_To_Remove) end
  local bag = getObjectFromGUID(Setup_Bag_GUIDs[Color_To_Remove])

  for _,piece_guid in pairs(Setup_Bag_Item_GUIDs[Color_To_Remove]) do
    local piece = getObjectFromGUID(piece_guid)
    bag.putObject(piece)
    waitFrames(5)
  end

  local Main_Tableau = getObjectFromGUID(Main_Tableau_GUIDs[Color_To_Remove])
  local Army_Tableau = getObjectFromGUID(Army_Tableau_GUIDs[Color_To_Remove])
  local Fleet_Tableau = getObjectFromGUID(Fleet_Tableau_GUIDs[Color_To_Remove])

  bag.putObject(Main_Tableau)
  bag.putObject(Army_Tableau)
  bag.putObject(Fleet_Tableau)

  --We also need to delete all of the buttons for swapping
  --TODO Abstract this logic a little and create a function to be used here and inside CreateRealmButtons()
  for button,data in pairs(Buttons_To_Swap) do
    if ( data.seat == Player_Seat_From_Color[Color_To_Remove] or data.target_color == Color_To_Remove ) and not button.isDestroyed() then
      button.destroy()
      waitFrames(5)
    end
  end

  for button,seat in pairs(Buttons_For_Realm_Selection) do
    if ( seat == Player_Seat_From_Color[Color_To_Remove] ) and not button.isDestroyed() then
      button.destroy()
    end
  end

  for button,seat in pairs(Buttons_To_Remove_Player) do
    if ( seat == Player_Seat_From_Color[Color_To_Remove] ) and not button.isDestroyed() then
      button.destroy()
    end
  end

  -- Destroy the player's hand zone so no-one can swap to that colour and
  -- they won't be dealt cards
  local player_hand = getObjectFromGUID(Player_Hand_GUIDs[Color_To_Remove])
  player_hand.destroy()

  -- At this point, I need to check if all colours have been dealt with. If so, place
  -- the deferred pieces and other final steps
  ManualSetupRealmsDealtWithCount = ManualSetupRealmsDealtWithCount + 1
  if ManualSetupRealmsDealtWithCount == 6 then
    DeferredPlacements()
    RotateMissionDecks()

    local players = {} -- Work out which players are left
    for color,seat in pairs(Player_Seat_From_Color) do
      if getObjectFromGUID(Player_Hand_GUIDs[color]) ~= nil then
        players[seat] = {
          bot = false,
          color = color
        }
      end
    end

    DealActionCards(players)
    RotateTruceAndRemoveBags()
    printToAll("Remember to draw three additional action cards and appoint advisors and leaders.\nYou may keep up to four action cards and two missions in your hand (unless otherwise specified by the scenario)", {1,1,1})
  else
    broadcastToAll('Marriage and Alliance tokens will be placed after all colors have a realm selected or have been removed')
  end
  
  return 1
end

function swapColorsButtonPress(obj)
  --Try to make sure we don't get mixed up with multiple things going
  if not Is_Color_Swapping then
    Is_Color_Swapping = true
    Color_Swapping_Table = {
      Player_Color_From_Seat[Buttons_To_Swap[obj].seat],
      Buttons_To_Swap[obj].target_color
    }
    if not Color_Swapping_Table then
      log("Could not colors to swap")
      return
    end

    startLuaCoroutine(Global,"SwapTwoColors")
  else
    broadcastToAll("Please wait for the swap the finish")
  end
end

function selectRealmButtonPress(obj)
  --Try to make sure we don't get mixed up with multiple things going
  if not Is_Realm_Selecting then
    Is_Realm_Selecting = true
    Select_Realm_Target_Color = Player_Color_From_Seat[Buttons_For_Realm_Selection[obj]]
    if not Select_Realm_Target_Color then
      log("Could not find a color to select a realm for")
      return
    end

    startLuaCoroutine(Global,"CreateRealmButtons")
    broadcastToAll("Select a realm by clicking the counter on their capital")
    obj.destroy()
  else
    broadcastToAll("Another player is selecting a realm. Please wait for them to finish.")
  end
end

function removeColorButtonPress(obj)
  Color_To_Remove = Player_Color_From_Seat[Buttons_To_Remove_Player[obj]]
  if not Color_To_Remove then
    log("Could not find a color to remove")
    return
  end
  startLuaCoroutine(Global,"removePlayerPieces")
end


--[[
  ------------------------------------------------
  ------------------------------------------------
            Create buttons for removing
            color, swapping colors, and
            selecting realms
  ------------------------------------------------
  ------------------------------------------------
--]]
function CreateButtonsForRealms()
  Buttons_To_Swap = {}
  Buttons_For_Realm_Selection = {}
  Buttons_To_Remove_Player = {}

  local color_swap_button_offsets = {
    red = {-6.0, -8.00},
    yellow = {-4.50, -8.00},
    blue = {-3.0, -8.0},
    green = {-1.50, -8.00},
    purple = {0.00, -8.00},
    white = {1.50, -8.00}
  }
  local remove_player_button_offset = {-6.90, -5.08}
  local realm_selection_button_offset = {0.00, -5.08}

  for color1,_ in pairs(COLOR_RGB_CODES) do
    local seat = Player_Seat_From_Color[color1]
    local rot = Main_Tableau_Rotations[seat]

    --Create a button here for removing this player's pieces
    if TEST_MODE then log('Placing remove button for ' .. color1 .. ' player') end
    local position = GetOffset(Main_Tableau_Positions[seat],remove_player_button_offset,seat,1)
    local remove_button = spawnObject({
      type = "BlockSquare",
      position = position,
      sound = false,
      scale = {2,0.2,1.5},
      rotation = rot
    })
    remove_button.createButton({
      click_function = 'removeColorButtonPress',
      label = "Remove\nthis color",
      width = 800,
      height = 600,
      font_size = 150,
      position = {x=0, y=1.1, z=0},
      scale = {0.5,1,0.67}
    })

    Buttons_To_Remove_Player[remove_button] = seat
    remove_button.setColorTint("Grey")
    remove_button.setLock(true)
    waitFrames(5)

    --Create a button here for selecting this player's realm
    if TEST_MODE then log('Placing realm button for ' .. color1 .. ' player') end
    position = GetOffset(Main_Tableau_Positions[seat],realm_selection_button_offset,seat,1)
    local select_realm_button = spawnObject({
      type = "BlockSquare",
      position = position,
      sound = false,
      scale = {6,0.2,1.5},
      rotation = rot
    })
    select_realm_button.createButton({
      click_function = 'selectRealmButtonPress',
      label = "Click to select\nRealm from map",
      font_size = 300,
      width = 2600,
      height = 700,
      position = {x=0, y=1.1, z=0},
      scale = {1/6,1,1/1.5},
    })

    Buttons_For_Realm_Selection[select_realm_button] = seat
    select_realm_button.setColorTint("Grey")
    select_realm_button.setLock(true)
    waitFrames(5)

    if TEST_MODE then log('Placing swap buttons for ' .. color1 .. ' player') end
    for color2,_ in pairs(COLOR_RGB_CODES) do
      position = GetOffset(Main_Tableau_Positions[seat],color_swap_button_offsets[color2],seat,1)

      --Create a button here for swapping
      local swap_button = spawnObject({
        type = "BlockSquare",
        position = position,
        sound = false,
        scale = {1.5,0.2,1},
        rotation = rot
      })

      local button_font_color = "White"
      if color2 == "yellow" or color2 == "white" then
        button_font_color = "Black"
      end
      swap_button.createButton({
        click_function = 'swapColorsButtonPress',
        label = "Swap with\n"..color2,
        width = 600,
        height = 400,
        position = {x=0, y=1.1, z=0},
        scale = {0.67,1,1},
        color = COLOR_RGB_CODES[color2],
        font_color = button_font_color
      })

      Buttons_To_Swap[swap_button] = {
        seat = Player_Seat_From_Color[color1],
        target_color = color2
      }
      swap_button.setColorTint(COLOR_RGB_CODES[color2])
      swap_button.setLock(true)
      waitFrames(5)
    end
  end
end


--[[
  ------------------------------------------------
  ------------------------------------------------
            Print Victory Point Score
  ------------------------------------------------
  ------------------------------------------------
--]]

Victory_Point_Init_Positions = {
  [1] = Vector(-20.33, 0, -11.70),
  [60] =  Vector(-19.49, 0, 11.58)
}
Victory_Point_Score_To_Position = {
  [0] = Vector(-19.92, 0, -12.69)
}

function outputDroppedScoreObjectScore(obj)
  local dropPos = obj.getPosition():setAt("y", 0)
  local closestDist, closestScorePos, closestScore = 999, nil, nil
  for score = 0, 60 do
    local scorePos =  Victory_Point_Score_To_Position[score]
    local dist = Vector.distance(scorePos, dropPos)
    if dist < 0.7 then
      if dist < closestDist then
        closestDist = dist
        closestScorePos = scorePos
        closestScore = score
      end
    end
  end
  if obj.is_face_down then closestScore = closestScore + 60 end

  local c = GetColorFromTag(obj) or "Grey"
  local name = obj.getName()
  local outString = ""
  if name ~= "" then
    outString = name
  else
    outString = c
  end

  local previousScore = tonumber(obj.getDescription()) or 0

  if closestScore then
    outString = outString.."'s Prestige set to "..closestScore
    obj.setDescription(closestScore)
  else
    closestScore = 0
    outString = outString.."'s Prestige dropped off the track "
    obj.setDescription("")
  end
  
  local scoreMod = closestScore - previousScore
  if scoreMod == 0 then
    return
  elseif scoreMod > 0 then
    scoreMod = "+"..scoreMod
  end
  outString = outString.." ["..scoreMod.."]"

  printToAll(outString, c)
end

--[[
  ------------------------------------------------
  ------------------------------------------------
            Print Stability on change
  ------------------------------------------------
  ------------------------------------------------
--]]

Stability_Offset = {
    [-3] = {-1.25, 0},
    [-2] = {-0.84, 0},
    [-1] = {-0.42, 0},
    [0]  = { 0, 0},
    [1]  = { 0.43, 0},
    [2]  = { 0.85, 0},
    [3]  = { 1.27, 0},
  }

function outputDroppedStabilityObjectStability(obj)
  local dropPos = obj.getPosition():setAt("y", 1.4)
  local color = string.lower(GetColorFromTag(obj))
  local tableau = getObjectFromGUID(Main_Tableau_GUIDs[color])
  local tableau_pos = tableau.getPosition()
  local seat = GetSeatFromPosition(tableau_pos)
  
  local closestDist, closestStabPos, closestStab = 999, nil, nil
  for stability = -3, 3 do
    local stabOffset = {
      Main_Tableau_Offset_Positions.stability[1] + Stability_Offset[stability][1],
      Main_Tableau_Offset_Positions.stability[2] + Stability_Offset[stability][2],
    }
    local stabPos = GetOffset(tableau_pos, stabOffset, seat, 1.4)
    local dist = Vector.distance(Vector(stabPos), dropPos)
    if dist < 0.7 then
      if dist < closestDist then
        closestDist = dist
        closestStabPos = stabPos
        closestStab = stability
      end
    end
  end

  local c = GetColorFromTag(obj) or "Grey"
  local name = obj.getName()
  local outString = ""
  if name ~= "" then
    outString = name
  else
    outString = c
  end

  local previousStab = tonumber(obj.getDescription()) or 0

  if closestStab then
    outString = outString.."'s Stability set to "..closestStab
    obj.setDescription(closestStab)
  else
    closestStab = 0
    outString = outString.."'s Stability dropped off the track "
    obj.setDescription("")
  end
  
  local stabMod = closestStab - previousStab
  if stabMod == 0 then
    return
  elseif stabMod > 0 then
    stabMod = "+"..stabMod
  end
  outString = outString.." ["..stabMod.."]"

  printToAll(outString, c)
end

function onObjectDrop(player_color, dropped_object)
  if dropped_object.hasTag("Score") then
    Wait.condition(
      function() outputDroppedScoreObjectScore(dropped_object) end,
      function() return dropped_object.resting end,
      5,
      function() outputDroppedScoreObjectScore(dropped_object) end
    )
  elseif dropped_object.hasTag("Stability") then
    Wait.condition(
      function() outputDroppedStabilityObjectStability(dropped_object) end,
      function() return dropped_object.resting end,
      5,
      function() outputDroppedStabilityObjectStability(dropped_object) end
    )
  end
end

for x = Victory_Point_Init_Positions[1].x, Victory_Point_Init_Positions[60].x, Victory_Point_Init_Positions[60].x-Victory_Point_Init_Positions[1].x do
  for z = Victory_Point_Init_Positions[1].z, Victory_Point_Init_Positions[60].z, (Victory_Point_Init_Positions[60].z-Victory_Point_Init_Positions[1].z) / 29 do
    table.insert(Victory_Point_Score_To_Position, Vector(x, 0, z))
  end
end

--[[
Many snap points are now stored in the EU\Positions.lua script, and this function will be called when the map
state changes to update the snap points. The 1618 and 144 side have a couple of provinces in slightly different
locations. Plus, doing it this way means that the snap points don't need to be manually added in TTS but can just
be added here in the script.
--]]
ROUNDED_TRADE_PROTECTION_SLOT_LOCATIONS = {}
function SetMainMapSnapPoints(year)
  local mainboard = getObjectsWithTag('MainBoard')
  if mainboard ~= nil then
    local allSnapPoints = {}
    local allSnapPointSourceByTag = {
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
      },
      ['TagChit'] = {
        MilestoneTagLocations
      }
    }

    for tag,location_tables in pairs(allSnapPointSourceByTag) do
      log("Snap point tag " .. tag)
      for _,table in pairs(location_tables) do
        log("Snap point location table " .. table)
        for name,location in pairs(table) do
          if not(( string.endsWith(name, '%_1444') and year == '1618' ) or ( string.endsWith(name, '%_1618') and year == '1444' )) then
            local snap_point_loc = mainboard.positionToLocal({
                location[1],
                1.0,
                location[2]
            })
            local snapPoint = {
                position = snap_point_loc,
                rotation_snap = true,
                tags = {tag}
            }
            table.insert(allSnapPoints, snapPoint)
          end
        end
      end
    end

    --The trade protection slots needs to handled slightly differently since each key has a table
    --of tables as a value, not just one. Plus, I want to populate a table with rounded co-ordinates
    local tag = "NavalUnit"
    for _,locations in pairs(TradeProtectionSlots) do
        for _,location in pairs(locations) do
            local snap_point_loc = mainboard.positionToLocal({
                location[1],
                1.0,
                location[2]
            })
            local snapPoint = {
                position = snap_point_loc,
                rotation_snap = true,
                tags = {tag}
            }
            table.insert(allSnapPoints, snapPoint)

            local roundedPoint = {
                x = math.floor(location[1]*20+0.5)/20,
                z = math.floor(location[2]*20+0.5)/20
                }
            ROUNDED_TRADE_PROTECTION_SLOT_LOCATIONS[roundedPoint.x..'||'..roundedPoint.z] = true

        end
    end
    log("Snap point 33")
    log(allSnapPoints[33])
    mainboard.setSnapPoints(allSnapPoints)
  end
end

-- x-cards
Age1XCards = { '11a-1', '12a-1', '12a-2', '13a-1', '14a-1', '14a-3', '151b', '152b', '153b', '154b', '156b', '160b' }

Age2XCards = { '21a-1', '22a-1', '22a-2', '24a-3', '24a-4', '252b', '253b', '254b', '255b', '256b', '257b',  '259b', '261b', '262b', '263b', '264b' }

Age3XCards = { '31a-1', '31a-2', '32a-1', '32a-2', '33a-1', '33a-2', '34a-3', '351b', '354b', '355b', '356b', '357b', '358b', '359b', '361b', '362b', '363b', '364b', }

Age4XCards = { '41a-2', '42a-1', '44a-1', '452b', '453b', '454b', '455b' }

require("EU.Positions")

require("EU.Realms")

require("EU.Scenarios")
