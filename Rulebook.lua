Spotlight_Elevation = 4
Map_Date = '1444'

Found_Entries = {}
Button_Count = 10
Current_Entry = 0
Current_Sub_Entry = 0

function onLoad(saved_data)
    local loaded_Data = JSON.decode(saved_data)
	if loaded_Data ~= nil and loaded_Data.player_colors ~= nil then
        Map_Date=loaded_Data.Map_Date
    else
        Map_Date=''
    end

    self.createInput({
        input_function = 'InputChanged',
        function_owner = self,
        label          = 'Search Term',
        alignment      = 3,
        position       = {0, 0.3, 2.5},
        width          = 1450,
        height         = 280,
        font_size      = 230,
        value          = '',
        validation     = 4,
    })

    for i = 1, Button_Count do
        _G["Btn"..i .."Pressed"]=function () HandlePagebutton(i); HighlightButtons() end
    end
end

--[[ ------------------
       Save game data
     ------------------ ]]
function onSave()
    local data_to_save = { Map_Date=Map_Date }
    saved_data = JSON.encode(data_to_save)
    return saved_data
end


function HandlePagebutton(b)
    if Found_Entries[b][2] == 'area' then
        --print('Area selected')
        Current_Entry = b
        Current_Sub_Entry = 1
        PlaceSpotlight(Found_Entries[b][4])
        return
    elseif Found_Entries[b][2] == 'trade' then
        --print('Trade Node selected')
        Current_Entry = b
        Current_Sub_Entry = 1
        PlaceSpotlight(Found_Entries[b][4])
        return
    elseif Found_Entries[b][2] == 'province' or Found_Entries[b][2] == 'provincerealm' then
        --print('Province selected')
        Current_Entry = b
        Current_Sub_Entry = 1
        PlaceSpotlight(Found_Entries[b][5])
        return
    elseif Found_Entries[b][2] == 'realm' then
        --print('Realm selected')
        if Current_Entry ~= b then
            Current_Entry = b
            Current_Sub_Entry = 1
            if #(Found_Entries[b][5]) == 1 then
                PlaceSpotlight(Found_Entries[b][5][1])
            else
                PlaceSpotlight(Found_Entries[b][5][1], true)
            end
            return
        else
            Current_Entry = b
            Current_Sub_Entry = Current_Sub_Entry + 1
            if Found_Entries[b][5][Current_Sub_Entry] == nil  then
                Current_Sub_Entry = 1
            end
            if #(Found_Entries[b][5]) == 1 then
                PlaceSpotlight(Found_Entries[b][5][Current_Sub_Entry])
            else
                PlaceSpotlight(Found_Entries[b][5][Current_Sub_Entry], true)
            end
        end
        return
    elseif Found_Entries[b][2] == 'index' then
        ResetSpotlight()
        if Current_Entry ~= b then
            Current_Entry = b
            Current_Sub_Entry = 1
            self.Book.setPage(Found_Entries[b][3][1], true)
            return
        else
            Current_Entry = b
            Current_Sub_Entry = Current_Sub_Entry + 1
            if Found_Entries[b][3][Current_Sub_Entry] == nil  then
                Current_Sub_Entry = 1
            end
            self.Book.setPage(Found_Entries[b][3][Current_Sub_Entry], true)
        end
    end
end

function HighlightButtons()
    for i, v in ipairs(Found_Entries) do
        local label = GetLabel(i, false)
        
        if Current_Entry == i then
            self.editButton({
                index          = i - 1,
                color          = {0.8, 0.8, 1},
                label          = label,
            })
        else
            self.editButton({
                index          = i - 1,
                color          = {1, 1, 1},
                label          = label,
            })
        end
    end
end

function InputChanged(obj, color, input, stillEditing)
    Found_Entries = GetEntries(input)
    DisplayResults()
end

function DisplayResults()
    self.clearButtons()
    for i, v in ipairs(Found_Entries) do
        local function_name = 'Btn' .. i .. 'Pressed'
        local pos = {-3.7, 0.1, -2.2 + (i * 0.4)}
        local label = GetLabel(i, true)
        local font_size = 170
        if string.len(label) > 30 then
            font_size = 100
        elseif string.len(label) > 22 then
            font_size = 140
        end
        self.createButton({
            click_function = function_name,
            function_owner = self,
            label          = label,
            position       = pos,
            width          = 2000,
            height         = 200,
            font_size      = font_size,
        })
    end
end

function GetLabel(i, is_initializing)
    local label = ''
        if Found_Entries[i][2] == 'index' then
            if not is_initializing and Current_Entry == i then
                label = Found_Entries[i][1] .. ' ('.. Current_Sub_Entry ..'/'.. #(Found_Entries[i][3]) ..')'
            else
                label = Found_Entries[i][1] .. ' ('.. #(Found_Entries[i][3]) ..')'
            end
        elseif Found_Entries[i][2] == 'area' then
            label = Found_Entries[i][3] .. ' (Area)'
        elseif Found_Entries[i][2] == 'trade' then
            label = Found_Entries[i][3] .. ' (Trade Node)'
        elseif Found_Entries[i][2] == 'province' then
            local province = ' (Province)'
            if Map_Date == "" then
                if Found_Entries[i][3] == '1444' or Found_Entries[i][3] == '1618' then
                    province = ' (' .. Found_Entries[i][3] ..' Province)'
                end
            end
            label = Found_Entries[i][4] .. province
        elseif Found_Entries[i][2] == 'provincerealm' then
            local province = ' (Province/Realm)'
            if Map_Date == "" then
                if Found_Entries[i][3] == '1444' or Found_Entries[i][3] == '1618' then
                    province = ' (' .. Found_Entries[i][3] ..' Province/Realm)'
                end
            end
            label = Found_Entries[i][4] .. province
        elseif Found_Entries[i][2] == 'realm' then
            local realm = ' (Realm)'
            if Map_Date == "" then
                if Found_Entries[i][3] == '1444' or Found_Entries[i][3] == '1618' then
                    realm = ' (' .. Found_Entries[i][3] ..' Realm)'
                end
            end
            if #(Found_Entries[i][4]) == 1 then
                label = Found_Entries[i][4] .. realm
            else
                if not is_initializing and Current_Entry == i then
                    label = Found_Entries[i][4] .. realm .. ' ('.. Current_Sub_Entry ..'/'.. #(Found_Entries[i][5]) ..')'
                else
                    label = Found_Entries[i][4] .. realm .. ' (' .. #(Found_Entries[i][5]) ..')'
                end
            end
        end
    return label
end

function GetEntries(query)
    if query == '' then
        Current_Entry = 0
        Current_Sub_Entry = 0
        ResetSpotlight()
        return {}
    end
    local counter = 0
    local results = {}
    local q = string.lower(query)
    local l = string.len(q)
    for _, value in ipairs(BOOK_INDEX) do
        local e = string.sub(value[1], 1, l)
        e = string.lower(e)
        if q == e and ValidMap(value) then
            table.insert(results, value)
            counter = counter + 1
            if counter == Button_Count then
                break
            end
        end
    end

    if l > 2 and counter < Button_Count then
        -- print('Looking for more results')
        q = '%W' .. q
        -- print('New Query: ' .. q)
        for _, value in ipairs(BOOK_INDEX) do
            local e = string.lower(value[1])
            if string.find(e, q, 2) then
                local found = false
                for _, result in ipairs(results) do
                    if value == result then
                        found = true
                        break
                    end
                end
                if not found and ValidMap(value) then
                    table.insert(results, value)
                    counter = counter + 1
                    if counter == Button_Count then
                        break
                    end
                end
            end
        end
    end
    return results
end

function ValidMap(result)
    if result[2] == 'index' or result[2] == 'area' or result[2] == 'trade' or Map_Date == '' then
        return true
    end
    if result[2] == 'province' or 'provincerealm' then
        if result[3] == '' or result[3] == Map_Date then
            return true
        end
    elseif result[2] == 'realm' then
        if result[3] == '' or result[3] == Map_Date then
            return true
        end
    end
    return false
end

function SetMapDate(date_string)
    if date_string == '1444' or date_string == '1618' then
        Map_Date = date_string
    end
end

function PlaceSpotlight(position2d, create_button)
    local obj = getObjectsWithTag('SpotlightArrow')
    if obj == nil or obj == {} then
        return
    end
    local spot = obj[1]
    if spot then
        local new_pos = {position2d[1], Spotlight_Elevation, position2d[2]}
        spot.setPositionSmooth(new_pos)
        if create_button then
            spot.call("addButton", nil)
        else
            spot.call("removeButton", nil)
        end
    end
end

function ResetSpotlight()
    local obj = getObjectsWithTag('SpotlightArrow')
    if obj == nil or obj == {} then
        return
    end
    local spot = obj[1]
    if spot then
        local new_pos = {0, -5, 0}
        spot.setPositionSmooth(new_pos)
    end
end

function NextButtonPressed()
    HandlePagebutton(Current_Entry)
end


PROVINCES = {
    ['timbuktu'] = {-17.84, 3.49}, ['benin'] = {-17.11, 2.34}, ['songhai'] = {-17.21, 3.13}, ['ethiopia'] = {-15.02, 2.67},
    ['adal'] = {-14.5, 2.73}, ['goldcoast'] = {-17.75, 2.39}, ['mali'] = {-18.32, 2.74}, ['mutapa'] = {-15.47, 0.63},
    ['kilwa'] = {-14.94, 1.16}, ['katsina'] = {-16.65, 2.77}, ['kongo'] = {-16.57, 1.58}, ['ajuuraan'] = {-14.56, 2.09},
    ['upperegypt'] = {-15.42, 3.55}, ['angola'] = {-16.56, 0.75}, ['madagascar'] = {-14.43, 0.64}, ['centralafrica'] = {-15.55, 1.77},
    ['natal'] = {-15.58, -0.12}, ['capeofgoodhope'] = {-16.16, -0.36},

    ['pernambuco'] = {-14.39, 7.91}, ['bahia'] = {-14.37, 7.23}, ['riodejaneiro'] = {-14.64, 6.52}, ['amazonas'] = {-15.66, 7.72},
    ['mexico'] = {-17.77, 9.17}, ['centralamerica'] = {-17.07, 9.0}, ['newgranada'] = {-16.16, 8.56}, ['guyana'] = {-15.47, 8.43},
    ['mississippi'] = {-17.45, 9.99}, ['virginia'] = {-16.57, 10.45}, ['florida'] = {-16.84, 9.77}, ['antilles'] = {-16.32, 9.29},
    ['hudsonbay'] = {-17.22, 11.59}, ['canada'] = {-16.48, 11.24}, ['greatlakes'] = {-17.12, 10.78}, ['newengland'] = {-15.97, 10.7},
    ['cuzco'] = {-16.26, 7.24}, ['charcas'] = {-15.8, 6.82}, ['minasgerais'] = {-15.09, 7.2}, ['laplata'] = {-15.53, 5.98},
    ['greatplains'] = {-17.87, 10.72}, ['california'] = {-18.39, 9.94}, ['chile'] = {-16.2, 5.9}, ['quito'] = {-16.64, 7.87},

    ['hejaz'] = {-18.45, -3.56}, ['yemen'] = {-18.15, -4.21}, ['coromandel'] = {-15.2, -4.65}, ['bengal'] = {-14.38, -3.42},
    ['gujarat'] = {-15.92, -3.37}, ['doab'] = {-14.91, -3.0}, ['delhi'] = {-15.44, -2.58}, ['deccan'] = {-15.24, -3.86},
    ['samarkand'] = {-16.6, -1.81}, ['isfahan'] = {-17.68, -2.22}, ['goa'] = {-15.67, -4.13}, ['fars'] = {-17.37, -2.98},
    ['balkh'] = {-16.29, -2.41}, ['herat'] = {-16.95, -2.47}, ['baluchistan'] = {-16.59, -3.1}, ['basra'] = {-18.13, -2.57},
    ['najd'] = {-18.07, -3.27}, ['khiva'] = {-17.21, -1.73}, ['hormuz'] = {-17.17, -3.6},

    ['canton'] = {-17.41, -7.18}, ['xian'] = {-17.54, -6.27}, ['kyushu'] = {-15.57, -6.56}, ['hangzhou'] = {-16.74, -6.84},
    ['malacca'] = {-17.72, -8.86}, ['siam'] = {-17.86, -8.0}, ['burma'] = {-18.41, -7.54}, ['southsumatra'] = {-17.82, -9.56},
    ['moluccas'] = {-16.19, -9.18}, ['java'] = {-17.18, -9.72}, ['papua'] = {-14.77, -9.56}, ['chengdu'] = {-18.08, -6.82},
    ['philippines'] = {-16.29, -7.94}, ['brunei'] = {-16.98, -8.79}, ['beijing'] = {-16.88, -5.88}, ['honshu'] = {-15.05, -6.1},
    ['korea'] = {-16.04, -6.14}, ['aceh'] = {-18.23, -8.99}, ['timor'] = {-16.25, -9.9}, ['vogelkop'] = {-15.51, -9.28},
    ['easternaustralia'] = {-14.27, -11.17}, ['southernaustralia'] = {-14.82, -11.75}, ['westernaustralia'] = {-16.48, -11.48},

    ['westsiberia'] = {16.93, 11.63}, ['tyumen'] = {16.24, 10.75}, ['volga'] = {15.09, 10.66}, ['nogai'] = {15.18, 9.74},
    ['ural'] = {15.63, 11.58}, ['eastsiberia'] = {18.37, 10.96}, ['okhosk'] = {19.65, 10.83}, ['oirat'] = {17.4, 10.09},
    ['mongolia'] = {18.36, 9.67}, ['manchu'] = {19.04, 9.6}, ['furdan'] = {19.63, 9.57}, ['chagatai'] = {16.8, 9.56},
    ['yarkand'] = {16.8, 9.56}, ['kazakhstan'] = {15.96, 9.77},

    ['amsterdam'] = {-2.54, 3.4}, ['antwerpen'] = {-2.50, 2.08}, ['brugge'] = {-3.77, 2.16}, ['london'] = {-5.84, 2.68},
    ['genova'] = {0.01, -3.82}, ['firenze'] = {1.63, -4.55}, ['montpellier'] = {-3.12, -4.27}, ['valencia'] = {-5.98, -6.8},
    ['normandie'] = {-6.09, 0.49}, ['champange'] = {-2.98, 0.24}, ['savoie'] = {-1.68, -2.59}, ['lorraine'] = {-1.54, -0.13},
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
    ['pfalz'] = {-0.73, 0.34}, ['provence'] = {-1.86, -4.65}, ['piemonte'] = {-0.87, -3.32}, ['berry'] = {-4.02, -1.44},
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
    ['olomouc'] = {5.01, 0.67}, ['budejovice'] = {3.48, 0.13}, ['corsica'] = {0.34, -5.3}, ['sardenya'] = {0.22, -7.7},

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
    ['amasya'] = {15.28, -6.0}, ['sivas'] = {15.89, -6.64}, ['erzurum'] = {17.82, -6.25}, ['zaporoze'] = {15.00, -1.11},
}


BOOK_INDEX = {
    {'aberdeen', 'province', '', 'Aberdeen', PROVINCES.aberdeen},
    {'abo', 'province', '', 'Åbo', PROVINCES.abo},
    {'Accepting a CtA', 'index', { 32 }},
    {'aceh', 'province', '1444', 'Aceh', PROVINCES.aceh},
    {'aceh', 'provincerealm', '1618', 'Aceh', PROVINCES.aceh},
    {'Action Card', 'index', { 18 }},
    {'Action Phase', 'index', { 8 }},
    {'Activate Units', 'index', { 16, 25 }},
    {'Active Allies', 'index', { 30, 33 }},
    {'Active Power Struggle', 'index', { 43 }},
    {'adal', 'provincerealm', '1444', 'Adal', PROVINCES.adal},
    {'adal', 'province', '1618', 'Adal', PROVINCES.adal},
    {'adana', 'province', '', 'Adana', PROVINCES.adana},
    {'Adjacency', 'index', { 4 }},
    {'Administrative Actions', 'index', { 14 }},
    {'Administrative Power', 'index', { 19 }},
    {'Admiral', 'index', { 19, 25 }},
    {'adriatic sea', 'trade', 'Adriatic Sea', {5.73, -8.01}},
    {'Advisor', 'index', { 18, 19, 20 }},
    {'aegean archipelago', 'area', 'Aegean Archipelago', {9.68, -9.04}},
    {'ajam', 'realm', '1444', 'Ajam', {PROVINCES.isfahan, }},
    {'ajuuraan', 'provincerealm', '', 'Ajuuraan', PROVINCES.ajuuraan},
    {'akershus', 'province', '', 'Akershus', PROVINCES.akershus},
    {'al quds', 'province', '', 'Al-Quds', PROVINCES.alquds},
    {'albania', 'provincerealm', '1444', 'Albania', PROVINCES.albania},
    {'albania', 'province', '1618', 'Albania', PROVINCES.albania},
    {'aleppo', 'trade', 'Aleppo', {16.96, -10.01}},
    {'alexandria', 'trade', 'Alexandria', {11.68, -10.03}},
    {'algiers', 'area', 'Algiers', {-4.04, -10.34}},
    {'algiers', 'realm', '1618', 'Algiers', {PROVINCES.mitidja, PROVINCES.qusantinah, }},
    {'Alliance', 'index', { 12, 15, 32 }},
    {'Allied Units', 'index', { 25, 33 }},
    {'altmark', 'province', '', 'Altmark', PROVINCES.altmark},
    {'amasya', 'province', '', 'Amasya', PROVINCES.amasya},
    {'amazonas', 'province', '', 'Amazonas', PROVINCES.amazonas},
    {'amsterdam', 'province', '', 'Amsterdam', PROVINCES.amsterdam},
    {'Anatomy of a Trade Card', 'index', { 34 }},
    {'Anatomy of an Action Card', 'index', { 18 }},
    {'Anatomy of an Event Card', 'index', { 39 }},
    {'Anatomy of an Idea Card', 'index', { 21 }},
    {'ancona', 'province', '', 'Ancona', PROVINCES.ancona},
    {'andalucia', 'area', 'Andalucia', {-8.90, -8.45}},
    {'angola', 'province', '', 'Angola', PROVINCES.angola},
    {'anjou', 'province', '', 'Anjou', PROVINCES.anjou},
    {'ankara', 'province', '', 'Ankara', PROVINCES.ankara},
    {'antilles', 'province', '', 'Antilles', PROVINCES.antilles},
    {'antwerpen', 'province', '', 'Antwerpen', PROVINCES.antwerpen},
    {'Appoint Advisor/Leader', 'index', { 13, 18, 19, 20, 23, 27 }},
    {'aq qoyunlu', 'realm', '1444', 'Aq Qoyunlu', {PROVINCES.mush, PROVINCES.urfa, PROVINCES.erzurum, }},
    {'aquitaine', 'area', 'Aquitaine', {-5.83, -3.42}},
    {'aragon', 'area', 'Aragon', {-5.17, -5.50}},
    {'aragon', 'realm', '1444', 'Aragon', {PROVINCES.valencia, PROVINCES.zaragoza, PROVINCES.barcelona, PROVINCES.baleares, PROVINCES.sardenya, PROVINCES.palermo, PROVINCES.mesina, PROVINCES.malta, PROVINCES.napoli, PROVINCES.bari, PROVINCES.salerno, }},
    {'Area', 'index', { 4 }},
    {'arkhangelsk', 'province', '', 'Arkhangelsk', PROVINCES.arkhangelsk},
    {'armagnac', 'province', '', 'Armagnac', PROVINCES.armagnac},
    {'armenia', 'area', 'Armenia (Transcaucasia)', {20.11, -5.85}},
    {'Army', 'index', { 24 }},
    {'Artillery', 'index', { 24 }},
    {'artois', 'province', '', 'Artois', PROVINCES.artois},
    {'astrakhan', 'area', 'Astrakhan', {19.65, -1.55}},
    {'astrakhan', 'province', '', 'Astrakhan', PROVINCES.astrakhan},
    {'astrakhan', 'trade', 'Astrakhan', {20.39, -2.34}},
    {'athens', 'realm', '1444', 'Athens', {PROVINCES.athina, }},
    {'athina', 'province', '', 'Athína', PROVINCES.athina},
    {'augsburg', 'provincerealm', '', 'Augsburg', PROVINCES.augsburg},
    {'austria', 'area', 'Austria', {3.60, -1.06}},
    {'austria', 'realm', '1444', 'Austria', {PROVINCES.wien, PROVINCES.osterreich, PROVINCES.steiermark, PROVINCES.karnten, PROVINCES.lienz, PROVINCES.tirol, PROVINCES.krain, PROVINCES.sundgau, }},
    {'austria', 'realm', '1618', 'Austria', {PROVINCES.wien, PROVINCES.osterreich, PROVINCES.steiermark, PROVINCES.karnten, PROVINCES.lienz, PROVINCES.tirol, PROVINCES.krain, PROVINCES.sundgau, PROVINCES.rijeka, PROVINCES.zagreb, PROVINCES.sopron, PROVINCES.pozsony, PROVINCES.szepes, }},
    {'Automatic White Peace', 'index', { 29 }},
    {'ava', 'realm', '1444', 'Ava', {PROVINCES.burma, }},
    {'avignon', 'province', '', 'Avignon', PROVINCES.avignon},
    {'aydin', 'area', 'Aydin', {12.14, -7.96}},
    {'ayrshire', 'province', '', 'Ayrshire', PROVINCES.ayrshire},
    {'ayutthaya', 'realm', '', 'Ayutthaya', {PROVINCES.siam, }},
    {'azov', 'province', '', 'Azov', PROVINCES.azov},
    {'aztec', 'realm', '1444', 'Aztec', {PROVINCES.mexico, }},
    {'badajoz', 'province', '', 'Badajoz', PROVINCES.badajoz},
    {'baghdad', 'province', '', 'Baghdad', PROVINCES.baghdad},
    {'bahia', 'province', '', 'Bahia', PROVINCES.bahia},
    {'baleares', 'province', '', 'Baleares', PROVINCES.baleares},
    {'balkh', 'province', '', 'Balkh', PROVINCES.balkh},
    {'baltic sea', 'trade', 'Baltic Sea', {7.17, 7.84}},
    {'baluchistan', 'provincerealm', '', 'Baluchistan', PROVINCES.baluchistan},
    {'bangazi', 'province', '', 'Bangazi', PROVINCES.bangazi},
    {'Bankruptcy', 'index', { 21 }},
    {'banten', 'realm', '1618', 'Banten', {PROVINCES.southsumatra, }},
    {'barcelona', 'province', '', 'barcelona', PROVINCES.barcelona},
    {'bari', 'province', '', 'Bari', PROVINCES.bari},
    {'basarabia', 'province', '', 'Basarabia', PROVINCES.basarabia},
    {'Basic Actions', 'index', { 8, 12 }},
    {'basra', 'province', '1444', 'Basra', PROVINCES.basra},
    {'basra', 'provincerealm', '1618', 'Basra', PROVINCES.basra},
    {'Battle Actions', 'index', { 18, 27 }},
    {'Battle Dice', 'index', { 27, 48 }},
    {'Battle Sequence', 'index', { 26 }},
    {'Battleground Area', 'index', { 43 }},
    {'Battles vs. NPRs', 'index', { 36 }},
    {'bavaria swabia', 'area', 'Bavaria & Swabia', {1.24, -0.16}},
    {'bavaria', 'realm', '', 'Bavaria', {PROVINCES.munchen, PROVINCES.landshut, PROVINCES.regensburg, }},
    {'beijing', 'province', '', 'Beijing', PROVINCES.beijing},
    {'beira', 'province', '', 'Beira', PROVINCES.beira},
    {'beloozero', 'provincerealm', '1444', 'Beloozero', PROVINCES.beloozero},
    {'beloozero', 'province', '1618', 'Beloozero', PROVINCES.beloozero},
    {'bengal', 'provincerealm', '1444', 'Bengal', PROVINCES.bengal},
    {'bengal', 'province', '1618', 'Bengal', PROVINCES.bengal},
    {'benin', 'provincerealm', '', 'Benin', PROVINCES.benin},
    {'beograd', 'province', '', 'Beograd', PROVINCES.beograd},
    {'bergenhus', 'province', '', 'Bergenhus', PROVINCES.bergenhus},
    {'bergslagen', 'province', '', 'Bergslagen', PROVINCES.bergslagen},
    {'berlin', 'province', '', 'Berlin', PROVINCES.berlin},
    {'bern', 'province', '', 'Bern', PROVINCES.bern},
    {'berry', 'province', '', 'Berry', PROVINCES.berry},
    {'bijapur', 'realm', '1444', 'Bijapur', {PROVINCES.goa, }},
    {'bijapur', 'realm', '1618', 'Bijapur', {PROVINCES.deccan, }},
    {'bitlis', 'provincerealm', '1444', 'Bitlis', PROVINCES.bitlis},
    {'bizerte', 'province', '', 'Bizerte', PROVINCES.bizerte},
    {'Black Sea', 'trade', 'Black Sea', {12.60, -4.91}},
    {'bohemia', 'area', 'Bohemia', {3.76, 1.33}},
    {'bohemia', 'realm', '', 'Bohemia', {PROVINCES.praha, PROVINCES.olomouc, PROVINCES.rudohori, PROVINCES.budejovice, PROVINCES.silesia, }},
    {'bordeaux', 'province', '', 'Bordeaux', PROVINCES.bordeaux},
    {'bordeaux', 'trade', 'Bordeaux', {-10.49, -2.45}},
    {'borgarsysla', 'province', '', 'Borgarsysla', PROVINCES.borgarsysla},
    {'bosnia', 'province', '', 'Bosnia', PROVINCES.bosnia},
    {'bosnia', 'realm', '1444', 'Bosnia', {PROVINCES.bosnia, PROVINCES.hum, }},
    {'bourbon', 'province', '', 'Bourbon', PROVINCES.bourbon},
    {'bourgogne', 'province', '', 'Bourgogne', PROVINCES.bourgogne},
    {'brabant', 'realm', '1444', 'Brabant', {PROVINCES.antwerpen, PROVINCES.breda, }},
    {'brandenburg', 'area', 'Brandenburg', {3.61, 2.89}},
    {'brandenburg', 'realm', '1444', 'Brandenburg', {PROVINCES.berlin, PROVINCES.potsdam, PROVINCES.altmark, }},
    {'brandenburg prussia', 'realm', '1618', 'Brandenburg-Prussia', {PROVINCES.berlin, PROVINCES.potsdam, PROVINCES.altmark, PROVINCES.neumark, PROVINCES.osterode, PROVINCES.konigsberg, PROVINCES.kleve, }},
    {'braunschweig', 'province', '', 'Braunschweig', PROVINCES.braunschweig},
    {'breda', 'province', '', 'Breda', PROVINCES.breda},
    {'bremen', 'provincerealm', '', 'Bremen', PROVINCES.bremen},
    {'brescia', 'province', '', 'Brescia', PROVINCES.brescia},
    {'brittany normandy', 'area', 'Brittany & Normandy', {-6.36, -0.20}},
    {'brittany', 'realm', '1444', 'Brittany', {PROVINCES.nantes, PROVINCES.rennes, }},
    {'brugge', 'province', '', 'Brugge', PROVINCES.brugge},
    {'brunei', 'provincerealm', '', 'Brunei', PROVINCES.brunei},
    {'brunswick', 'realm', '', 'Brunswick', {PROVINCES.braunschweig, PROVINCES.hannover, }},
    {'budejovice', 'province', '', 'Budejovice', PROVINCES.budejovice},
    {'bukhara', 'realm', '1618', 'Bukhara', {PROVINCES.samarkand, PROVINCES.balkh, }},
    {'burgos', 'province', '', 'Burgos', PROVINCES.burgos},
    {'burgundy', 'area', 'Burgundy', {-2.41, -2.01}},
    {'burgundy', 'realm', '1444', 'Burgundy', {PROVINCES.bourgogne, PROVINCES.franchecomte, PROVINCES.picardie, PROVINCES.artois, PROVINCES.namur, PROVINCES.luxembourg, PROVINCES.brugge, PROVINCES.gent, PROVINCES.antwerpen, PROVINCES.zeeland, PROVINCES.breda, PROVINCES.amsterdam, }},
    {'burma', 'province', '', 'Burma', PROVINCES.burma},
    {'Buy/Sell Province', 'index', { 12 }},
    {'buzau', 'province', '', 'Buzau', PROVINCES.buzau},
    {'byzantium', 'realm', '1444', 'Byzantium', {PROVINCES.constantinople, PROVINCES.morea, PROVINCES.athina, }},
    {'caffa', 'province', '', 'Caffa', PROVINCES.caffa},
    {'california', 'province', '', 'California', PROVINCES.california},
    {'Call to Arms (CtA)', 'index', { 13, 32 }},
    {'canada', 'province', '', 'Canada', PROVINCES.canada},
    {'canarias', 'province', '', 'Canarias', PROVINCES.canarias},
    {'candar', 'realm', '1444', 'Candar', {PROVINCES.kastamonu, }},
    {'canton', 'province', '', 'Canton', PROVINCES.canton},
    {'cape of good hope', 'province', '', 'Cape of Good Hope', PROVINCES.capeofgoodhope},
    {'Capital', 'index', { 4 }},
    {'Capturing Enemy Ships', 'index', { 28 }},
    {'Cardinal', 'index', { 41, 45 }},
    {'castile', 'area', 'Castile', {-8.07, -5.58}},
    {'castile', 'realm', '1444', 'Castile', {PROVINCES.madrid, PROVINCES.burgos, PROVINCES.murcia, PROVINCES.salamanca, PROVINCES.galicia, PROVINCES.badajoz, PROVINCES.sevilla, PROVINCES.cordoba, PROVINCES.canarias}},
    {'Casualties', 'index', { 27, 28 }},
    {'Casus Belli', 'index', { 22 }},
    {'Catholic', 'index', { 13, 38 }},
    {'caucasus', 'area', 'Caucasus', {20.10, -4.26}},
    {'caux', 'province', '', 'Caux', PROVINCES.caux},
    {'Cavalry', 'index', { 24 }},
    {'central africa', 'provincerealm', '', 'Central Africa', PROVINCES.centralafrica},
    {'central america', 'provincerealm', '1444', 'Central America', PROVINCES.centralamerica},
    {'central america', 'province', '1618', 'Central America', PROVINCES.centralamerica},
    {'central italy', 'area', 'Central Italy', {2.51, -5.05}},
    {'centralrussia', 'area', 'Central Russia', {17.21, 5.06}},
    {'cernigovas', 'province', '', 'Cernigovas', PROVINCES.cernigovas},
    {'ceuta', 'province', '', 'Ceuta', PROVINCES.ceuta},
    {'chagatai', 'provincerealm', '1444', 'Chagatai', PROVINCES.chagatai},
    {'champagne', 'trade', 'Champagne', {-3.71, -0.35}},
    {'champange', 'province', '', 'Champange', PROVINCES.champange},
    {'Change National Focus', 'index', { 13 }},
    {'Change State Religion', 'index', { 13 }},
    {'Character Mortality', 'index', { 20, 41 }},
    {'Character', 'index', { 18, 19 }},
    {'charcas', 'province', '', 'Charcas', PROVINCES.charcas},
    {'chengdu', 'province', '', 'Chengdu', PROVINCES.chengdu},
    {'chile', 'province', '', 'Chile', PROVINCES.chile},
    {'china japan', 'trade', 'China & Japan', {-15.23, -8.09}},
    {'circassia', 'area', 'Circassia', {18.15, -3.74}},
    {'circassia', 'provincerealm', '', 'Circassia', PROVINCES.circassia},
    {'Claim', 'index', { 3, 15, 22, 25, 26, 43 }},
    {'cleves', 'realm', '1444', 'Cleves', {PROVINCES.kleve, }},
    {'cologne', 'realm', '1444', 'Cologne', {PROVINCES.koln, }},
    {'cologne', 'realm', '1618', 'Cologne', {PROVINCES.koln, PROVINCES.munster, }},
    {'Colonial Claim', 'index', { 10, 12, 14 }},
    {'Colonist Pool', 'index', { 5 }},
    {'Colonize', 'index', { 14 }},
    {'Concepts', 'index', { 3 }},
    {'Conflicting Alliances', 'index', { 33 }},
    {'constantinople', 'province', '', 'Constantinople', PROVINCES.constantinople},
    {'Control', 'index', { 4 }},
    {'Convert Area', 'index', { 14, 38 }},
    {'cordoba', 'province', '', 'Córdoba', PROVINCES.cordoba},
    {'Core Province', 'index', { 21 }},
    {'Core token', 'index', { 21 }},
    {'coromandel', 'province', '', 'Coromandel', PROVINCES.coromandel},
    {'Corruption', 'index', { 10 }},
    {'corsica sardinia', 'area', 'Corsica & Sardinia', {-0.32, -6.09}},
    {'corsica', 'province', '', 'Corsica', PROVINCES.corsica},
    {'Cost to Recruit/build', 'index', { 17 }},
    {'Costs', 'index', { 10, 20, 21 }},
    {'Counter-Reformed', 'index', { 13, 38, 41 }},
    {'Counterespionage', 'index', { 15 }},
    {'Covert Actions', 'index', { 15, 19 }},
    {'cremona', 'province', '', 'Cremona', PROVINCES.cremona},
    {'creta', 'province', '', 'Creta', PROVINCES.creta},
    {'crimea', 'area', 'Crimea', {15.59, -0.93}},
    {'crimea', 'province', '', 'Crimea', PROVINCES.crimea},
    {'crimea', 'realm', '1444', 'Crimea', {PROVINCES.crimea, PROVINCES.yedishkul, PROVINCES.kyzylyar, PROVINCES.azov, }},
    {'crimea', 'realm', '1618', 'Crimea', {PROVINCES.crimea, PROVINCES.kyzylyar, }},
    {'croatia', 'realm', '1444', 'Croatia', {PROVINCES.zagreb, PROVINCES.rijeka, }},
    {'Crusade', 'index', { 46 }},
    {'Cut Ties', 'index', { 14 }},
    {'cuzco', 'province', '', 'Cuzco', PROVINCES.cuzco},
    {'cyprus', 'area', 'Cyprus', {13.54, -9.53}},
    {'cyprus', 'provincerealm', '1444', 'Cyprus', PROVINCES.cyprus},
    {'cyprus', 'province', '1618', 'Cyprus', PROVINCES.cyprus},
    {'cyrenaica', 'area', 'Cyrenaica', {8.27, -11.03}},
    {'dalmatia', 'area', 'Dalmatia', {4.88, -4.54}},
    {'danzig', 'province', '', 'Danzig', PROVINCES.danzig},
    {'de facto', 'index', { 28 }},
    {'de jure', 'index', { 28 }},
    {'Deaths of Rulers, Leaders, and Advisors', 'index', { 20 }},
    {'deccan', 'province', '', 'Deccan', PROVINCES.deccan},
    {'Declare War', 'index', { 16, 22 }},
    {'Defending the HRE', 'index', { 44 }},
    {'Defensive CtA', 'index', { 13, 32 }},
    {'delhi', 'province', '', 'Delhi', PROVINCES.delhi},
    {'delhi', 'realm', '1444', 'Delhi', {PROVINCES.delhi, PROVINCES.doab, }},
    {'demak', 'realm', '1618', 'Demak', {PROVINCES.java, }},
    {'denmark', 'realm', '1444', 'Denmark', {PROVINCES.kobenhavn, PROVINCES.lund, PROVINCES.gotland, PROVINCES.ostjylland, PROVINCES.vestjylland, PROVINCES.slesvig, PROVINCES.holstein, }},
    {'denmark', 'realm', '1618', 'Denmark', {PROVINCES.kobenhavn, PROVINCES.lund, PROVINCES.gotland, PROVINCES.borgarsysla, PROVINCES.akershus, PROVINCES.bergenhus, PROVINCES.trondheim, PROVINCES.ostjylland, PROVINCES.vestjylland, PROVINCES.slesvig, PROVINCES.holstein, }},
    {'desmond', 'realm', '1444', 'Desmond', {PROVINCES.mhumhain, }},
    {'dimashq', 'province', '', 'Dimashq', PROVINCES.dimashq},
    {'Diplomatic Actions', 'index', { 15 }},
    {'Diplomatic Power', 'index', { 19 }},
    {'Diplomatic Relations', 'index', { 32 }},
    {'Discard', 'index', { 11, 18 }},
    {'Discover', 'index', { 12 }},
    {'Display Cards', 'index', { 18 }},
    {'Disputed Succession', 'index', { 22, 32 }},
    {'Distant Continents', 'index', { 4, 26, 35 }},
    {'Distant Province', 'index', { 4 }},
    {'Distant Realm', 'index', { 3 }},
    {'Diverse Faiths', 'index', { 38 }},
    {'djerid', 'realm', '1444', 'Djerid', {PROVINCES.qafsah, }},
    {'DNPR Expansion', 'index', { 41 }},
    {'doab', 'province', '', 'Doab', PROVINCES.doab},
    {'don', 'province', '1444', 'Don', PROVINCES.don},
    {'DoW', 'index', { 22 }},
    {'Draw Cards Phase', 'index', { 8 }},
    {'dresden', 'province', '', 'Dresden', PROVINCES.dresden},
    {'dumyat', 'province', '', 'Dumyat', PROVINCES.dumyat},
    {'Dutch Core Provinces', 'index', { 5 }},
    {'Dynamic NPR (DNPR)', 'index', { 35 }},
    {'east anglia', 'area', 'East Anglia', {-6.03, 3.58}},
    {'east indies', 'trade', 'East Indies', {-17.44, -10.68}},
    {'east siberia', 'province', '', 'East Siberia', PROVINCES.eastsiberia},
    {'eastern australia', 'province', '', 'Eastern Australia', PROVINCES.easternaustralia},
    {'eastern ukraine', 'area', 'Eastern Ukraine', {14.94, 0.83}},
    {'edirne', 'province', '', 'Edirne', PROVINCES.edirne},
    {'edisanas', 'province', '', 'Edisanas', PROVINCES.edisanas},
    {'egypt', 'area', 'Egypt', {12.42, -11.30}},
    {'Elector Area', 'index', { 5, 44 }},
    {'Emperor', 'index', { 43, 44, 45 }},
    {'End of Age Routine', 'index', { 11 }},
    {'Ending an Alliance', 'index', { 14, 33, 40 }},
    {'Enemy', 'index', { 4 }},
    {'Enforcing Peace Terms', 'index', { 30 }},
    {'england', 'realm', '1444', 'England', {PROVINCES.london, PROVINCES.oxford, PROVINCES.essex, PROVINCES.wales, PROVINCES.wessex, PROVINCES.shrewsbury, PROVINCES.lancashire, PROVINCES.northumberland, PROVINCES.york, PROVINCES.pale, PROVINCES.bordeaux, PROVINCES.caux, PROVINCES.maine, PROVINCES.normandie}},
    {'england', 'realm', '1618', 'England', {PROVINCES.london, PROVINCES.oxford, PROVINCES.essex, PROVINCES.wales, PROVINCES.wessex, PROVINCES.shrewsbury, PROVINCES.lancashire, PROVINCES.northumberland, PROVINCES.york, PROVINCES.pale, PROVINCES.ulaidh, PROVINCES.mhumhain,}},
    {'english channel', 'trade', 'English Channel', {-3.89, 3.50}},
    {'erzurum', 'province', '', 'Erzurum', PROVINCES.erzurum},
    {'essex', 'province', '', 'Essex', PROVINCES.essex},
    {'estonia livonia', 'area', 'Estonia & Livonia', {10.12, 6.38}},
    {'ethiopia', 'provincerealm', '', 'Ethiopia', PROVINCES.ethiopia},
    {'Event Symbols', 'index', { 41 }},
    {'Event', 'index', { 12, 39 }},
    {'Excommunication', 'index', { 46 }},
    {'Expanded Trade Nodes', 'index', { 35 }},
    {'Explore', 'index', { 12 }},
    {'Fabricate Claims', 'index', { 15 }},
    {'fars', 'province', '', 'Fars', PROVINCES.fars},
    {'fars', 'realm', '1444', 'Fars', {PROVINCES.fars, }},
    {'fayyum', 'province', '1444', 'Fayyum', PROVINCES.fayyum},
    {'ferrara', 'provincerealm', '1444', 'Ferrara', PROVINCES.ferrara},
    {'ferrara', 'province', '1618', 'Ferrara', PROVINCES.ferrara},
    {'fez', 'province', '', 'Fez', PROVINCES.fez},
    {'Final Scoring', 'index', { 11 }},
    {'finland', 'area', 'Finland', {8.86, 8.60}},
    {'Fire Advisors', 'index', { 10 }},
    {'firenze', 'province', '', 'Firenze', PROVINCES.firenze},
    {'flanders wallonia', 'area', 'Flanders & Wallonia', {-2.74, 1.55}},
    {'flanders', 'realm', '1444', 'Flanders', {PROVINCES.brugge, PROVINCES.gent, }},
    {'Fleets', 'index', { 24 }},
    {'florence', 'realm', '1444', 'Florence', {PROVINCES.firenze, PROVINCES.pisa, }},
    {'florida', 'province', '', 'Florida', PROVINCES.florida},
    {'Force Conversion', 'index', { 31 }},
    {'Forge Alliance', 'index', { 15 }},
    {'france', 'realm', '1444', 'France', {PROVINCES.paris, PROVINCES.champange, PROVINCES.orleans, PROVINCES.berry, PROVINCES.bourbon, PROVINCES.limousin, PROVINCES.lyon, PROVINCES.montpellier, PROVINCES.toulouse, PROVINCES.armagnac, PROVINCES.saintonge, PROVINCES.poitou, }},
    {'france', 'realm', '1618', 'France', {PROVINCES.paris, PROVINCES.champange, PROVINCES.picardie, PROVINCES.orleans, PROVINCES.berry, PROVINCES.bourbon, PROVINCES.limousin, PROVINCES.lyon, PROVINCES.bourgogne, PROVINCES.provence, PROVINCES.montpellier, PROVINCES.toulouse, PROVINCES.bordeaux, PROVINCES.armagnac, PROVINCES.saintonge, PROVINCES.poitou, PROVINCES.nantes, PROVINCES.maine, PROVINCES.rennes, PROVINCES.normandie, PROVINCES.caux, }},
    {'franche comte', 'province', '', 'Franche-Comté', PROVINCES.franchecomte},
    {'frankfurt', 'provincerealm', '', 'Frankfurt', PROVINCES.frankfurt},
    {'Friendly', 'index', { 4 }},
    {'friesland', 'provincerealm', '1444', 'Friesland', PROVINCES.friesland},
    {'friesland', 'province', '1618', 'Friesland', PROVINCES.friesland},
    {'fulo', 'realm', '1618', 'Fulo', {PROVINCES.mali, }},
    {'furdan', 'province', '', 'Furdan', PROVINCES.furdan},
    {'galich', 'province', '1444', 'Galich', PROVINCES.galich},
    {'galicia', 'province', '', 'Galicia', PROVINCES.galicia},
    {'Galleys', 'index', { 24 }},
    {'Game Concepts', 'index', { 3 }},
    {'Game Overview', 'index', { 2 }},
    {'gazikumukh', 'realm', '1618', 'Gazikumukh', {PROVINCES.terek, }},
    {'gazzah', 'province', '', 'Gazzah', PROVINCES.gazzah},
    {'gelre', 'provincerealm', '1444', 'Gelre', PROVINCES.gelre},
    {'gelre', 'province', '1618', 'Gelre', PROVINCES.gelre},
    {'Generals', 'index', { 19, 23, 25 }},
    {'Generic Actions', 'index', { 12 }},
    {'geneve', 'province', '', 'Genève', PROVINCES.geneve},
    {'genoa', 'realm', '1444', 'Genoa', {PROVINCES.genova, PROVINCES.corsica, PROVINCES.caffa }},
    {'genoa', 'realm', '1618', 'Genoa', {PROVINCES.genova, PROVINCES.corsica }},
    {'genoa', 'trade', 'Genoa', {-1.50, -6.62}},
    {'genova', 'province', '', 'Genova', PROVINCES.genova},
    {'gent', 'province', '', 'Gent', PROVINCES.gent},
    {'georgia', 'realm', '1444', 'Georgia', {PROVINCES.tblisi, }},
    {'gharb', 'province', '', 'Gharb', PROVINCES.gharb},
    {'gibraltar', 'province', '', 'Gibraltar', PROVINCES.gibraltar},
    {'goa', 'province', '', 'Goa', PROVINCES.goa},
    {'gold coast', 'province', '', 'Gold Coast', PROVINCES.goldcoast},
    {'Gold Province', 'index', { 4 }},
    {'Gold', 'index', { 34 }},
    {'goldingen', 'province', '', 'Goldingen', PROVINCES.goldingen},
    {'gotaland skane', 'area', 'Götaland & Skåne', {3.77, 7.03}},
    {'gotland', 'province', '', 'Gotland', PROVINCES.gotland},
    {'Government Forms', 'index', { 21 }},
    {'granada', 'province', '', 'Granada', PROVINCES.granada},
    {'granada', 'realm', '1444', 'Granada', {PROVINCES.granada, PROVINCES.gibraltar, }},
    {'great horde', 'realm', '1444', 'Great Horde', {PROVINCES.saratov, PROVINCES.tambov, PROVINCES.don, PROVINCES.sarai, PROVINCES.astrakhan, PROVINCES.majar, PROVINCES.terek, }},
    {'great lakes', 'province', '', 'Great Lakes', PROVINCES.greatlakes},
    {'great plains', 'province', '', 'Great Plains', PROVINCES.greatplains},
    {'greece', 'area', 'Greece', {8.24, -7.79}},
    {'gujarat', 'provincerealm', '1444', 'Gujarat', PROVINCES.gujarat},
    {'gujarat', 'province', '1618', 'Gujarat', PROVINCES.gujarat},
    {'guria', 'province', '', 'Guria', PROVINCES.guria},
    {'guyana', 'province', '', 'Guyana', PROVINCES.guyana},
    {'halab', 'province', '', 'Halab', PROVINCES.halab},
    {'halsingland', 'province', '', 'Hälsingland', PROVINCES.halsingland},
    {'hamburg', 'provincerealm', '', 'Hamburg', PROVINCES.hamburg},
    {'Hand size', 'index', { 11, 18 }},
    {'hangzhou', 'province', '', 'Hangzhou', PROVINCES.hangzhou},
    {'hannover', 'province', '', 'Hannover', PROVINCES.hannover},
    {'Heavy Ship', 'index', { 24 }},
    {'hejaz', 'provincerealm', '', 'Hejaz', PROVINCES.hejaz},
    {'herat', 'province', '', 'Herat', PROVINCES.herat},
    {'Historical Ruler', 'index', { 19, 39 }},
    {'holland', 'realm', '1444', 'Holland', {PROVINCES.amsterdam, PROVINCES.zeeland, }},
    {'holstein', 'province', '1444', 'Holstein', PROVINCES.holstein},
    {'holstein', 'realm', '1444', 'Holstein', {PROVINCES.holstein, PROVINCES.slesvig, }},
    {'holstein', 'provincerealm', '1618', 'Holstein', PROVINCES.holstein},
    {'Holy Roman Empire (HRE)', 'index', { 43 }},
    {'honshu', 'province', '', 'Honshu', PROVINCES.honshu},
    {'hormuz', 'provincerealm', '1444', 'Hormuz', PROVINCES.hormuz},
    {'hormuz', 'province', '1618', 'Hormuz', PROVINCES.hormuz},
    {'Hostile', 'index', { 4 }},
    {'HRE Area', 'index', { 44, 45 }},
    {'HRE border', 'index', { 5 }},
    {'HRE Members', 'index', { 44 }},
    {'hudavendigar', 'province', '', 'Hüdavendigar', PROVINCES.hudavendigar},
    {'hudson bay', 'province', '', 'Hudson Bay', PROVINCES.hudsonbay},
    {'hum', 'province', '1444', 'Hum', PROVINCES.hum},
    {'Humiliation', 'index', { 30 }},
    {'hungarian plain', 'area', 'Hungarian Plain', {6.91, -2.04}},
    {'hungary', 'realm', '1444', 'Hungary', {PROVINCES.pest, PROVINCES.szabolcs, PROVINCES.sopron, PROVINCES.pozsony, PROVINCES.szepes, PROVINCES.torda, PROVINCES.hunyad, PROVINCES.beograd, PROVINCES.zagreb, PROVINCES.rijeka,  }},
    {'hunyad', 'province', '', 'Hunyad', PROVINCES.hunyad},
    {'Ideas', 'index', { 12, 21 }},
    {'Ill Health', 'index', { 20 }},
    {'imereti', 'province', '', 'Imereti', PROVINCES.imereti},
    {'imereti', 'realm', '', 'Imereti', {PROVINCES.imereti, PROVINCES.guria, }},
    {'Imperial Authority', 'index', { 43 }},
    {'Imperial Elections', 'index', { 45 }},
    {'Imperial Influence', 'index', { 44 }},
    {'Imperial Liberation', 'index', { 22, 44 }},
    {'Imperial Manpower', 'index', { 44 }},
    {'Inactive Port', 'index', { 5, 36 }},
    {'inca', 'realm', '1444', 'Inca', {PROVINCES.cuzco, PROVINCES.quito, PROVINCES.charcas, PROVINCES.chile, }},
    {'Increase Stability', 'index', { 14 }},
    {'indian ocean', 'trade', 'Indian Ocean', {-17.09, -4.50}},
    {'Infantry', 'index', { 24 }},
    {'Infectious Faith', 'index', { 38, 41 }},
    {'Inflation', 'index', { 34 }},
    {'Influence', 'index', { 15, 32 }},
    {'Inland Trade Node', 'index', { 4, 34 }},
    {'Integrate Area', 'index', { 21 }},
    {'Interregnum', 'index', { 9, 20, 22, 32, 45 }},
    {'iraq', 'area', 'Iraq', {19.90, -9.53}},
    {'ireland', 'area', 'Ireland', {-10.97, 4.43}},
    {'isfahan', 'province', '', 'Isfahan', PROVINCES.isfahan},
    {'iskandariyya', 'province', '', 'Iskandariyya', PROVINCES.iskandariyya},
    {'Island Province', 'index', { 4, 28 }},
    {'ivory coast', 'trade', 'Ivory Coast', {-17.40, -0.35}},
    {'izmir', 'province', '', 'Izmir', PROVINCES.izmir},
    {'jaffa', 'province', '', 'Jaffa', PROVINCES.jaffa},
    {'japan', 'realm', '1444', 'Japan', {PROVINCES.honshu, PROVINCES.kyushu, }},
    {'java', 'province', '', 'Java', PROVINCES.java},
    {'jenne', 'realm', '1618', 'Jenne', {PROVINCES.songhai, }},
    {'jutland', 'area', 'Jutland', {0.43, 6.72}},
    {'kabylia', 'province', '1444', 'Kabylia', PROVINCES.kabylia},
    {'kalisz', 'province', '', 'Kalisz', PROVINCES.kalisz},
    {'kanem bornu', 'realm', '1618', 'Kanem Bornu', {PROVINCES.katsina, }},
    {'karaman', 'area', 'Karaman', {14.40, -7.65}},
    {'karaman', 'province', '', 'Karaman', PROVINCES.karaman},
    {'karaman', 'realm', '1444', 'Karaman', {PROVINCES.karaman, PROVINCES.konya, }},
    {'karelia', 'area', 'Karelia', {13.11, 9.32}},
    {'kargopol', 'province', '1444', 'Kargopol', PROVINCES.kargopol},
    {'karnten', 'province', '', 'Kärnten', PROVINCES.karnten},
    {'kasimov', 'province', '1444', 'Kasimov', PROVINCES.kasimov},
    {'kastamonu', 'province', '', 'Kastamonu', PROVINCES.kastamonu},
    {'katsina', 'provincerealm', '1444', 'Katsina', PROVINCES.katsina},
    {'katsina', 'province', '1618', 'Katsina', PROVINCES.katsina},
    {'kaunas', 'province', '1444', 'Kaunas', PROVINCES.kaunas},
    {'kazakh', 'realm', '1618', 'Kazakh', {PROVINCES.kazakhstan, PROVINCES.nogai, }},
    {'kazakhstan', 'province', '', 'Kazakhstan', PROVINCES.kazakhstan},
    {'kazan', 'area', 'Kazan', {20.69, 4.24}},
    {'kazan', 'province', '', 'Kazan', PROVINCES.kazan},
    {'kazan', 'realm', '1444', 'Kazan', {PROVINCES.kazan, PROVINCES.volga, }},
    {'kazan', 'trade', 'Kazan', {20.39, 3.61}},
    {'Keep Current Board State', 'index', { 30 }},
    {'khiva', 'province', '1444', 'Khiva', PROVINCES.khiva},
    {'khiva', 'provincerealm', '1618', 'Khiva', PROVINCES.khiva},
    {'kiev', 'trade', 'Kiev', {11.62, 1.16}},
    {'kijevas', 'province', '', 'Kijevas', PROVINCES.kijevas},
    {'kilwa', 'provincerealm', '', 'Kilwa', PROVINCES.kilwa},
    {'kirkuk', 'province', '', 'Kirkuk', PROVINCES.kirkuk},
    {'kleve', 'province', '', 'Kleve', PROVINCES.kleve},
    {'knights', 'realm', '1444', 'Knights', {PROVINCES.rhodes, }},
    {'knights', 'realm', '1618', 'Knights', {PROVINCES.malta, }},
    {'kobenhavn', 'province', '', 'København', PROVINCES.kobenhavn},
    {'koln', 'province', '', 'Köln', PROVINCES.koln},
    {'kongo', 'provincerealm', '', 'Kongo', PROVINCES.kongo},
    {'konigsberg', 'province', '', 'Königsberg', PROVINCES.konigsberg},
    {'konya', 'province', '1444', 'Konya', PROVINCES.konya},
    {'korea', 'provincerealm', '', 'Korea', PROVINCES.korea},
    {'koslin', 'province', '1618', 'Köslin', PROVINCES.koslin},
    {'kosovo', 'province', '', 'Kosovo', PROVINCES.kosovo},
    {'krain', 'province', '', 'Krain', PROVINCES.krain},
    {'krakow', 'province', '', 'Kraków', PROVINCES.krakow},
    {'krakow', 'trade', 'Krakow', {7.12, 1.48}},
    {'kulm', 'province', '', 'Kulm', PROVINCES.kulm},
    {'kurdistan', 'area', 'Kurdistan', {17.83, -7.86}},
    {'kurland', 'realm', '1618', 'Kurland', {PROVINCES.goldingen, }},
    {'kutahya', 'province', '1444', 'Kütahya', PROVINCES.kutahya},
    {'kyushu', 'province', '', 'Kyushu', PROVINCES.kyushu},
    {'kyzyl yar', 'province', '', 'Kyzyl-Yar', PROVINCES.kyzylyar},
    {'la plata', 'province', '', 'La Plata', PROVINCES.laplata},
    {'ladoga', 'province', '', 'Ladoga', PROVINCES.ladoga},
    {'laighin', 'province', '', 'Laighin', PROVINCES.laighin},
    {'lancashire', 'province', '', 'Lancashire', PROVINCES.lancashire},
    {'Land Activation', 'index', { 16, 25, 26 }},
    {'Land Battle', 'index', { 27, 36 }},
    {'Land Movement', 'index', { 16, 25 }},
    {'Land Units', 'index', { 24 }},
    {'landshut', 'province', '', 'Landshut', PROVINCES.landshut},
    {'languedoc', 'area', 'Languedoc', {-3.57, -4.03}},
    {'Large Province', 'index', { 4 }},
    {'Leader', 'index', { 13, 18, 19, 20, 23 }},
    {'Leaving the HRE', 'index', { 45 }},
    {'leinster', 'realm', '', 'Leinster', {PROVINCES.laighin, }},
    {'leipzig', 'province', '', 'Leipzig', PROVINCES.leipzig},
    {'leon', 'area', 'Leon', {-9.59, -4.75}},
    {'Liberation', 'index', { 9, 30, 35, 37 }},
    {'liege', 'provincerealm', '', 'Liège', PROVINCES.liege},
    {'lienz', 'province', '', 'Lienz', PROVINCES.lienz},
    {'Light Ship', 'index', { 24 }},
    {'limousin', 'province', '', 'Limousin', PROVINCES.limousin},
    {'lisboa', 'province', '', 'Lisboa', PROVINCES.lisboa},
    {'lithuania', 'area', 'Lithuania', {9.86, 4.45}},
    {'lithuania', 'realm', '1444', 'Lithuania', {PROVINCES.vilnius, PROVINCES.kaunas, PROVINCES.zemaitija, PROVINCES.naugardukas, PROVINCES.voluine, PROVINCES.edisanas, PROVINCES.kijevas, PROVINCES.poltava, PROVINCES.cernigovas, PROVINCES.smolenskas, PROVINCES.minskas, PROVINCES.polockas, }},
    {'livland', 'province', '', 'Livland', PROVINCES.livland},
    {'livonian order', 'realm', '1444', 'Livonian Order', {PROVINCES.livland, PROVINCES.reval, PROVINCES.goldingen, }},
    {'Loans', 'index', { 13, 21 }},
    {'loire', 'area', 'Loire', {-4.20, -2.28}},
    {'lombardy', 'area', 'Lombardy', {-0.23, -3.37}},
    {'london', 'province', '', 'London', PROVINCES.london},
    {'lorraine', 'provincerealm', '', 'Lorraine', PROVINCES.lorraine},
    {'lothian', 'province', '', 'Lothian', PROVINCES.lothian},
    {'lower saxony', 'area', 'Lower Saxony', {0.83, 3.31}},
    {'lubeck', 'provincerealm', '', 'Lübeck', PROVINCES.lubeck},
    {'lubeck', 'trade', 'Lübeck', {4.03, 5.08}},
    {'lublin', 'province', '', 'Lublin', PROVINCES.lublin},
    {'lund', 'province', '', 'Lund', PROVINCES.lund},
    {'luxembourg', 'province', '', 'Luxembourg', PROVINCES.luxembourg},
    {'lwow', 'province', '', 'Lwów', PROVINCES.lwow},
    {'lyon', 'province', '', 'Lyon', PROVINCES.lyon},
    {'macaronesia', 'area', 'Macaronesia', {-12.91, -11.63}},
    {'macedonia thrace', 'area', 'Macedonia & Thrace', {8.06, -5.98}},
    {'madagascar', 'provincerealm', '', 'Madagascar', PROVINCES.madagascar},
    {'madeira', 'province', '', 'Madeira', PROVINCES.madeira},
    {'madrid', 'province', '', 'Madrid', PROVINCES.madrid},
    {'magdeburg', 'provincerealm', '', 'Magdeburg', PROVINCES.magdeburg},
    {'maghreb', 'trade', 'Maghreb', {-4.95, -11.87}},
    {'Main Defender', 'index', { 27 }},
    {'Main Map', 'index', { 4, 5 }},
    {'maine', 'province', '', 'Maine', PROVINCES.maine},
    {'mainz', 'provincerealm', '', 'Mainz', PROVINCES.mainz},
    {'majapahit', 'realm', '1444', 'Majapahit', {PROVINCES.java, }},
    {'majar', 'province', '', 'Majar', PROVINCES.majar},
    {'malacca', 'provincerealm', '1444', 'Malacca', PROVINCES.malacca},
    {'malacca', 'province', '1618', 'Malacca', PROVINCES.malacca},
    {'mali', 'provincerealm', '1444', 'Mali', PROVINCES.mali},
    {'mali', 'province', '1618', 'Mali', PROVINCES.mali},
    {'malta', 'province', '', 'Malta', PROVINCES.malta},
    {'mamluks', 'realm', '1444', 'Mamluks', {PROVINCES.qahirah, PROVINCES.fayyum, PROVINCES.iskandariyya, PROVINCES.dumyat, PROVINCES.bangazi, PROVINCES.gazzah, PROVINCES.alquds, PROVINCES.jaffa, PROVINCES.dimashq, PROVINCES.tarabulus, PROVINCES.halab, PROVINCES.upperegypt, PROVINCES.hejaz, }},
    {'Man of the Church', 'index', { 38, 46 }},
    {'manchu', 'province', '', 'Manchu', PROVINCES.manchu},
    {'manchu', 'realm', '', 'Manchu', {PROVINCES.manchu, PROVINCES.furdan, }},
    {'Manpower', 'index', { 3, 20, 21, 23, 36, 43 }},
    {'mantova', 'province', '', 'Mantova', PROVINCES.mantova},
    {'mantua', 'realm', '', 'Mantua', {PROVINCES.mantova, }},
    {'Map board', 'index', { 5 }},
    {'Map oddities', 'index', { 5 }},
    {'marienburg', 'province', '1444', 'Marienburg', PROVINCES.marienburg},
    {'Maritime Trade Node', 'index', { 4, 34 }},
    {'marrakech', 'province', '', 'Marrakech', PROVINCES.marrakech},
    {'Marriage', 'index', { 12, 32 }},
    {'mazovia malopolska', 'area', 'Mazovia & Malopolska', {7.96, 1.92}},
    {'mazovia', 'realm', '1444', 'Mazovia', {PROVINCES.warszawa, }},
    {'mecklenburg', 'provincerealm', '', 'Mecklenburg', PROVINCES.mecklenburg},
    {'mentese', 'province', '', 'Menteşe', PROVINCES.mentese},
    {'Mercenaries', 'index', { 17, 25 }},
    {'Merchants', 'index', { 34 }},
    {'mesina', 'province', '', 'Mesina', PROVINCES.mesina},
    {'mexico', 'province', '', 'Mexico', PROVINCES.mexico},
    {'mhumhain', 'province', '', 'Mhumhain', PROVINCES.mhumhain},
    {'milan', 'realm', '1444', 'Milan', {PROVINCES.milano, PROVINCES.cremona, PROVINCES.parma, }},
    {'milano', 'province', '', 'Milano', PROVINCES.milano},
    {'Milestones', 'index', { 11, 42 }},
    {'Military Access', 'index', { 25, 44 }},
    {'Military Actions', 'index', { 16 }},
    {'Military Capacity', 'index', { 22 }},
    {'Military Maintenance', 'index', { 10 }},
    {'Military Power', 'index', { 19 }},
    {'minas gerais', 'province', '', 'Minas Gerais', PROVINCES.minasgerais},
    {'ming', 'realm', '', 'Ming', {PROVINCES.beijing, PROVINCES.xian, PROVINCES.chengdu, PROVINCES.canton, PROVINCES.hangzhou, }},
    {'Minor Actions', 'index', { 13 }},
    {'minskas', 'province', '', 'Minskas', PROVINCES.minskas},
    {'Missions and Milestones', 'index', { 42 }},
    {'Missions', 'index', { 8, 42 }},
    {'mississippi', 'province', '', 'Mississippi', PROVINCES.mississippi},
    {'mitidja', 'province', '', 'Mitidja', PROVINCES.mitidja},
    {'moldavia', 'area', 'Moldavia', {12.00, -2.00}},
    {'moldavia', 'realm', '1444', 'Moldavia', {PROVINCES.suceava, PROVINCES.basarabia, }},
    {'moldavia', 'realm', '1618', 'Moldavia', {PROVINCES.suceava, }},
    {'moluccas', 'province', '', 'Moluccas', PROVINCES.moluccas},
    {'Monarch Power', 'index', { 3, 10, 19 }},
    {'Monetary Support', 'index', { 12 }},
    {'mongolia', 'provincerealm', '1444', 'Mongolia', PROVINCES.mongolia},
    {'mongolia', 'province', '1618', 'Mongolia', PROVINCES.mongolia},
    {'mongolia', 'realm', '1618', 'Mongolia', {PROVINCES.mongolia, PROVINCES.oirat, }},
    {'montpellier', 'province', '', 'Montpellier', PROVINCES.montpellier},
    {'morea', 'province', '', 'Morea', PROVINCES.morea},
    {'morocco', 'realm', '1444', 'Morocco', {PROVINCES.fez, PROVINCES.tangiers, PROVINCES.gharb, PROVINCES.marrakech, PROVINCES.tafilalt, PROVINCES.sus, }},
    {'morocco', 'realm', '1618', 'Morocco', {PROVINCES.fez, PROVINCES.gharb, PROVINCES.marrakech, PROVINCES.tafilalt, PROVINCES.sus, }},
    {'moscow ryazan', 'area', 'Moscow & Ryazan', {15.62, 3.86}},
    {'moskva', 'province', '', 'Moskva', PROVINCES.moskva},
    {'mosul', 'province', '', 'Mosul', PROVINCES.mosul},
    {'Mountain Border', 'index', { 4, 25 }},
    {'Movement on Distant Continents', 'index', { 26 }},
    {'Movement', 'index', { 25 }},
    {'mughals', 'realm', '1618', 'Mughals', {PROVINCES.delhi, PROVINCES.doab, PROVINCES.bengal, PROVINCES.gujarat, }},
    {'Multiple Enemies', 'index', { 27 }},
    {'munchen', 'province', '', 'München', PROVINCES.munchen},
    {'munster', 'province', '', 'Münster', PROVINCES.munster},
    {'munster', 'realm', '1444', 'Münster', {PROVINCES.munster, }},
    {'murcia', 'province', '', 'Murcia', PROVINCES.murcia},
    {'murom', 'province', '', 'Murom', PROVINCES.murom},
    {'muscovy', 'realm', '1444', 'Muscovy', {PROVINCES.moskva, PROVINCES.rzhev, PROVINCES.kasimov, PROVINCES.murom, PROVINCES.vladimir, PROVINCES.suzdal, PROVINCES.nizhnynovgorod, PROVINCES.galich, PROVINCES.viatka, PROVINCES.vologda, PROVINCES.yaroslavl, PROVINCES.perm, PROVINCES.beloozero, PROVINCES.pskov, }},
    {'mush', 'province', '', 'Mush', PROVINCES.mush},
    {'mushasha', 'realm', '1444', 'Mushasha', {PROVINCES.basra, }},
    {'Muslim', 'index', { 38 }},
    {'mutapa', 'provincerealm', '', 'Mutapa', PROVINCES.mutapa},
    {'najd', 'provincerealm', '', 'Najd', PROVINCES.najd},
    {'namur', 'province', '', 'Namur', PROVINCES.namur},
    {'nantes', 'province', '', 'Nantes', PROVINCES.nantes},
    {'naples', 'area', 'Naples', {3.96, -6.19}},
    {'naples', 'realm', '1444', 'Naples', {PROVINCES.napoli, PROVINCES.salerno, PROVINCES.bari, }},
    {'napoli', 'province', '', 'Napoli', PROVINCES.napoli},
    {'natal', 'province', '', 'Natal', PROVINCES.natal},
    {'Native Uprising', 'index', { 41 }},
    {'naugardukas', 'province', '1444', 'Naugardukas', PROVINCES.naugardukas},
    {'Naval Activation', 'index', { 16 }},
    {'Naval Battles', 'index', { 28 }},
    {'Naval Capacity', 'index', { 23 }},
    {'Naval Movement', 'index', { 16, 25 }},
    {'Naval Transport', 'index', { 16, 26 }},
    {'navarra', 'provincerealm', '1444', 'Navarra', PROVINCES.navarra},
    {'navarra', 'province', '1618', 'Navarra', PROVINCES.navarra},
    {'naxos', 'provincerealm', '1444', 'Naxos', PROVINCES.naxos},
    {'naxos', 'province', '1618', 'Naxos', PROVINCES.naxos},
    {'Negative Prestige', 'index', { 42 }},
    {'netherlands', 'area', 'Netherlands', {-2.08, 3.11}},
    {'netherlands', 'realm', '1618', 'Netherlands', {PROVINCES.amsterdam, PROVINCES.zeeland, PROVINCES.breda, PROVINCES.gelre, PROVINCES.friesland, PROVINCES.guyana, PROVINCES.moluccas, PROVINCES.timor, }},
    {'neumark', 'province', '1618', 'Neumark', PROVINCES.neumark},
    {'Neutral', 'index', { 4 }},
    {'neva', 'province', '', 'Neva', PROVINCES.neva},
    {'new england', 'province', '', 'New England', PROVINCES.newengland},
    {'new granada', 'province', '', 'New Granada', PROVINCES.newgranada},
    {'nizhny novgorod', 'province', '', 'Nizhny Novgorod', PROVINCES.nizhnynovgorod},
    {'nogai', 'province', '', 'Nogai', PROVINCES.nogai},
    {'nogai', 'realm', '1444', 'Nogai', {PROVINCES.nogai, }},
    {'nogai', 'realm', '1618', 'Nogai', {PROVINCES.majar, }},
    {'Non-Player Realm (NPR)', 'index', { 3, 35 }},
    {'normandie', 'province', '', 'Normandie', PROVINCES.normandie},
    {'norrland', 'area', 'Norrland', {5.56, 11.45}},
    {'north america', 'trade', 'North America', {-14.99, 10.19}},
    {'north sahara', 'area', 'North Sahara', {-1.55, -11.60}},
    {'north sea', 'trade', 'North Sea', {-5.90, 10.04}},
    {'northern anatolia', 'area', 'Northern Anatolia', {12.83, -6.30}},
    {'northern morocco', 'area', 'Northern Morocco', {-9.34, -10.79}},
    {'northumberland', 'province', '', 'Northumberland', PROVINCES.northumberland},
    {'northumbria', 'area', 'Northumbria', {-7.33, 5.27}},
    {'norway', 'realm', '1444', 'Norway', {PROVINCES.akershus, PROVINCES.borgarsysla, PROVINCES.bergenhus, PROVINCES.trondheim, }},
    {'novgorod', 'area', 'Novgorod', {12.28, 6.12}},
    {'novgorod', 'province', '', 'Novgorod', PROVINCES.novgorod},
    {'novgorod', 'realm', '1444', 'Novgorod', {PROVINCES.novgorod, PROVINCES.neva, PROVINCES.ladoga, PROVINCES.olonets, PROVINCES.kargopol, PROVINCES.arkhangelsk, }},
    {'novgorod', 'trade', 'Novgorod', {12.23, 6.83}},
    {'NPR Ally', 'index', { 32 }},
    {'NPR Emperor', 'index', { 45 }},
    {'NPR Invasion', 'index', { 9, 36 }},
    {'NPR Ships', 'index', { 25, 36 }},
    {'NPR Units', 'index', { 25, 36 }},
    {'NPRs on Distant Continents', 'index', { 33, 36 }},
    {'NPRs with Vassals', 'index', { 35 }},
    {'nuremberg', 'realm', '', 'Nuremberg', {PROVINCES.nurnberg, }},
    {'nurnberg', 'province', '', 'Nürnberg', PROVINCES.nurnberg},
    {'nyland', 'province', '', 'Nyland', PROVINCES.nyland},
    {'Occupation', 'index', { 28 }},
    {'Occupied Province', 'index', { 28 }},
    {'Occupy', 'index', { 4 }},
    {'odoyev', 'provincerealm', '1444', 'Odoyev', PROVINCES.odoyev},
    {'odoyev', 'province', '1618', 'Odoyev', PROVINCES.odoyev},
    {'Offensive CtA', 'index', { 13, 32 }},
    {'oirat', 'province', '', 'Oirat', PROVINCES.oirat},
    {'oirat', 'realm', '1444', 'Oirat', {PROVINCES.oirat, PROVINCES.mongolia, }},
    {'okhosk', 'province', '', 'Okhosk', PROVINCES.okhosk},
    {'olomouc', 'province', '', 'Olomouc', PROVINCES.olomouc},
    {'olonets', 'province', '', 'Olonets', PROVINCES.olonets},
    {'Opponent', 'index', { 4 }},
    {'Optional Rule: Available Mercenaries', 'index', { 16 }},
    {'Optional Rule: Lend a Helping Hand', 'index', { 36 }},
    {'Optional Rule: No Surrender!', 'index', { 31 }},
    {'Optional Rule: Randomizing X-Events', 'index', { 39 }},
    {'Optional Rule: Religious Rebels', 'index', { 37 }},
    {'Optional Rule: Revealing More', 'index', { 39 }},
    {'Optional Rule: Secret Negotiations', 'index', { 12 }},
    {'oran', 'province', '', 'Oran', PROVINCES.oran},
    {'orleans', 'province', '', 'Orléans', PROVINCES.orleans},
    {'Orthodox', 'index', { 38 }},
    {'osterbotten', 'province', '', 'Österbotten', PROVINCES.osterbotten},
    {'ostergotland', 'province', '', 'Östergötland', PROVINCES.ostergotland},
    {'osterode', 'province', '1618', 'Osterode', PROVINCES.osterode},
    {'osterreich', 'province', '', 'Österreich', PROVINCES.osterreich},
    {'ostjylland', 'province', '', 'Østjylland', PROVINCES.ostjylland},
    {'ostlandet', 'area', 'Østlandet', {1.68, 9.68}},
    {'ostrobothnia', 'area', 'Ostrobothnia', {10.34, 11.61}},
    {'ottomans', 'realm', '1444', 'Ottomans', {PROVINCES.edirne, PROVINCES.selanik, PROVINCES.yanya, PROVINCES.sofya, PROVINCES.silistre, PROVINCES.hudavendigar, PROVINCES.ankara, PROVINCES.kutahya, PROVINCES.izmir, PROVINCES.mentese, PROVINCES.teke, PROVINCES.amasya, PROVINCES.sivas, }},
    {'Overview', 'index', { 2 }},
    {'Own', 'index', { 4 }},
    {'oxford', 'province', '', 'Oxford', PROVINCES.oxford},
    {'pale', 'province', '', 'Pale', PROVINCES.pale},
    {'palermo', 'province', '', 'Palermo', PROVINCES.palermo},
    {'palestine', 'area', 'Palestine', {15.54, -11.83}},
    {'Papal Actions', 'index', { 46 }},
    {'Papal Controller', 'index', { 46 }},
    {'Papal Curia', 'index', { 45 }},
    {'Papal States', 'index', { 5, 33, 46 }},
    {'papal states', 'realm', '1444', 'Papal States', {PROVINCES.roma, PROVINCES.ancona, PROVINCES.avignon, }},
    {'papal states', 'realm', '1618', 'Papal States', {PROVINCES.roma, PROVINCES.ancona, PROVINCES.ferrara, PROVINCES.avignon, }},
    {'papua', 'province', '', 'Papua', PROVINCES.papua},
    {'paris', 'province', '', 'Paris', PROVINCES.paris},
    {'parma', 'province', '1444', 'Parma', PROVINCES.parma},
    {'parma', 'provincerealm', '1618', 'Parma', PROVINCES.parma},
    {'Partial Victory', 'index', { 29 }},
    {'pasai', 'realm', '1444', 'Pasai', {PROVINCES.aceh, }},
    {'Passing', 'index', { 8 }},
    {'Peace Resolution', 'index', { 9, 29, 44 }},
    {'Peace Terms', 'index', { 30 }},
    {'perm', 'area', 'Perm', {19.53, 6.76}},
    {'perm', 'provincerealm', '1444', 'Perm', PROVINCES.perm},
    {'perm', 'province', '1618', 'Perm', PROVINCES.perm},
    {'pernambuco', 'province', '', 'Pernambuco', PROVINCES.pernambuco},
    {'persia', 'realm', '1618', 'Persia', {PROVINCES.isfahan, PROVINCES.herat, PROVINCES.fars, PROVINCES.tabriz, PROVINCES.yerevan, PROVINCES.tblisi, PROVINCES.shirvan, }},
    {'perth', 'province', '', 'Perth', PROVINCES.perth},
    {'pest', 'province', '', 'Pest', PROVINCES.pest},
    {'pfalz', 'province', '', 'Pfalz', PROVINCES.pfalz},
    {'philippines', 'province', '', 'Philippines', PROVINCES.philippines},
    {'picardie', 'province', '', 'Picardie', PROVINCES.picardie},
    {'piemonte', 'province', '', 'Piemonte', PROVINCES.piemonte},
    {'Pirates', 'index', { 25, 35, 41 }},
    {'pisa', 'province', '', 'Pisa', PROVINCES.pisa},
    {'Player Elimination', 'index', { 46 }},
    {'Player-to-Player Diplomacy', 'index', { 12 }},
    {'Playing an Action Card', 'index', { 18 }},
    {'Playing an Event', 'index', { 8, 12, 40 }},
    {'podole', 'province', '', 'Podole', PROVINCES.podole},
    {'poitou', 'province', '', 'Poitou', PROVINCES.poitou},
    {'poland', 'realm', '1444', 'Poland', {PROVINCES.krakow, PROVINCES.sandomierz, PROVINCES.lublin, PROVINCES.sieradz, PROVINCES.kalisz, PROVINCES.poznan, PROVINCES.lwow, PROVINCES.podole, PROVINCES.suceava, PROVINCES.basarabia, PROVINCES.warszawa, }},
    {'polish lithuanian commonwealth', 'realm', '1618', 'Polish-Lith. Commonwealth', {PROVINCES.warszawa, PROVINCES.lublin, PROVINCES.krakow, PROVINCES.sieradz, PROVINCES.kalisz, PROVINCES.poznan, PROVINCES.kulm, PROVINCES.danzig, PROVINCES.zemaitija, PROVINCES.vilnius, PROVINCES.riga, PROVINCES.livland, PROVINCES.polockas, PROVINCES.minskas, PROVINCES.smolenskas, PROVINCES.cernigovas, PROVINCES.poltava, PROVINCES.kijevas, PROVINCES.podole, PROVINCES.lwow, PROVINCES.voluine, PROVINCES.goldingen, PROVINCES.zaporoze, PROVINCES.edisanas, }},
    {'polockas', 'province', '', 'Polockas', PROVINCES.polockas},
    {'poltava', 'province', '', 'Poltava', PROVINCES.poltava},
    {'pomerania', 'area', 'Pomerania', {3.15, 3.96}},
    {'pomerania', 'realm', '1444', 'Pomerania', {PROVINCES.stettin, PROVINCES.stralsund, }},
    {'pomorye', 'area', 'pomorye', {12.95, 10.91}},
    {'Port', 'index', { 4, 25, 26 }},
    {'porto', 'province', '', 'Porto', PROVINCES.porto},
    {'portugal', 'area', 'Portugal', {-10.99, -6.68}},
    {'portugal', 'realm', '1444', 'Portugal', {PROVINCES.lisboa, PROVINCES.porto, PROVINCES.beira, PROVINCES.madeira, PROVINCES.ceuta, }},
    {'portugal', 'realm', '1618', 'Portugal', {PROVINCES.lisboa, PROVINCES.porto, PROVINCES.beira, PROVINCES.madeira, PROVINCES.ceuta, PROVINCES.tangiers, PROVINCES.pernambuco, PROVINCES.bahia, PROVINCES.riodejaneiro, PROVINCES.goldcoast, PROVINCES.angola, PROVINCES.hormuz, PROVINCES.goa, PROVINCES.malacca, PROVINCES.kilwa, PROVINCES.kongo, }},
    {'potsdam', 'province', '', 'Potsdam', PROVINCES.potsdam},
    {'Power Struggle', 'index', { 43 }},
    {'poznan', 'province', '', 'Poznań', PROVINCES.poznan},
    {'pozsony', 'province', '', 'Pozsony', PROVINCES.pozsony},
    {'praha', 'province', '', 'Praha', PROVINCES.praha},
    {'Prestige Track', 'index', { 4, 42 }},
    {'Protecting Trade', 'index', { 34 }},
    {'Protestant', 'index', { 13, 38, 41 }},
    {'provence', 'province', '', 'Provence', PROVINCES.provence},
    {'provence', 'realm', '1444', 'Provence', {PROVINCES.provence, PROVINCES.anjou, }},
    {'Province', 'index', { 3, 4 }},
    {'prussia', 'area', 'Prussia', {7.56, 4.12}},
    {'pskov', 'provincerealm', '1444', 'Pskov', PROVINCES.pskov},
    {'pskov', 'province', '1618', 'Pskov', PROVINCES.pskov},
    {'qafsah', 'province', '', 'Qafsah', PROVINCES.qafsah},
    {'qahirah', 'province', '', 'Qahirah', PROVINCES.qahirah},
    {'qara qoyunlu', 'realm', '1444', 'Qara Qoyunlu', {PROVINCES.tabriz, PROVINCES.yerevan, PROVINCES.baghdad, PROVINCES.tikrit, PROVINCES.kirkuk, PROVINCES.mosul, PROVINCES.bitlis,  }},
    {'quito', 'province', '', 'Quito', PROVINCES.quito},
    {'qusantinah', 'province', '1618', 'Qusantinah', PROVINCES.qusantinah},
    {'ragusa', 'provincerealm', '', 'Ragusa', PROVINCES.ragusa},
    {'ramazan', 'realm', '1444', 'Ramazan', {PROVINCES.adana, }},
    {'Reactions', 'index', { 13, 19 }},
    {'Realm', 'index', { 3 }},
    {'Rebel Dice', 'index', { 9, 37 }},
    {'Rebel Units', 'index', { 25, 37 }},
    {'Rebellion', 'index', { 37, 41 }},
    {'Rebels', 'index', { 37 }},
    {'Receiving a CtA', 'index', { 32 }},
    {'Recruit Units', 'index', { 17 }},
    {'red ruthenia', 'area', 'Red Ruthenia', {9.83, 0.82}},
    {'Refresh Manpower', 'index', { 10, 23 }},
    {'Refusing a CtA', 'index', { 32 }},
    {'regensburg', 'province', '', 'Regensburg', PROVINCES.regensburg},
    {'Regular Units', 'index', { 24 }},
    {'Religion slot', 'index', { 4 }},
    {'Religion', 'index', { 38 }},
    {'Religious Dissent', 'index', { 9, 38 }},
    {'rennes', 'province', '', 'Rennes', PROVINCES.rennes},
    {'Repair Heavy Ship', 'index', { 24, 26 }},
    {'Replenish Manpower', 'index', { 14 }},
    {'Research Idea', 'index', { 12, 21 }},
    {'Retreat', 'index', { 27, 28 }},
    {'reval', 'province', '', 'Reval', PROVINCES.reval},
    {'Revolutionary Ideology', 'index', { 38 }},
    {'rhineland', 'area', 'Rhineland', {-0.68, -0.22}},
    {'rhodes', 'province', '', 'Rhodes', PROVINCES.rhodes},
    {'riga', 'provincerealm', '1444', 'Riga', PROVINCES.riga},
    {'riga', 'province', '1618', 'Riga', PROVINCES.riga},
    {'rijeka', 'province', '', 'Rijeka', PROVINCES.rijeka},
    {'rio de janeiro', 'province', '', 'Rio de Janeiro', PROVINCES.riodejaneiro},
    {'Roma Cardinal', 'index', { 5, 46 }},
    {'roma', 'province', '', 'Roma', PROVINCES.roma},
    {'royal hungary', 'area', 'Royal Hungary', {5.71, -0.87}},
    {'Royal Marriage', 'index', { 12, 32 }},
    {'rudohori', 'province', '', 'Rudohori', PROVINCES.rudohori},
    {'Ruler', 'index', { 19, 20, 25 }},
    {'rum', 'area', 'Rum', {16.17, -6.14}},
    {'russia', 'realm', '1618', 'Russia', {PROVINCES.moskva, PROVINCES.tver, PROVINCES.odoyev, PROVINCES.ryazan, PROVINCES.tambov, PROVINCES.saratov, PROVINCES.sarai, PROVINCES.astrakhan, PROVINCES.kazan, PROVINCES.murom, PROVINCES.vladimir, PROVINCES.suzdal, PROVINCES.yaroslavl, PROVINCES.nizhnynovgorod, PROVINCES.perm, PROVINCES.viatka, PROVINCES.vologda, PROVINCES.beloozero, PROVINCES.novgorod, PROVINCES.pskov, PROVINCES.ladoga, PROVINCES.olonets, PROVINCES.arkhangelsk, PROVINCES.volga, PROVINCES.ural, PROVINCES.tyumen, PROVINCES.westsiberia, PROVINCES.majar, }},
    {'ryazan', 'provincerealm', '1444', 'Ryazan', PROVINCES.ryazan},
    {'ryazan', 'province', '1618', 'Ryazan', PROVINCES.ryazan},
    {'rzhev', 'province', '1444', 'Rzhev', PROVINCES.rzhev},
    {'saintonge', 'province', '', 'Saintonge', PROVINCES.saintonge},
    {'salamanca', 'province', '', 'Salamanca', PROVINCES.salamanca},
    {'salerno', 'province', '', 'Salerno', PROVINCES.salerno},
    {'salzburg', 'provincerealm', '', 'Salzburg', PROVINCES.salzburg},
    {'samarkand', 'province', '', 'Samarkand', PROVINCES.samarkand},
    {'sandomierz', 'province', '1444', 'Sandomierz', PROVINCES.sandomierz},
    {'sarai', 'province', '', 'Sarai', PROVINCES.sarai},
    {'saratov', 'area', 'Saratov', {18.75, 1.77}},
    {'saratov', 'province', '', 'Saratov', PROVINCES.saratov},
    {'sardenya', 'province', '', 'Sardenya', PROVINCES.sardenya},
    {'savoie', 'province', '', 'Savoie', PROVINCES.savoie},
    {'savoy', 'realm', '1444', 'Savoy', {PROVINCES.savoie, PROVINCES.geneve, PROVINCES.piemonte, }},
    {'savoy', 'realm', '1618', 'Savoy', {PROVINCES.savoie, PROVINCES.piemonte, }},
    {'saxony', 'area', 'Saxony', {2.04, 1.72}},
    {'saxony', 'realm', '', 'Saxony', {PROVINCES.dresden, PROVINCES.wittenberg, PROVINCES.leipzig, }},
    {'saxony', 'trade', 'Saxony', {0.72, 1.10}},
    {'scotland', 'area', 'Scotland', {-8.50, 7.55}},
    {'scotland', 'realm', '', 'Scotland', {PROVINCES.lothian, PROVINCES.ayrshire, PROVINCES.perth, PROVINCES.aberdeen, }},
    {'Sea Zones', 'index', { 4 }},
    {'Secure Desired Succession', 'index', { 31 }},
    {'seine', 'area', 'Seine', {-3.68, 0.29}},
    {'selanik', 'province', '', 'Selanik', PROVINCES.selanik},
    {'Sell Provinces', 'index', { 12 }},
    {'Sending a CtA', 'index', { 13, 32 }},
    {'Sequence of Play', 'index', { 8 }},
    {'serbia albania', 'area', 'Serbia & Albania', {7.13, -4.71}},
    {'serbia', 'realm', '1444', 'Serbia', {PROVINCES.smederevo, PROVINCES.kosovo, }},
    {'Setup', 'index', { 6 }},
    {'sevilla', 'province', '', 'Sevilla', PROVINCES.sevilla},
    {'sevilla', 'trade', 'Sevilla', {-10.45, -9.32}},
    {'Ships Lost at Sea', 'index', { 41 }},
    {'Ships', 'index', { 24 }},
    {'shirvan', 'provincerealm', '1444', 'Shirvan', PROVINCES.shirvan},
    {'shirvan', 'province', '1618', 'Shirvan', PROVINCES.shirvan},
    {'shrewsbury', 'province', '', 'Shrewsbury', PROVINCES.shrewsbury},
    {'siam', 'province', '', 'Siam', PROVINCES.siam},
    {'sicily', 'area', 'Sicily', {3.03, -9.09}},
    {'Siege Strength', 'index', { 24 }},
    {'Siege', 'index', { 16, 28 }},
    {'siena', 'provincerealm', '1444', 'Siena', PROVINCES.siena},
    {'siena', 'province', '1618', 'Siena', PROVINCES.siena},
    {'sieradz', 'province', '', 'Sieradz', PROVINCES.sieradz},
    {'silesia', 'provincerealm', '1444', 'Silesia', PROVINCES.silesia},
    {'silesia', 'province', '1618', 'Silesia', PROVINCES.silesia},
    {'silistre', 'province', '', 'Silistre', PROVINCES.silistre},
    {'sivas', 'province', '1444', 'Sivas', PROVINCES.sivas},
    {'sjaelland fyn', 'area', 'Sjælland & Fyn', {1.32, 5.76}},
    {'Slaves', 'index', { 34 }},
    {'slesvig', 'province', '', 'Slesvig', PROVINCES.slesvig},
    {'smederevo', 'province', '1444', 'Smederevo', PROVINCES.smederevo},
    {'smolenskas', 'province', '', 'Smolenskas', PROVINCES.smolenskas},
    {'sofya', 'province', '', 'Sofya', PROVINCES.sofya},
    {'songhai', 'provincerealm', '1444', 'Songhai', PROVINCES.songhai},
    {'songhai', 'province', '1618', 'Songhai', PROVINCES.songhai},
    {'sopron', 'province', '', 'Sopron', PROVINCES.sopron},
    {'sousse', 'province', '', 'Sousse', PROVINCES.sousse},
    {'south america', 'trade', 'South America', {-17.30, 5.78}},
    {'south sumatra', 'province', '', 'South Sumatra', PROVINCES.southsumatra},
    {'southern australia', 'province', '', 'Southern Australia', PROVINCES.southernaustralia},
    {'southern morocco', 'area', 'Southern Morocco', {-7.57, -11.80}},
    {'Spread of Religious Ideas', 'index', { 41 }},
    {'Spread of the Revolution', 'index', { 41 }},
    {'Spy Network', 'index', { 15, 19, 32 }},
    {'st gallen', 'province', '', 'St. Gallen', PROVINCES.stgallen},
    {'Stability', 'index', { 14, 20 }},
    {'State Religion', 'index', { 38 }},
    {'steiermark', 'province', '', 'Steiermark', PROVINCES.steiermark},
    {'stettin', 'province', '', 'Stettin', PROVINCES.stettin},
    {'stettin', 'realm', '1618', 'Stettin', {PROVINCES.stettin, PROVINCES.koslin, }},
    {'stockholm', 'province', '', 'Stockholm', PROVINCES.stockholm},
    {'stralsund', 'province', '', 'Stralsund', PROVINCES.stralsund},
    {'Subjugate', 'index', { 32, 33 }},
    {'Subjugation', 'index', { 32, 33, 44 }},
    {'suceava', 'province', '', 'Suceava', PROVINCES.suceava},
    {'sundgau', 'province', '', 'Sundgau', PROVINCES.sundgau},
    {'Suppress Unrest', 'index', { 17 }},
    {'Surrender', 'index', { 30 }},
    {'sus', 'province', '', 'Sus', PROVINCES.sus},
    {'suzdal', 'province', '', 'Suzdal', PROVINCES.suzdal},
    {'svealand', 'area', 'Svealand', {3.91, 8.53}},
    {'sweden', 'realm', '1444', 'Sweden', {PROVINCES.stockholm, PROVINCES.bergslagen, PROVINCES.ostergotland, PROVINCES.halsingland, PROVINCES.osterbotten, PROVINCES.abo, PROVINCES.nyland, }},
    {'sweden', 'realm', '1618', 'Sweden', {PROVINCES.stockholm, PROVINCES.bergslagen, PROVINCES.ostergotland, PROVINCES.halsingland, PROVINCES.osterbotten, PROVINCES.abo, PROVINCES.nyland, PROVINCES.neva, PROVINCES.reval, }},
    {'switzerland', 'area', 'Switzerland', {-0.35, -1.95}},
    {'switzerland', 'realm', '1444', 'Switzerland', {PROVINCES.bern, PROVINCES.stgallen, }},
    {'switzerland', 'realm', '1618', 'Switzerland', {PROVINCES.bern, PROVINCES.geneve, PROVINCES.stgallen, }},
    {'syria', 'area', 'Syria', {15.73, -9.70}},
    {'szabolcs', 'province', '', 'Szabolcs', PROVINCES.szabolcs},
    {'szepes', 'province', '', 'Szepes', PROVINCES.szepes},
    {'tabriz', 'province', '', 'Tabriz', PROVINCES.tabriz},
    {'tafilalt', 'province', '', 'Tafilalt', PROVINCES.tafilalt},
    {'Take/ Repay Loan', 'index', { 14 }},
    {'Taking a Turn', 'index', { 8 }},
    {'Taking an Event', 'index', { 8, 12 }},
    {'tambov', 'province', '', 'Tambov', PROVINCES.tambov},
    {'tangiers', 'province', '', 'Tangiers', PROVINCES.tangiers},
    {'tarabulus', 'province', '', 'Tarabulus', PROVINCES.tarabulus},
    {'taungu', 'realm', '1444', 'Taungu', {PROVINCES.burma, }},
    {'Tax Income', 'index', { 10, 20, 21 }},
    {'Tax Value', 'index', { 4 }},
    {'tblisi', 'province', '', 'Tblisi', PROVINCES.tblisi},
    {'teke', 'province', '', 'Teke', PROVINCES.teke},
    {'terek', 'province', '', 'Terek', PROVINCES.terek},
    {'Terms', 'index', { 4 }},
    {'Territory', 'index', { 4 }},
    {'teutonic order', 'realm', '1444', 'Teutonic Order', {PROVINCES.marienburg, PROVINCES.konigsberg, PROVINCES.danzig, PROVINCES.kulm, }},
    {'the palatinate', 'realm', '', 'The Palatinate', {PROVINCES.pfalz, }},
    {'The Reformation Spreads', 'index', { 38 }},
    {'tikrit', 'province', '', 'Tikrit', PROVINCES.tikrit},
    {'timbuktu', 'provincerealm', '', 'Timbuktu', PROVINCES.timbuktu},
    {'timor', 'province', '', 'Timor', PROVINCES.timor},
    {'timurids', 'realm', '1444', 'Timurids', {PROVINCES.herat, PROVINCES.balkh, PROVINCES.fars, PROVINCES.khiva, PROVINCES.samarkand, }},
    {'tirgoviste', 'province', '', 'Tîrgoviste', PROVINCES.tirgoviste},
    {'tirol', 'area', 'Tirol', {1.73, -1.55}},
    {'tirol', 'province', '', 'Tirol', PROVINCES.tirol},
    {'tlemcen', 'province', '', 'Tlemcen', PROVINCES.tlemcen},
    {'tlemcen', 'realm', '1444', 'Tlemcen', {PROVINCES.tlemcen, PROVINCES.oran, }},
    {'torda', 'province', '', 'Torda', PROVINCES.torda},
    {'Total Victory', 'index', { 29 }},
    {'toulouse', 'province', '', 'Toulouse', PROVINCES.toulouse},
    {'Town Track', 'index', { 6, 21 }},
    {'Town', 'index', { 3, 21 }},
    {'Trade Card', 'index', { 34 }},
    {'Trade Income', 'index', { 35 }},
    {'Trade Node', 'index', { 34 }},
    {'Trade Power', 'index', { 35 }},
    {'Trade Protection slot', 'index', { 4, 34 }},
    {'Trade', 'index', { 15, 34 }},
    {'transcaucasia', 'area', 'Transcaucasia', {20.19, -5.80}},
    {'transoxiana', 'realm', '1444', 'Transoxiana', {PROVINCES.samarkand, PROVINCES.khiva, }},
    {'transylvania', 'area', 'Transylvania', {8.91, -1.60}},
    {'transylvania', 'realm', '1618', 'Transylvania', {PROVINCES.torda, PROVINCES.hunyad, }},
    {'trebizond', 'provincerealm', '1444', 'Trebizond', PROVINCES.trebizond},
    {'trebizond', 'province', '1618', 'Trebizond', PROVINCES.trebizond},
    {'treviso', 'province', '', 'Treviso', PROVINCES.treviso},
    {'trier', 'provincerealm', '', 'Trier', PROVINCES.trier},
    {'tripoli', 'province', '1444', 'Tripoli', PROVINCES.tripoli},
    {'tripoli', 'provincerealm', '1618', 'Tripoli', PROVINCES.tripoli},
    {'tripolitania', 'area', 'Tripolitania', {3.85, -12.33}},
    {'trondelag', 'area', 'Trøndelag', {2.78, 11.98}},
    {'trondheim', 'province', '', 'Trondheim', PROVINCES.trondheim},
    {'tunis', 'province', '', 'Tunis', PROVINCES.tunis},
    {'tunis', 'realm', '1444', 'Tunis', {PROVINCES.tunis, PROVINCES.sousse, PROVINCES.bizerte, PROVINCES.kabylia, PROVINCES.mitidja, PROVINCES.tripoli, }},
    {'tunis', 'realm', '1618', 'Tunis', {PROVINCES.tunis, PROVINCES.sousse, PROVINCES.bizerte, PROVINCES.qafsah, }},
    {'tunisia', 'area', 'Tunisia', {0.17, -10.21}},
    {'tuscany', 'realm', '1618', 'Tuscany', {PROVINCES.firenze, PROVINCES.pisa, PROVINCES.siena, }},
    {'tver', 'provincerealm', '1444', 'Tver', PROVINCES.tver},
    {'tver', 'province', '1618', 'Tver', PROVINCES.tver},
    {'tyrone', 'realm', '1444', 'Tyrone', {PROVINCES.ulaidh, }},
    {'tyumen', 'province', '', 'Tyumen', PROVINCES.tyumen},
    {'ulaidh', 'province', '', 'Ulaidh', PROVINCES.ulaidh},
    {'ulm', 'provincerealm', '', 'Ulm', PROVINCES.ulm},
    {'Uncontested Papal Controller', 'index', { 46 }},
    {'Undock', 'index', { 16, 25 }},
    {'Units', 'index', { 24 }},
    {'Unlimited tokens', 'index', { 2 }},
    {'Unpicked Event', 'index', { 8, 40 }},
    {'Unrest', 'index', { 37, 41 }},
    {'Upcoming Power Struggle', 'index', { 43 }},
    {'upper egypt', 'province', '', 'Upper Egypt', PROVINCES.upperegypt},
    {'ural', 'province', '', 'Ural', PROVINCES.ural},
    {'urfa', 'province', '', 'Urfa', PROVINCES.urfa},
    {'uzbek', 'realm', '1444', 'Uzbek', {PROVINCES.tyumen, PROVINCES.kazakhstan, }},
    {'valencia', 'province', '', 'València', PROVINCES.valencia},
    {'Vassal Realm', 'index', { 4 }},
    {'Vassalization', 'index', { 31, 33 }},
    {'Vassals', 'index', { 33 }},
    {'venetia', 'area', 'Venetia', {2.11, -2.47}},
    {'venezia', 'province', '', 'Venezia', PROVINCES.venezia},
    {'venice', 'realm', '1444', 'Venice', {PROVINCES.venezia, PROVINCES.treviso, PROVINCES.verona, PROVINCES.brescia, PROVINCES.zara, PROVINCES.creta, PROVINCES.naxos }},
    {'venice', 'realm', '1618', 'Venice', {PROVINCES.venezia, PROVINCES.treviso, PROVINCES.verona, PROVINCES.brescia, PROVINCES.zara, PROVINCES.creta, }},
    {'verona', 'province', '', 'Verona', PROVINCES.verona},
    {'vestjylland', 'province', '', 'Vestjylland', PROVINCES.vestjylland},
    {'vestlandet', 'area', 'Vestlandet', {-0.07, 10.41}},
    {'viatka', 'province', '', 'Viatka', PROVINCES.viatka},
    {'Victory/Peace Conditions', 'index', { 29 }},
    {'vijayanagar', 'realm', '1444', 'Vijayanagar', {PROVINCES.deccan, PROVINCES.coromandel, }},
    {'vijayanagar', 'realm', '1618', 'Vijayanagar', {PROVINCES.coromandel, }},
    {'vilnius', 'province', '', 'Vilnius', PROVINCES.vilnius},
    {'virginia', 'province', '', 'Virginia', PROVINCES.virginia},
    {'vladimir', 'province', '', 'Vladimir', PROVINCES.vladimir},
    {'vogelkop', 'province', '', 'Vogelkop', PROVINCES.vogelkop},
    {'volga', 'province', '', 'Volga', PROVINCES.volga},
    {'vologda', 'area', 'Vologda', {16.89, 7.97}},
    {'vologda', 'province', '', 'Vologda', PROVINCES.vologda},
    {'voluine', 'province', '', 'Voluine', PROVINCES.voluine},
    {'wales wessex', 'area', 'Wales & Wessex', {-7.54, 3.12}},
    {'wales', 'province', '', 'Wales', PROVINCES.wales},
    {'wallachia bulgaria', 'area', 'Wallachia & Bulgaria', {10.14, -4.26}},
    {'wallachia', 'realm', '', 'Wallachia', {PROVINCES.tirgoviste, PROVINCES.buzau, }},
    {'Warfare vs. NPRs', 'index', { 36 }},
    {'warsangali', 'realm', '1618', 'Warsangali', {PROVINCES.adal, }},
    {'warszawa', 'province', '', 'Warszawa', PROVINCES.warszawa},
    {'wessex', 'province', '', 'Wessex', PROVINCES.wessex},
    {'west siberia', 'province', '', 'West Siberia', PROVINCES.westsiberia},
    {'western australia', 'province', '', 'Western Australia', PROVINCES.westernaustralia},
    {'western ukraine', 'area', 'Western Ukraine', {12.15, 0.10}},
    {'westphalia', 'area', 'Westphalia', {-0.40, 1.81}},
    {'White Peace', 'index', { 30 }},
    {'white ruthenia', 'area', 'White Ruthenia', {12.58, 3.10}},
    {'wielkopolska', 'area', 'Wielkopolska', {5.60, 1.90}},
    {'wien', 'province', '', 'Wien', PROVINCES.wien},
    {'wien', 'trade', 'Wien', {3.42, -0.63}},
    {'Winning a Land Battle', 'index', { 27 }},
    {'Winning a Naval Battle', 'index', { 28 }},
    {'Winning a War', 'index', { 29, 30 }},
    {'Winning the Game', 'index', { 2, 11 }},
    {'wittenberg', 'province', '', 'Wittenberg', PROVINCES.wittenberg},
    {'wolgast', 'realm', '1618', 'Wolgast', {PROVINCES.stralsund, }},
    {'Wounded Generals', 'index', { 27 }},
    {'xian', 'province', '', 'Xi’an', PROVINCES.xian},
    {'yanya', 'province', '', 'Yanya', PROVINCES.yanya},
    {'yarkand', 'province', '1618', 'Yarkand', PROVINCES.yarkand},
    {'yarkand', 'realm', '1618', 'Yarkand', {PROVINCES.yarkand, }},
    {'yaroslavl', 'provincerealm', '1444', 'Yaroslavl', PROVINCES.yaroslavl},
    {'yaroslavl', 'province', '1618', 'Yaroslavl', PROVINCES.yaroslavl},
    {'yedi shkul', 'province', '1444', 'Yedi Shkul', PROVINCES.yedishkul},
    {'yemen', 'provincerealm', '1444', 'Yemen', PROVINCES.yemen},
    {'yemen', 'province', '1618', 'Yemen', PROVINCES.yemen},
    {'yerevan', 'province', '', 'Yerevan', PROVINCES.yerevan},
    {'york', 'province', '', 'York', PROVINCES.york},
    {'zagreb', 'province', '', 'Zagreb', PROVINCES.zagreb},
    {'zaporoze', 'province', '1618', 'Zaporoze', PROVINCES.zaporoze},
    {'zaporozhie', 'realm', '1618', 'Zaporozhie', {PROVINCES.zaporoze, PROVINCES.edisanas, }},
    {'zara', 'province', '', 'Zara', PROVINCES.zara},
    {'zaragoza', 'province', '', 'Zaragoza', PROVINCES.zaragoza},
    {'zeeland', 'province', '', 'Zeeland', PROVINCES.zeeland},
    {'zemaitija', 'province', '', 'Žemaitija', PROVINCES.zemaitija},
}
