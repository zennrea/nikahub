--[[ Protected by Lua Guard ]]

( function (...) local _lllIlIIIII = 0xCA6 local _llIIIllIlI = 0x58C local _IIllllIIll = true local _llIIIIIlll = true do do do do do do do do do local _IllIlIIIlI do if _G.nikahub then return end
 _G.nikahub = true cloneref = cloneref or function (inputValue) return inputValue end
 do local _lIlIIlllll = cloneref createInstance = Instance.new createTweenInfo = TweenInfo.new createUDim = UDim.new createUDim2 = UDim2.new fromOffset = UDim2.fromOffset createVector2 = Vector2.new createVector3 = Vector3.new createCFrame = CFrame.new colorFromRGB = Color3.fromRGB formatString = string.format clampValue = math.clamp floorValue = math.floor maxValue = math.max minValue = math.min arcSin = math.asin toRadians = math.rad randomValue = math.random bitwiseXor = bit32.bxor clearTable = table.clear concatTable = table.concat createTable = table.create findInTable = table.find insertIntoTable = table.insert stringByte = string.byte stringChar = string.char spawnTask = task.spawn delayTask = task.delay deferTask = task.defer waitTask = task.wait globalEnvironment = getgenv() ReplicatedStorage = _lIlIIlllll(game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101")) UserInputService = _lIlIIlllll(game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101")) httpService = _lIlIIlllll(game:GetService("\072\116\116\112\083\101\114\118\105\099\101")) local _IllIlIIIll = _lIlIIlllll(game:GetService("\082\117\110\083\101\114\118\105\099\101")) TweenService = _lIlIIlllll(game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101")) Players = _lIlIIlllll(game:GetService("\080\108\097\121\101\114\115")) Debris = _lIlIIlllll(game:GetService("\068\101\098\114\105\115")) local _IlIIIIllII = _lIlIIlllll(game:GetService("\083\116\097\116\115")) Workspace = _lIlIIlllll(game:GetService("\087\111\114\107\115\112\097\099\101")) createTween = TweenService.Create repeat waitTask() until game:IsLoaded() localPlayer = Players.LocalPlayer name = localPlayer.Name currentCamera = Workspace.CurrentCamera Workspace:GetPropertyChangedSignal("\067\117\114\114\101\110\116\067\097\109\101\114\097"):Connect( function () currentCamera = Workspace.CurrentCamera end
 ) remotes = ReplicatedStorage:WaitForChild("\082\101\109\111\116\101\115", 0xA) packages = ReplicatedStorage.Packages controllers = ReplicatedStorage.Controllers balls = Workspace.Balls alive = Workspace.Alive runtime = Workspace.Runtime dataPing = _IlIIIIllII.Network.ServerStatsItem["\068\097\116\097\032\080\105\110\103"] heartbeat = _IllIlIIIll.Heartbeat preSimulation = _IllIlIIIll.PreSimulation postSimulation = _IllIlIIIll.PostSimulation end
 end
 swordEventConnections = { parry_connections = { }, fire_sword_connections = { }, play_parry = nil, sword_fn = nil, } if remotes and type(getconnections) == "\102\117\110\099\116\105\111\110" then do local _lIIIIIIIlI = remotes:WaitForChild("\080\097\114\114\121\083\117\099\099\101\115\115\065\108\108", 0xA) if _lIIIIIIIlI then local _IllIIlIlIl, _IIIIIlIIII = pcall(getconnections, _lIIIIIIIlI.OnClientEvent) if _IllIIlIlIl and type(_IIIIIlIIII) == "\116\097\098\108\101" then for _, _lIIIlllIlI in _IIIIIlIIII, nil, nil do do local _llIlIlIIII, _IlIIllllIl = pcall( function () return _lIIIlllIlI.Function end
 ) if _llIlIlIIII and type(_IlIIllllIl) == "\102\117\110\099\116\105\111\110" then insertIntoTable(swordEventConnections.parry_connections, _lIIIlllIlI) swordEventConnections.play_parry = _IlIIllllIl end
 end
 end
 end
 end
 end
 local _IllIIlIlIl = remotes:WaitForChild("\070\105\114\101\083\119\111\114\100\073\110\102\111", 0xA) if _IllIIlIlIl then local _IIIIIlIIII, _lIIIlllIlI = pcall(getconnections, _IllIIlIlIl.OnClientEvent) if _IIIIIlIIII and type(_lIIIlllIlI) == "\116\097\098\108\101" then for _, _llIlIlIIII in _lIIIlllIlI, nil, nil do local _IlIIllllIl, _llIIllllIl = pcall( function () return _llIlIlIIII.Function end
 ) if _IlIIllllIl and type(_llIIllllIl) == "\102\117\110\099\116\105\111\110" then insertIntoTable(swordEventConnections.fire_sword_connections, _llIlIlIIII) swordEventConnections.sword_fn = _llIIllllIl end
 end
 end
 end
 end
 configStorage = { folder = "\110\105\107\097", } configStorage.storage_ok = type(readfile) == "\102\117\110\099\116\105\111\110" and type(writefile) == "\102\117\110\099\116\105\111\110" configStorage.last_saved = { } configStorage.has_saved = false configStorage.defaults = { _IIlIIlIIIl = 0x64, spam_threshold = 0x3, curve_keybind = false, manual_notify = false, curve_notify = false, curve_method = "\099\097\109\101\114\097", manual_spam = "\069", mobile_triggerbot_button = false, mobile_manual_spam_button = false, ability_esp = false, auto_parry = false, ball_debug = false, auto_spam = false, random_target = false, unlock_all = false, last_equipped_sword = "", last_equipped_explosion = "", favorite_swords = { }, favorite_explosions = { }, deleted_swords = { }, deleted_explosions = { }, fflag_profile = "\100\101\102\097\117\108\116", fflag_json = "", fflag_auto_load = false, } configStorage.path = configStorage.folder .. "\047\099\111\110\102\105\103\046\106\115\111\110" configStorage.fflag_folder = configStorage.folder .. "\047\102\102\108\097\103\115" configStorage.trim = function (inputValue) return tostring(inputValue or ""):match("\094\037\115\042\040\046\045\041\037\115\042\036") end
 configStorage.ensure_folder = function () local _IllIIlIlIl = "\102\117\110\099\116\105\111\110" if type(makefolder) ~= _IllIIlIlIl then return end
 local _IIIIIlIIII = "\102\117\110\099\116\105\111\110" local _lIlIlllllI = false if type(isfolder) == _IIIIIlIIII then local _lIIIlllIlI _lIIIlllIlI, _lIlIlllllI = pcall(isfolder, configStorage.folder) _lIlIlllllI = _lIIIlllIlI and _lIlIlllllI end
 if not _lIlIlllllI then pcall(makefolder, configStorage.folder) end
 end
 configStorage.ensure_fflag_folder = function () configStorage.ensure_folder() if type(makefolder) ~= "\102\117\110\099\116\105\111\110" then return end
 local _IllIIlIlIl = "\102\117\110\099\116\105\111\110" local _lIlIlllllI = false if type(isfolder) == _IllIIlIlIl then local _IIIIIlIIII _IIIIIlIIII, _lIlIlllllI = pcall(isfolder, configStorage.fflag_folder) _lIlIlllllI = _IIIIIlIIII and _lIlIlllllI end
 if not _lIlIlllllI then pcall(makefolder, configStorage.fflag_folder) end
 end
 configStorage.copy = function (inputValue) local _IllIIlIlIl = "\116\097\098\108\101" if type(inputValue) ~= _IllIIlIlIl then return inputValue end
 local _lllIlIIlIl = { } for k, _IIIIIlIIII in inputValue, nil, nil do _lllIlIIlIl[k] = configStorage.copy(_IIIIIlIIII) end
 return _lllIlIIlIl end
 configStorage.equal = function (inputValue, secondaryInput) if inputValue == secondaryInput then return true end
 local _IllIIlIlIl = "\116\097\098\108\101" if type(inputValue) ~= _IllIIlIlIl or type(secondaryInput) ~= "\116\097\098\108\101" then return false end
 for k, _IIIIIlIIII in inputValue, nil, nil do local _lIIIlllIlI = "\116\097\098\108\101" if type(_IIIIIlIIII) == _lIIIlllIlI then if not configStorage.equal(_IIIIIlIIII, secondaryInput[k]) then return false end
 continue end
 if secondaryInput[k] ~= _IIIIIlIIII then return false end
 end
 for k in secondaryInput, nil, nil do if inputValue[k] == nil then return false end
 end
 return true end
 configStorage.valid_key = function (inputValue) if type(inputValue) ~= "\115\116\114\105\110\103" then return false end
 local _IllIIlIlIl, _IIIIIlIIII = pcall( function () return Enum.KeyCode[inputValue] end
 ) return _IllIIlIlIl and _IIIIIlIIII ~= nil end
 curveMethods = { "\099\097\109\101\114\097", "\100\111\116", "\098\097\099\107\119\097\114\100\115", "\115\108\111\119", "\114\097\110\100\111\109", } configStorage.normalize = function (inputValue) local _lllIlIIlIl = { } for k, _IllIIlIlIl in configStorage.defaults, nil, nil do local _lIlIlllllI = type(inputValue) == "\116\097\098\108\101" and inputValue[k] or nil local _IIIIIlIIII = "\116\097\098\108\101" if type(_IllIIlIlIl) == _IIIIIlIIII then _lllIlIIlIl[k] = type(_lIlIlllllI) == "\116\097\098\108\101" and configStorage.copy(_lIlIlllllI) or configStorage.copy(_IllIIlIlIl) else _lllIlIIlIl[k] = type(_lIlIlllllI) == type(_IllIIlIlIl) and _lIlIlllllI or _IllIIlIlIl end
 end
 _lllIlIIlIl.accuracy = clampValue(floorValue(_lllIlIIlIl.accuracy + 0.5), 0x1, 0x64) _lllIlIIlIl.spam_threshold = clampValue(floorValue(_lllIlIIlIl.spam_threshold + 0.5), 0x1, 0x3) if not findInTable(curveMethods, _lllIlIIlIl.curve_method) then _lllIlIIlIl.curve_method = configStorage.defaults.curve_method end
 if not configStorage.valid_key(_lllIlIIlIl.manual_spam) then _lllIlIIlIl.manual_spam = configStorage.defaults.manual_spam end
 _lllIlIIlIl.fflag_profile = configStorage.trim(_lllIlIIlIl.fflag_profile) if _lllIlIIlIl.fflag_profile == "" then _lllIlIIlIl.fflag_profile = configStorage.defaults.fflag_profile end
 return _lllIlIIlIl end
 do local _IllllIIIIl = nil if configStorage.storage_ok then configStorage.ensure_folder() pcall( function () _IllllIIIIl = httpService:JSONDecode(readfile(configStorage.path)) end
 ) end
 _G.config = configStorage.normalize(_IllllIIIIl) end
 config = _G.config configStorage.changed = function () if not configStorage.has_saved then return true end
 for k in configStorage.defaults, nil, nil do local _IllIIlIlIl = configStorage.last_saved[k] local _IIIIIlIIII = config[k] if type(_IllIIlIlIl) == "\116\097\098\108\101" or type(_IIIIIlIIII) == "\116\097\098\108\101" then if not configStorage.equal(_IllIIlIlIl, _IIIIIlIIII) then return true end
 continue end
 if _IllIIlIlIl ~= _IIIIIlIIII then return true end
 end
 return false end
 configStorage.save = function () if not ( not configStorage.storage_ok or not configStorage.changed()) then local _lllIlIIlIl = { } for k, _IllIIlIlIl in configStorage.defaults, nil, nil do local _IIIIIlIIII = config[k] if type(_IllIIlIlIl) == "\116\097\098\108\101" then _lllIlIIlIl[k] = type(_IIIIIlIIII) == "\116\097\098\108\101" and configStorage.copy(_IIIIIlIIII) or configStorage.copy(_IllIIlIlIl) else _lllIlIIlIl[k] = type(_IIIIIlIIII) == type(_IllIIlIlIl) and _IIIIIlIIII or _IllIIlIlIl end
 end
 local _IllIIlIlIl, _IIIIIlIIII = pcall( function () return httpService:JSONEncode(_lllIlIIlIl) end
 ) if not _IllIIlIlIl then return end
 configStorage.ensure_folder() if not pcall(writefile, configStorage.path, _IIIIIlIIII) then return end
 for k in configStorage.defaults, nil, nil do local _lIIIlllIlI = _lllIlIIlIl[k] configStorage.last_saved[k] = type(_lIIIlllIlI) == "\116\097\098\108\101" and configStorage.copy(_lIIIlllIlI) or _lIIIlllIlI end
 configStorage.has_saved = true return end
 if not (_lllIlIIIII <= 0xC9B) then return end
 while true do end
 end
 fflagProfiles = { dropdown = nil, path = function (inputValue) local _IllIIlIlIl = configStorage.trim(inputValue) if _IllIIlIlIl == "" then return nil, "\112\114\111\102\105\108\101\032\110\097\109\101\032\105\115\032\101\109\112\116\121" end
 local _IIIlIIllIl = _IllIIlIlIl:gsub("\091\060\062\058\092\034\047\092\092\124\037\063\037\042\037\099\093", "\095"):sub(0x1, 0x40) return configStorage.fflag_folder .. "\047" .. _IIIlIIllIl .. "\046\106\115\111\110", nil, _IIIlIIllIl end
 , decode = function (inputValue) if type(inputValue) ~= "\115\116\114\105\110\103" or configStorage.trim(inputValue) == "" then return nil, "\102\102\108\097\103\115\032\106\115\111\110\032\105\115\032\101\109\112\116\121" end
 local _IllIIlIlIl, _IIIIIlIIII = pcall( function () return httpService:JSONDecode(inputValue) end
 ) if not _IllIIlIlIl or type(_IIIIIlIIII) ~= "\116\097\098\108\101" then return nil, "\105\110\118\097\108\105\100\032\102\102\108\097\103\115\032\106\115\111\110" end
 local _lllIlIIlIl = { } local _lIIIlllIlI = 0x0 for k, _llIlIlIIII in _IIIIIlIIII, nil, nil do local _IlIIllllIl = "\115\116\114\105\110\103" if type(k) ~= _IlIIllllIl or configStorage.trim(k) == "" then return nil, "\101\118\101\114\121\032\102\102\108\097\103\032\110\101\101\100\115\032\097\032\118\097\108\105\100\032\115\116\114\105\110\103\032\110\097\109\101" end
 local _llIIllllIl = "\115\116\114\105\110\103" if type(_llIlIlIIII) ~= _llIIllllIl and type(_llIlIlIIII) ~= "\110\117\109\098\101\114" and type(_llIlIlIIII) ~= "\098\111\111\108\101\097\110" then return nil, "\102\102\108\097\103\032\118\097\108\117\101\115\032\109\117\115\116\032\098\101\032\115\116\114\105\110\103\115\044\032\110\117\109\098\101\114\115\044\032\111\114\032\098\111\111\108\101\097\110\115" end
 _lllIlIIlIl[k] = tostring(_llIlIlIIII) _lIIIlllIlI = _lIIIlllIlI + 0x1 end
 if _lIIIlllIlI == 0x0 then return nil, "\102\102\108\097\103\115\032\106\115\111\110\032\104\097\115\032\110\111\032\102\108\097\103\115" end
 return _lllIlIIlIl, nil, _lIIIlllIlI end
 , apply = function (inputValue) if type(setfflag) ~= "\102\117\110\099\116\105\111\110" then return false, "\115\101\116\102\102\108\097\103\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\101\120\101\099\117\116\111\114" end
 local _IllIIlIlIl, _IIIIIlIIII, _lIIIlllIlI = fflagProfiles.decode(inputValue) if not _IllIIlIlIl then return false, _IIIIIlIIII end
 local _lllIlIIlIl = { } for k, _llIlIlIIII in _IllIIlIlIl, nil, nil do if not pcall(setfflag, k, _llIlIlIIII) then insertIntoTable(_lllIlIIlIl, k) end
 end
 if #_lllIlIIlIl > 0x0 then table.sort(_lllIlIIlIl) return false, formatString("\102\097\105\108\101\100\032\116\111\032\097\112\112\108\121\032\037\100\047\037\100\032\102\102\108\097\103\115\058\032\037\115", #_lllIlIIlIl, _lIIIlllIlI, concatTable(_lllIlIIlIl, "\044\032")) end
 return true, formatString("\097\112\112\108\105\101\100\032\037\100\032\102\102\108\097\103\115", _lIIIlllIlI) end
 , save_profile = function (inputValue, secondaryInput) if not configStorage.storage_ok then return false, "\102\105\108\101\032\115\116\111\114\097\103\101\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101" end
 local _IllIIlIlIl, _IIIIIlIIII = fflagProfiles.decode(secondaryInput) if not _IllIIlIlIl then if true then return false, _IIIIIlIIII end
 while true do end
 end
 local _lIIIlllIlI, _llIlIlIIII, _IlIIllllIl = fflagProfiles.path(inputValue) if not _lIIIlllIlI then return false, _llIlIlIIII end
 local _llIIllllIl, encodedValue = pcall( function () return httpService:JSONEncode(_IllIIlIlIl) end
 ) if not _llIIllllIl then return false, "\099\111\117\108\100\032\110\111\116\032\101\110\099\111\100\101\032\116\104\101\032\102\102\108\097\103\115\032\112\114\111\102\105\108\101" end
 configStorage.ensure_fflag_folder() if not pcall(writefile, _lIIIlllIlI, encodedValue) then return false, "\099\111\117\108\100\032\110\111\116\032\115\097\118\101\032\116\104\101\032\102\102\108\097\103\115\032\112\114\111\102\105\108\101" end
 return true, encodedValue, _IlIIllllIl end
 , load_profile = function (inputValue) if not configStorage.storage_ok then return false, "\102\105\108\101\032\115\116\111\114\097\103\101\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101" end
 local _IllIIlIlIl, _IIIIIlIIII = fflagProfiles.path(inputValue) if not _IllIIlIlIl then return false, _IIIIIlIIII end
 local _lIIIlllIlI, _llIlIlIIII = pcall(readfile, _IllIIlIlIl) if not _lIIIlllIlI or type(_llIlIlIIII) ~= "\115\116\114\105\110\103" then return false, "\102\102\108\097\103\115\032\112\114\111\102\105\108\101\032\119\097\115\032\110\111\116\032\102\111\117\110\100" end
 local _IlIIllllIl, _llIIllllIl = fflagProfiles.decode(_llIlIlIIII) if not _IlIIllllIl then return false, _llIIllllIl end
 return true, _llIlIlIIII end
 , list = function () local _IllIIlIlIl = "\102\117\110\099\116\105\111\110" if type(listfiles) ~= _IllIIlIlIl then return nil, "\108\105\115\116\102\105\108\101\115\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\101\120\101\099\117\116\111\114" end
 configStorage.ensure_fflag_folder() local _IIIIIlIIII, _lIIIlllIlI = pcall(listfiles, configStorage.fflag_folder) if not _IIIIIlIIII or type(_lIIIlllIlI) ~= "\116\097\098\108\101" then return nil, "\099\111\117\108\100\032\110\111\116\032\108\105\115\116\032\116\104\101\032\102\102\108\097\103\115\032\112\114\111\102\105\108\101\115" end
 local _lllIlIIlIl = { } local _lIIlIIlIll = { } for _, _llIlIlIIII in _lIIIlllIlI, nil, nil do local _IIIlIlIIII = tostring(_llIlIlIIII):gsub("\092\092", "\047"):match("\040\091\094\047\093\043\041\037\046\106\115\111\110\036") if _IIIlIlIIII and not _lIIlIIlIll[_IIIlIlIIII] then _lIIlIIlIll[_IIIlIlIIII] = true insertIntoTable(_lllIlIIlIl, _IIIlIlIIII) end
 end
 table.sort(_lllIlIIlIl, function (inputValue, secondaryInput) return inputValue:lower() < secondaryInput:lower() end
 ) return _lllIlIIlIl end
 , _IlIlIlIlII = function (inputValue) if type(delfile) ~= "\102\117\110\099\116\105\111\110" then return false, "\100\101\108\102\105\108\101\032\105\115\032\117\110\097\118\097\105\108\097\098\108\101\032\105\110\032\116\104\105\115\032\101\120\101\099\117\116\111\114" end
 local _IllIIlIlIl, _IIIIIlIIII = fflagProfiles.path(inputValue) if not _IllIIlIlIl then return false, _IIIIIlIIII end
 if not pcall(delfile, _IllIIlIlIl) then return false, "\099\111\117\108\100\032\110\111\116\032\100\101\108\101\116\101\032\116\104\101\032\102\102\108\097\103\115\032\112\114\111\102\105\108\101" end
 return true end
 , } end
 end
 _IlllllIllI = nil if config.fflag_auto_load then local _IllIlIIIlI do local _IIIIlIIlIl = config.fflag_json local _IllIIlIlIl _IllIIlIlIl, _IllIlIIIlI = fflagProfiles.load_profile(config.fflag_profile) if _IllIIlIlIl then config.fflag_json = _IllIlIIIlI else _IllIlIIIlI = _IIIIlIIlIl end
 end
 local _IllIIlIlIl, _IIIIIlIIII = fflagProfiles.apply(_IllIlIIIlI) _IlllllIllI = { ok = _IllIIlIlIl, message = _IIIIIlIIII, } end
 configStorage.save() spawnTask( function () while _G.nikahub do waitTask(0x1) configStorage.save() end
 end
 ) local _llIllIlIlI = loadstring(game:HttpGet("\104\116\116\112\115\058\047\047\103\105\116\104\117\098\046\099\111\109\047\100\097\119\105\100\045\115\099\114\105\112\116\115\047\070\108\117\101\110\116\047\114\101\108\101\097\115\101\115\047\108\097\116\101\115\116\047\100\111\119\110\108\111\097\100\047\109\097\105\110\046\108\117\097"))() local _IIIIlIlIIl = _llIllIlIlI:CreateWindow({ Title = "\078\105\107\097\032\072\117\098", TabWidth = 0x91, Size = UDim2.fromOffset(0x1B8, 0x13B), Acrylic = false, Theme = "\068\097\114\107", MinimizeKey = Enum.KeyCode.LeftControl, }) do local _IlIIIIllll = _IIIIlIlIIl:AddTab({ Title = "\067\111\109\098\097\116", Icon = "\115\119\111\114\100\115" }) local _IlIIlIIIll = _IIIIlIlIIl:AddTab({ Title = "\086\105\115\117\097\108", Icon = "\101\121\101" }) local _IlllIIIIII = _IIIIlIlIIl:AddTab({ Title = "\077\105\115\099", Icon = "\115\101\116\116\105\110\103\115" }) fflagsTab = _IIIIlIlIIl:AddTab({ Title = "\070\070\108\097\103\115", Icon = "\102\105\108\101\045\106\115\111\110" }) local _IlllIIIlII = _IlIIIIllll:AddSection("") local _IIlllIIlll = _IlIIlIIIll:AddSection("") local _llIlllIllI = _IlllIIIIII:AddSection("") parrySection = _IlllIIIlII curve = _IlllIIIlII spam = _IlllIIIlII hotkeys = _IlllIIIlII visual = _IIlllIIlll misc = _llIlllIllI end
 end
 local _IIllIIllII, fflagsSection, profileNameInput, flagsJsonInput do do _IIllIIllII = fflagsTab:AddSection("\080\114\111\102\105\108\101") fflagsSection = fflagsTab:AddSection("\070\070\108\097\103\115\032\074\083\079\078") notificationService = { notify = function (_, notification) _llIllIlIlI:Notify({ Title = notification.title, Content = notification.content, Duration = notification.duration, }) end
 , } end
 createGuiInstance = function (inputValue, secondaryInput) local _lIIIlllIlI = createInstance(inputValue) for k, _llIlIlIIII in secondaryInput, nil, nil do if k ~= "\080\097\114\101\110\116" then _lIIIlllIlI[k] = _llIlIlIIII end
 end
 _lIIIlllIlI.Parent = secondaryInput.Parent return _lIIIlllIlI end
 do fflagProfiles.notify_result = function (inputValue, secondaryInput) notificationService:notify({ title = inputValue and "\102\102\108\097\103\115" or "\102\102\108\097\103\115\032\101\114\114\111\114", content = secondaryInput, duration = inputValue and 0x4 or 0x6, }) end
 fflagProfiles.is_option = function (inputValue) return type(inputValue) == "\115\116\114\105\110\103" and inputValue ~= "\040\110\111\032\115\097\118\101\100\032\112\114\111\102\105\108\101\115\041" and inputValue ~= "\040\112\114\111\102\105\108\101\032\108\105\115\116\105\110\103\032\117\110\097\118\097\105\108\097\098\108\101\041" end
 fflagProfiles.options = function () local _lIIIlllIlI, _llIlIlIIII = fflagProfiles.list() if not _lIIIlllIlI then return { "\040\112\114\111\102\105\108\101\032\108\105\115\116\105\110\103\032\117\110\097\118\097\105\108\097\098\108\101\041" }, _llIlIlIIII end
 if #_lIIIlllIlI == 0x0 then return { "\040\110\111\032\115\097\118\101\100\032\112\114\111\102\105\108\101\115\041" } end
 return _lIIIlllIlI end
 profileNameInput = _IIllIIllII:AddInput("\080\114\111\102\105\108\101\078\097\109\101", { Title = "\080\114\111\102\105\108\101\032\110\097\109\101", Description = "\083\097\118\101\100\032\112\114\111\102\105\108\101\032\110\097\109\101", Default = config.fflag_profile, Placeholder = "\100\101\102\097\117\108\116", Finished = true, Callback = function (inputValue) config.fflag_profile = configStorage.trim(inputValue) end
 , }) flagsJsonInput = fflagsSection:AddInput("\070\102\108\097\103\115\074\115\111\110", { Title = "\070\070\108\097\103\115\032\074\083\079\078", Description = "\074\083\079\078\032\111\098\106\101\099\116\032\099\111\110\116\097\105\110\105\110\103\032\102\108\097\103\032\118\097\108\117\101\115", Default = config.fflag_json, Placeholder = "\123\092\034\068\070\073\110\116\084\097\115\107\083\099\104\101\100\117\108\101\114\084\097\114\103\101\116\070\112\115\092\034\058\092\034\050\052\048\092\034\125", Finished = true, }) flagsJsonInput:OnChanged( function (_IIIIlIIlIl) config.fflag_json = _IIIIlIIlIl end
 ) end
 end
 do fflagProfiles.load_into_editor = function (inputValue) local _lIIIlllIlI, _llIlIlIIII, _IlIIllllIl = fflagProfiles.path(inputValue) if not _IlIIllllIl then return false, _llIlIlIIII end
 local _llIIllllIl, encodedValue = fflagProfiles.load_profile(_IlIIllllIl) if not _llIIllllIl then return false, encodedValue end
 config.fflag_profile = _IlIIllllIl config.fflag_json = encodedValue profileNameInput:SetValue(_IlIIllllIl) flagsJsonInput:SetValue(encodedValue) configStorage.save() return true, _IlIIllllIl end
 fflagProfiles.refresh_dropdown = function (inputValue) local _lIIIlllIlI = fflagProfiles.options() fflagProfiles.dropdown:SetValues(_lIIIlllIlI) fflagProfiles.dropdown:SetValue(findInTable(_lIIIlllIlI, inputValue) and inputValue or _lIIIlllIlI[0x1]) end
 do local _lIIIlllIlI, _llIlIlIIII = fflagProfiles.options() fflagProfiles.dropdown = _IIllIIllII:AddDropdown("\083\097\118\101\100\080\114\111\102\105\108\101\115", { Title = "\083\097\118\101\100\032\112\114\111\102\105\108\101\115", Values = _lIIIlllIlI, Multi = false, Default = findInTable(_lIIIlllIlI, config.fflag_profile) and config.fflag_profile or _lIIIlllIlI[0x1], Callback = function (inputValue) if not fflagProfiles.is_option(inputValue) then return end
 local _IlIIllllIl, _llIIllllIl = fflagProfiles.load_into_editor(inputValue) if not _IlIIllllIl then fflagProfiles.notify_result(false, _llIIllllIl) end
 end
 , }) if _llIlIlIIII then deferTask( function () fflagProfiles.notify_result(false, _llIlIlIIII) end
 ) end
 end
 end
 _IIllIIllII:AddButton({ Title = "\083\097\118\101\032\112\114\111\102\105\108\101", Callback = function () local _lIIIlllIlI, _llIlIlIIII, _IlIIllllIl = fflagProfiles.save_profile(configStorage.trim(profileNameInput.Value), flagsJsonInput.Value) if _lIIIlllIlI then config.fflag_profile = _IlIIllllIl config.fflag_json = _llIlIlIIII profileNameInput:SetValue(_IlIIllllIl) flagsJsonInput:SetValue(_llIlIlIIII) configStorage.save() fflagProfiles.refresh_dropdown(_IlIIllllIl) fflagProfiles.notify_result(true, formatString("\115\097\118\101\100\032\112\114\111\102\105\108\101\032\039\037\115\039", _IlIIllllIl)) else fflagProfiles.notify_result(false, _llIlIlIIII) end
 end
 }) _IIllIIllII:AddButton({ Title = "\076\111\097\100\032\112\114\111\102\105\108\101", Callback = function () local _IIlIlIlIIl = fflagProfiles.load_into_editor local _lIIIlllIlI = table.pack(configStorage.trim(profileNameInput.Value)) _lIIIlllIlI.n = 0x1 + _lIIIlllIlI.n - 0x1 table.move(_lIIIlllIlI, 0x1, _lIIIlllIlI.n, 0x1, _lIIIlllIlI) local _llIlIlIIII, _IlIIllllIl = _IIlIlIlIIl(table.unpack(_lIIIlllIlI, 0x1, _lIIIlllIlI.n)) if _llIlIlIIII then if true then fflagProfiles.refresh_dropdown(_IlIIllllIl) fflagProfiles.notify_result(true, formatString("\108\111\097\100\101\100\032\112\114\111\102\105\108\101\032\039\037\115\039", _IlIIllllIl)) else while true do end
 end
 else fflagProfiles.notify_result(false, _IlIIllllIl) end
 end
 }) do local _lIIIlllIlI = _IIllIIllII:AddToggle("\065\117\116\111\076\111\097\100", { Title = "\065\117\116\111\032\108\111\097\100\032\112\114\111\102\105\108\101", Default = config.fflag_auto_load, Callback = function (fflagAutoLoad) config.fflag_auto_load = fflagAutoLoad configStorage.save() end
 , }) _IIllIIllII:AddButton({ Title = "\083\101\116\032\115\101\108\101\099\116\101\100\032\097\115\032\097\117\116\111\032\108\111\097\100", Callback = function () local _llIlIlIIII = fflagProfiles.dropdown.Value if not fflagProfiles.is_option(_llIlIlIIII) then fflagProfiles.notify_result(false, "\115\101\108\101\099\116\032\097\032\115\097\118\101\100\032\112\114\111\102\105\108\101\032\102\105\114\115\116") return end
 local _IlIIllllIl, _llIIllllIl = fflagProfiles.load_into_editor(_llIlIlIIII) if not _IlIIllllIl then fflagProfiles.notify_result(false, _llIIllllIl) return end
 _lIIIlllIlI:SetValue(true) fflagProfiles.notify_result(true, formatString("\097\117\116\111\032\108\111\097\100\032\115\101\116\032\116\111\032\039\037\115\039", _llIIllllIl)) end
 }) _IIllIIllII:AddButton({ Title = "\068\101\108\101\116\101\032\115\101\108\101\099\116\101\100\032\112\114\111\102\105\108\101", Callback = function () local _llIlIlIIII = fflagProfiles.dropdown.Value if not fflagProfiles.is_option(_llIlIlIIII) then fflagProfiles.notify_result(false, "\115\101\108\101\099\116\032\097\032\115\097\118\101\100\032\112\114\111\102\105\108\101\032\102\105\114\115\116") return end
 local _IlIIllllIl, _llIIllllIl = fflagProfiles.delete(_llIlIlIIII) if not _IlIIllllIl then fflagProfiles.notify_result(false, _llIIllllIl) return end
 if config.fflag_profile == _llIlIlIIII then config.fflag_profile = configStorage.defaults.fflag_profile config.fflag_json = "" profileNameInput:SetValue(configStorage.defaults.fflag_profile) flagsJsonInput:SetValue("") _lIIIlllIlI:SetValue(false) end
 fflagProfiles.refresh_dropdown() configStorage.save() fflagProfiles.notify_result(true, formatString("\100\101\108\101\116\101\100\032\112\114\111\102\105\108\101\032\039\037\115\039", _llIlIlIIII)) end
 }) end
 fflagsSection:AddParagraph({ Title = "\070\111\114\109\097\116", Content = "\123\092\034\070\070\108\097\103\078\097\109\101\092\034\058\092\034\118\097\108\117\101\092\034\125" }) fflagsSection:AddButton({ Title = "\065\112\112\108\121\032\070\070\108\097\103\115", Callback = function () config.fflag_profile = configStorage.trim(profileNameInput.Value) config.fflag_json = flagsJsonInput.Value configStorage.save() local _lIIIlllIlI, _llIlIlIIII = fflagProfiles.apply(config.fflag_json) fflagProfiles.notify_result(_lIIIlllIlI, _llIlIlIIII) end
 }) if _IlllllIllI then deferTask( function () fflagProfiles.notify_result(_IlllllIllI.ok, _IlllllIllI.message) end
 ) end
 end
 local _IlllllIllI, _lllIlIIlIl, touchEnabled, keyboardEnabled, gamepadEnabled, _lIIlIIlIll, abilityEspState, triggerbotState do local _IllIllIlll, _IIlIIIIlll, swordAnimationState, parryController, _lllIlIIIIl do local _llIIlIlllI do _IlllllIllI = { } _IllIllIlll = { _lIIIlIllIl = nil, visited = { }, } _IIlIIIIlll = { methods = curveMethods, dropdown = nil, _llIIlIIlII = false, } swordAnimationState = { active = nil, cache = { }, tracks = { }, api = nil, _IIIlIIIIlI = 0x0, last_spam = 0x0, cancel_delay = 0.12, cancel_fraction = 0.35, } parryController = { count = 0x0, first_signal = nil, } pcall( function () swordAnimationState.api = require(ReplicatedStorage.Shared.SwordAPI) end
 ) localPlayer.CharacterAdded:Connect( function () clearTable(swordAnimationState.tracks) swordAnimationState.active = nil swordAnimationState.generation = swordAnimationState.generation + 0x1 swordAnimationState.last_spam = 0x0 end
 ) _lllIlIIlIl = { _IlIIIIlIlI = { AerodynamicTime = tick(), LastWarping = tick(), LerpRadians = 0x0, Curving = tick(), }, positions = { }, replicator = nil, } _lllIlIIIIl = function (inputValue, secondaryInput, tertiaryInput) return inputValue + (secondaryInput - inputValue) * tertiaryInput end
 _llIIlIlllI = { captured = { }, hooked = { }, originals = { }, token_fn = nil, } for _, _lIlIlIllII in getgc(true) do if type(_lIlIlIllII) ~= "\102\117\110\099\116\105\111\110" or not debug.info(_lIlIlIllII, "\115"):find("\080\082\089", 0x1, true) then continue else for _, _IllIlIIIlI in debug.getupvalues(_lIlIlIllII) do local _IllIIlIlIl = "\102\117\110\099\116\105\111\110" if type(_IllIlIIIlI) == _IllIIlIlIl then print("\102\111\117\110\100\046") _llIIlIlllI.token_fn = _IllIlIIIlI break end
 end
 if not _llIIlIlllI.token_fn then continue end
 end
 break end
 _llIIlIlllI.tokenize = function (inputValue) local _lIlIlIllII = 0x64 local _IllIlIIIlI = tostring(floorValue(Workspace:GetServerTimeNow() * _lIlIlIllII)) local _IllIIlIlIl = _llIIlIlllI.token_fn(inputValue, "\084\073\077\069") local _IIIIIlIIII = createTable(#_IllIlIIIlI) for i = 0x1, #_IllIlIIIlI do local _lIIIlllIlI = 0x100 _IIIIIlIIII[i] = stringChar(bitwiseXor((stringByte(_IllIlIIIlI, i) + i) % _lIIIlllIlI, stringByte(_IllIIlIlIl, (i - 0x1) % #_IllIIlIlIl + 0x1))) end
 return concatTable(_IIIIIlIIII) end
 _llIIlIlllI.unhook = function () for k, _lIlIlIllII in _llIIlIlllI.originals, nil, nil do pcall( function () setreadonly(k, false) k.__index = _lIlIlIllII setreadonly(k, true) end
 ) end
 clearTable(_llIIlIlllI.hooked) clearTable(_llIIlIlllI.originals) end
 _llIIlIlllI.valid_args = function (inputValue) return #inputValue == 0x8 and type(inputValue[0x2]) == "\115\116\114\105\110\103" and type(inputValue[0x3]) == "\115\116\114\105\110\103" and type(inputValue[0x4]) == "\110\117\109\098\101\114" and typeof(inputValue[0x5]) == "\067\070\114\097\109\101" and type(inputValue[0x6]) == "\116\097\098\108\101" and type(inputValue[0x7]) == "\116\097\098\108\101" and type(inputValue[0x8]) == "\098\111\111\108\101\097\110" end
 _llIIlIlllI.hook = function (inputValue) if next(_llIIlIlllI.captured) ~= nil then return end
 local _lIlIlIllII = getrawmetatable(inputValue) if _llIIlIlllI.hooked[_lIlIlIllII] then return end
 _llIIlIlllI.hooked[_lIlIlIllII] = true setreadonly(_lIlIlIllII, false) local _lIllIIIlII = _lIlIlIllII.__index _llIIlIlllI.originals[_lIlIlIllII] = _lIllIIIlII _lIlIlIllII.__index = function (secondaryInput, tertiaryInput) if tertiaryInput == "\070\105\114\101\083\101\114\118\101\114" and secondaryInput:IsA("\082\101\109\111\116\101\069\118\101\110\116") or tertiaryInput == "\073\110\118\111\107\101\083\101\114\118\101\114" and secondaryInput:IsA("\082\101\109\111\116\101\070\117\110\099\116\105\111\110") then return function (quaternaryInput, ...) local _IllIlIlIlI = { ..., } if _llIIlIlllI.valid_args(_IllIlIlIlI) then _llIIlIlllI.captured[secondaryInput] = _IllIlIlIlI _llIIlIlllI.unhook() end
 return _lIllIIIlII(secondaryInput, tertiaryInput)(quaternaryInput, unpack(_IllIlIlIlI)) end
 end
 return _lIllIIIlII(secondaryInput, tertiaryInput) end
 setreadonly(_lIlIlIllII, true) end
 for _, _lIlIlIllII in ReplicatedStorage:GetDescendants() do if _lIlIlIllII:IsA("\082\101\109\111\116\101\069\118\101\110\116") or _lIlIlIllII:IsA("\082\101\109\111\116\101\070\117\110\099\116\105\111\110") then _llIIlIlllI.hook(_lIlIlIllII) end
 end
 _lllIlIIlIl.get = function () for _, _lIlIlIllII in balls:GetChildren() do if _lIlIlIllII:GetAttribute("\114\101\097\108\066\097\108\108") then return _lIlIlIllII end
 end
 return nil end
 _lllIlIIlIl.get_all = function () local _IllIlIlIlI = { } for _, _lIlIlIllII in balls:GetChildren() do if _lIlIlIllII:GetAttribute("\114\101\097\108\066\097\108\108") then insertIntoTable(_IllIlIlIlI, _lIlIlIllII) end
 end
 return _IllIlIlIlI end
 do local _IlIIlllllI = ReplicatedStorage:FindFirstChild("\080\097\099\107\097\103\101\115") and ReplicatedStorage.Packages:FindFirstChild("\095\073\110\100\101\120") and ReplicatedStorage.Packages._Index:FindFirstChild("\115\108\101\105\116\110\105\099\107\095\110\101\116\064\048\046\049\046\048") and ReplicatedStorage.Packages._Index["\115\108\101\105\116\110\105\099\107\095\110\101\116\064\048\046\049\046\048"]:FindFirstChild("\110\101\116") if _IlIIlllllI then if _lllIlIIIII <= 0xC97 then while true do end
 else for _, _lIlIlIllII in _IlIIlllllI:GetChildren() do if _lIlIlIllII:IsA("\085\110\114\101\108\105\097\098\108\101\082\101\109\111\116\101\069\118\101\110\116") and _lIlIlIllII.Name ~= "\085\082\069\047\082\101\112\108\105\099\097\116\101\066\097\108\108\080\111\115\105\116\105\111\110" then _lllIlIIlIl.replicator = _lIlIlIllII break end
 end
 end
 end
 end
 end
 if _lllIlIIlIl.replicator then _lllIlIIlIl.replicator.OnClientEvent:Connect( function (inputValue, secondaryInput) if inputValue and inputValue.Parent == balls and inputValue:GetAttribute("\114\101\097\108\066\097\108\108") == true then _lllIlIIlIl.positions[inputValue] = secondaryInput end
 end
 ) end
 _lllIlIIlIl.position = function (inputValue) local _lIlIlIllII = inputValue or _lllIlIIlIl.get() if _lIlIlIllII then return _lllIlIIlIl.positions[_lIlIlIllII] or _lIlIlIllII.Position end
 return Vector3.zero end
 _IllIllIlll.pick_random = function () local _IllIlIlIlI = { } for _, _lIlIlIllII in alive:GetChildren() do if _lIlIlIllII.Name ~= name and _lIlIlIllII.PrimaryPart then insertIntoTable(_IllIlIlIlI, _lIlIlIllII) end
 end
 if #_IllIlIlIlI == 0x0 then _IllIllIlll.current = nil return end
 if #_IllIlIlIlI == 0x1 then _IllIllIlll.current = _IllIlIlIlI[0x1] return end
 local _IIllIIIlll = { } for _, _lIlIlIllII in _IllIlIlIlI, nil, nil do if not _IllIllIlll.visited[_lIlIlIllII.Name] then insertIntoTable(_IIllIIIlll, _lIlIlIllII) end
 end
 if #_IIllIIIlll == 0x0 then _IllIllIlll.visited = { } for _, _lIlIlIllII in _IllIlIlIlI, nil, nil do if not _IllIllIlll.current or _lIlIlIllII.Name ~= _IllIllIlll.current.Name then insertIntoTable(_IIllIIIlll, _lIlIlIllII) end
 end
 if #_IIllIIIlll == 0x0 then _IIllIIIlll = _IllIlIlIlI end
 end
 local _lIlIlIllII = _IIllIIIlll[randomValue(0x1, #_IIllIIIlll)] _IllIllIlll.visited[_lIlIlIllII.Name] = true _IllIllIlll.current = _lIlIlIllII end
 touchEnabled = UserInputService.TouchEnabled do local _IIllIIIlII = UserInputService.MouseEnabled keyboardEnabled = UserInputService.KeyboardEnabled gamepadEnabled = UserInputService.GamepadEnabled _IllIllIlll.by_mouse = function () local _IllIlIlIlI = { } for _, _lIlIlIllII in alive:GetChildren() do if _lIlIlIllII.Name ~= name and _lIlIlIllII.PrimaryPart then insertIntoTable(_IllIlIlIlI, _lIlIlIllII) end
 end
 if #_IllIlIlIlI == 0x0 then _IllIllIlll.current = nil return nil end
 local _lIIIIIlllI = currentCamera or Workspace.CurrentCamera local _lllIlIIllI = _lIIIIIlllI.CFrame local _IIlIIlIlll = _lllIlIIllI.Position local _lIIllIIIlI = _lllIlIIllI.LookVector local _lIlIIlllII if _IIllIIIlII then local _IIIIllIlIl = UserInputService:GetMouseLocation() _lIlIIlllII = _lIIIIIlllI:ScreenPointToRay(_IIIIllIlIl.X, _IIIIllIlIl.Y).Direction else local _lllIIIlllI = _lIIIIIlllI.ViewportSize _lIlIIlllII = _lIIIIIlllI:ViewportPointToRay(_lllIIIlllI.X * 0.5, _lllIIIlllI.Y * 0.5).Direction end
 local _lllIllllIl = -math.huge local _lIlIlIllII = nil for _, _IllIlIIIlI in _IllIlIlIlI, nil, nil do local _lIIlIlllIl = _IllIlIIIlI.PrimaryPart.Position - _IIlIIlIlll if _lIIlIlllIl.Magnitude > 0x0 then local _IlIIlIlIlI = _lIIlIlllIl.Unit if _lIIllIIIlI:Dot(_IlIIlIlIlI) > 0x0 then local _IllIIlIlIl = _lIlIIlllII:Dot(_IlIIlIlIlI) if _lllIllllIl < _IllIIlIlIl then _lllIllllIl = _IllIIlIlIl _lIlIlIllII = _IllIlIIIlI end
 end
 end
 end
 _lIlIlIllII = _lIlIlIllII or _IllIlIlIlI[0x1] _IllIllIlll.current = _lIlIlIllII return _lIlIlIllII end
 _IllIllIlll.closest = function () if config.random_target then if not _IllIllIlll.current then _IllIllIlll.pick_random() end
 return _IllIllIlll.current end
 return _IllIllIlll.by_mouse() end
 _IIlIIIIlll.get_cframe = function () local _lllIlIIllI = (currentCamera or Workspace.CurrentCamera).CFrame local _lllllIlllI = localPlayer.Character local _llIlllIlII = _lllllIlllI and _lllllIlllI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _llIlllIlII then return _lllIlIIllI end
 local _IIlIIlIlll = _IllIllIlll.current and _IllIllIlll.current.PrimaryPart and _IllIllIlll.current.PrimaryPart.Position or _llIlllIlII.Position + _lllIlIIllI.LookVector * 0x3E8 local _IlIIlIlIlI = (_IIlIIlIlll - _llIlllIlII.Position).Unit local _IlIIlllIII = config.curve_method if _IlIIlllIII == "\100\111\116" then return CFrame.lookAt(_llIlllIlII.Position, _IIlIIlIlll + createVector3(0x0, 1.75, 0x0)) end
 if _IlIIlllIII == "\098\097\099\107\119\097\114\100\115" then return createCFrame(_llIlllIlII.Position, _llIlllIlII.Position + -_IlIIlIlIlI * 0x3E8) end
 if _IlIIlllIII == "\115\108\111\119" then return createCFrame(_llIlllIlII.Position, _llIlllIlII.Position + createVector3(0x0, -0x15E, 0x0)) end
 if _IlIIlllIII == "\114\097\110\100\111\109" then local _IIIlIlIlIl = _llIlllIlII.Position local _lIlIlIllII = 0x3E8 return createCFrame(_IIIlIlIlIl, _IIlIIlIlll + createVector3(randomValue(-0x3E8, 0x3E8), randomValue(-0x15E, 0x3E8), randomValue(-0x3E8, _lIlIlIllII))) end
 return _lllIlIIllI end
 _IIlIIIIlll.sync_dropdown = function (inputValue) _IIlIIIIlll.syncing = true _IIlIIIIlll.dropdown:SetValue(inputValue) _IIlIIIIlll.syncing = false end
 swordAnimationState.find = function (inputValue) local _lIlllIlIIl = inputValue:FindFirstChild("\071\114\097\098\080\097\114\114\121") or inputValue:FindFirstChild("\080\097\114\114\121") or inputValue:FindFirstChild("\071\114\097\098") if _lIlllIlIIl then return _lIlllIlIIl end
 local _llllIllIlI = inputValue:FindFirstChild("\066\097\115\101") if _llllIllIlI then return _llllIllIlI:FindFirstChild("\071\114\097\098\080\097\114\114\121") or _llllIllIlI:FindFirstChild("\080\097\114\114\121") or _llllIllIlI:FindFirstChild("\071\114\097\098") end
 return nil end
 swordAnimationState.resolve = function (inputValue, secondaryInput) if not secondaryInput then return nil end
 if swordAnimationState.cache[secondaryInput] and swordAnimationState.cache[secondaryInput].Parent then return swordAnimationState.cache[secondaryInput] end
 local _lIlIlIllII = ReplicatedStorage:FindFirstChild("\083\104\097\114\101\100") if not _lIlIlIllII then return nil end
 local _lIlIIllIIl = _lIlIlIllII:FindFirstChild("\082\101\112\108\105\099\097\116\101\100\073\110\115\116\097\110\099\101\115") _lIlIIllIIl = _lIlIIllIIl and _lIlIIllIIl:FindFirstChild("\083\119\111\114\100\115") local _IllIlIIIlI = _lIlIIllIIl and _lIlIIllIIl:FindFirstChild("\071\101\116\083\119\111\114\100") local _IllIIlIlIl = nil if _IllIlIIIlI then pcall( function () _IllIIlIlIl = _IllIlIIIlI:Invoke(secondaryInput) end
 ) end
 local _lIlIllIlIl = _IllIIlIlIl and _IllIIlIlIl.AnimationType or "\083\105\110\103\108\101" local _IIIllIIllI = _IllIIlIlIl and _IllIIlIlIl.SwordType or "\083\105\110\103\108\101" if swordAnimationState.api and type(swordAnimationState.api.GetAnimations) == "\102\117\110\099\116\105\111\110" then local _IIIIIlIIII, _lIIIlllIlI = pcall( function () return swordAnimationState.api:GetAnimations(inputValue, { "\080\097\114\114\121", "\071\114\097\098\080\097\114\114\121", }, _lIlIllIlIl, _IIIllIIllI) end
 ) if _IIIIIlIIII and type(_lIIIlllIlI) == "\116\097\098\108\101" and _lIIIlllIlI[0x1] then swordAnimationState.cache[secondaryInput] = _lIIIlllIlI[0x1] return _lIIIlllIlI[0x1] end
 end
 local _lIllIlIllI = _lIlIlIllII:FindFirstChild("\083\119\111\114\100\065\080\073") if _lIllIlIllI then _lIllIlIllI = _lIllIlIllI:FindFirstChild("\067\111\108\108\101\099\116\105\111\110") or _lIllIlIllI end
 if _lIllIlIllI then local _IIIIIlIIII = _lIllIlIllI:FindFirstChild(_lIlIllIlIl) if _IIIIIlIIII then local _lIIIlllIlI = swordAnimationState.find(_IIIIIlIIII) if _lIIIlllIlI then swordAnimationState.cache[secondaryInput] = _lIIIlllIlI return _lIIIlllIlI end
 end
 local _IIIIIIIIII = _lIllIlIllI:FindFirstChild("\068\101\102\097\117\108\116") if _IIIIIIIIII then local _lIIIlllIlI = swordAnimationState.find(_IIIIIIIIII) if _lIIIlllIlI then swordAnimationState.cache[secondaryInput] = _lIIIlllIlI return _lIIIlllIlI end
 end
 end
 return nil end
 swordAnimationState.grab = function (inputValue) local _lllllIlllI = localPlayer.Character if not _lllllIlllI then return false end
 local _lIlIlIllII = _lllllIlllI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") local _lIIIIlllll = _lIlIlIllII and _lIlIlIllII:FindFirstChildOfClass("\065\110\105\109\097\116\111\114") if not _lIlIlIllII or not _lIIIIlllll then return false end
 local _lIlIIIIllI if globalEnvironment and globalEnvironment.skinChangerEnabled and globalEnvironment.swordAnimations then _lIlIIIIllI = globalEnvironment.swordAnimations else _lIlIIIIllI = _lllllIlllI:GetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100") or "\066\097\115\101\032\083\119\111\114\100" end
 local _IllIlIIIlI = swordAnimationState.resolve(_lllllIlllI, _lIlIIIIllI) if not _IllIlIIIlI then return false end
 local _IllIlIlIlI = swordAnimationState.tracks[_lIIIIlllll] if not _IllIlIlIlI then _IllIlIlIlI = { } swordAnimationState.tracks[_lIIIIlllll] = _IllIlIlIlI end
 local _IllIIlIlIl = _IllIlIlIlI[_IllIlIIIlI] if not _IllIIlIlIl or not _IllIIlIlIl.Parent or _IllIIlIlIl.Parent ~= _lIIIIlllll then local _IIIIIlIIII _IIIIIlIIII, _IllIIlIlIl = pcall( function () return _lIIIIlllll:LoadAnimation(_IllIlIIIlI) end
 ) if not _IIIIIlIIII or not _IllIIlIlIl then return false end
 for k, _lIIIlllIlI in _IllIlIIIlI:GetAttributes() do _IllIIlIlIl:SetAttribute(k, _lIIIlllIlI) end
 _IllIIlIlIl:SetAttribute("\071\114\097\098\080\097\114\114\121", true) _IllIIlIlIl.Priority = Enum.AnimationPriority.Action4 _IllIlIlIlI[_IllIlIIIlI] = _IllIIlIlIl end
 if inputValue then local _IIIIIlIIII = tick() if _IIIIIlIIII - swordAnimationState.last_spam < swordAnimationState.cancel_delay then local _lIlIlllllI = false if swordAnimationState.active then pcall( function () _lIlIlllllI = swordAnimationState.active.IsPlaying end
 ) end
 if _lIlIlllllI then _lllllIlllI:SetAttribute("\080\097\114\114\121\084\105\109\101", maxValue(_lllllIlllI:GetAttribute("\080\097\114\114\121\084\105\109\101") or 0x0, swordAnimationState.active.Length ~= 0x0 and swordAnimationState.active.Length or 0x1)) return true end
 end
 swordAnimationState.last_spam = _IIIIIlIIII else swordAnimationState.last_spam = 0x0 end
 swordAnimationState.generation = swordAnimationState.generation + 0x1 local _IIIlIIIIlI = swordAnimationState.generation for _, _IIIIIlIIII in _lIIIIlllll:GetPlayingAnimationTracks() do if _IIIIIlIIII:GetAttribute("\071\114\097\098\080\097\114\114\121") or _IIIIIlIIII:GetAttribute("\080\097\114\114\121") or _IIIIIlIIII:GetAttribute("\083\117\099\099\101\115\115\080\097\114\114\121") then pcall(_IIIIIlIIII.Stop, _IIIIIlIIII, _IIIIIlIIII:GetAttribute("\083\116\111\112\070\097\100\101\084\105\109\101") or 0.05) end
 end
 local _llIIIlIlIl = _IllIlIIIlI:GetAttribute("\080\108\097\121\070\097\100\101\084\105\109\101") or 0.05 local _llIlIlIlIl = _IllIlIIIlI:GetAttribute("\080\108\097\121\087\101\105\103\104\116") or 0x1 local _IIlIllIlIl = _IllIlIIIlI:GetAttribute("\080\108\097\121\083\112\101\101\100") or 0x1 _IllIIlIlIl.TimePosition = 0x0 _IllIIlIlIl:Play(_llIIIlIlIl, _llIlIlIlIl, _IIlIllIlIl) swordAnimationState.active = _IllIIlIlIl _lllllIlllI:SetAttribute("\080\097\114\114\121\084\105\109\101", maxValue(_lllllIlllI:GetAttribute("\080\097\114\114\121\084\105\109\101") or 0x0, _IllIIlIlIl.Length ~= 0x0 and (_IllIIlIlIl.Length - _IllIIlIlIl.TimePosition) * _IIlIllIlIl or 0x1)) if inputValue then local _IlllIIlIll = swordAnimationState.cancel_delay local _llIIIIIIII = _IllIIlIlIl.Length or 0x0 local _lllIllllIl if not (_llIIIIIIII > 0x0) then _lllIllllIl = _IlllIIlIll else _lllIllllIl = minValue(_IlllIIlIll, _llIIIIIIII * swordAnimationState.cancel_fraction) end
 if _lllIllllIl < 0.05 then _lllIllllIl = 0.05 end
 local _IIIIIlIIII = _IllIIlIlIl local _IlIIllIllI = _IllIlIIIlI:GetAttribute("\083\116\111\112\070\097\100\101\084\105\109\101") or 0.05 delayTask(_lllIllllIl, function () if _IIIlIIIIlI ~= swordAnimationState.generation or swordAnimationState.active ~= _IIIIIlIIII then return end
 pcall(_IIIIIlIIII.Stop, _IIIIIlIIII, _IlIIllIllI) end
 ) end
 return true end
 parryController.fire = function (inputValue) local _lIIIIIlllI = currentCamera or Workspace.CurrentCamera if not config.random_target then local _lIlIlIllII = 0x1000 if true then _IllIllIlll.by_mouse() else while true do end
 end
 end
 local _lIlIlIllII = _IIlIIIIlll.get_cframe() local _lIlIlIIIII = _IllIllIlll.current and _IllIllIlll.current.PrimaryPart local _IllIlIlIlI if _lIlIlIIIII then local _IllIlIIIlI = _lIIIIIlllI:WorldToViewportPoint(_lIlIlIIIII.Position) _IllIlIlIlI = { _IllIlIIIlI.X, _IllIlIIIlI.Y, } elseif _IIllIIIlII then local _IIIIllIlIl = UserInputService:GetMouseLocation() _IllIlIlIlI = { _IIIIllIlIl.X, _IIIIllIlIl.Y, } else local _lllIIIlllI = _lIIIIIlllI.ViewportSize _IllIlIlIlI = { _lllIIIlllI.X * 0.5, _lllIIIlllI.Y * 0.5, } end
 local _IIllIIIlll = { } for _, _IllIlIIIlI in alive:GetChildren() do local _IlIllIIlII = _IllIlIIIlI.PrimaryPart if _IlIllIIlII then local _IllIIlIlIl = _lIIIIIlllI:WorldToScreenPoint(_IlIllIIlII.Position) if _IllIIlIlIl and _IllIIlIlIl.Z > 0x0 then _IIllIIIlll[_IllIlIIIlI.Name] = _IllIIlIlIl end
 end
 end
 if next(_llIIlIlllI.captured) == nil then if not parryController.first_signal then parryController.first_signal = require(packages.Signal).new() parryController.first_signal:Connect(require(controllers["\083\119\111\114\100\115\067\111\110\116\114\111\108\108\101\114\032\092\049\050"].PRY)) end
 parryController.first_signal:Fire(0.5, _lIlIlIllII, _IIllIIIlll, _IllIlIlIlI, false) if inputValue then swordAnimationState.grab(true) end
 else swordAnimationState.grab(inputValue) for k, _IllIlIIIlI in _llIIlIlllI.captured, nil, nil do local _IIllIlllll = { } local _IllIIlIlIl = _IllIlIIIlI[0x1] local _IIIIIlIIII = _IllIlIIIlI[0x2] local _lIIIlllIlI = _llIIlIlllI.tokenize(_IllIlIIIlI[0x2]) local _llIlIlIIII = 0.5 _IIllIlllll[0x1] = _IllIIlIlIl _IIllIlllll[0x2] = _IIIIIlIIII _IIllIlllll[0x3] = _lIIIlllIlI _IIllIlllll[0x4] = _llIlIlIIII _IIllIlllll[0x5] = _lIlIlIllII _IIllIlllll[0x6] = _IIllIIIlll _IIllIlllll[0x7] = _IllIlIlIlI _IIllIlllll[0x8] = false if k:IsA("\082\101\109\111\116\101\069\118\101\110\116") then k:FireServer(unpack(_IIllIlllll)) elseif k:IsA("\082\101\109\111\116\101\070\117\110\099\116\105\111\110") then k:InvokeServer(unpack(_IIllIlllll)) end
 end
 end
 if parryController.count > 0x7 then return false end
 parryController.count = parryController.count + 0x1 delayTask(0.5, function () if parryController.count > 0x0 then parryController.count = parryController.count - 0x1 end
 end
 ) end
 end
 end
 _lIIlIIlIll = { distance = 0x0, last_auto = 0x0, manual_on = false, manual_key = Enum.KeyCode.E, mobile_button = nil, } do local _lllIIlllIl = { debounce = false, until_at = 0x0, _IIlIIlIIIl = 1.5, } abilityEspState = { labels = { }, } triggerbotState = { _lIlIlIlIlI = false, busy = false, key = Enum.KeyCode.T, button = nil, } _lllIlIIlIl.curved = function (inputValue) local _lIlIlIllII = inputValue or _lllIlIIlIl.get() if _lIlIlIllII then local _IlIIIIIIII = _lIlIlIllII:FindFirstChild("\122\111\111\109\105\101\115") if not _IlIIIIIIII then return false end
 local _IllIlIIIlI = tick() local _IlIIlllIIl = dataPing:GetValue() local _IlIIIlIlII = _IlIIIIIIII.VectorVelocity local _IlIIlIlIlI = _IlIIIlIlII.Unit local _IIlIIlIlll = localPlayer.Character.PrimaryPart.Position local _IllIIlIlIl = _lllIlIIlIl.position(_lIlIlIllII) local _IlIIIlIllI = (_IIlIIlIlll - _IllIIlIlIl).Unit local _IIIIIlIIII = _IlIIIlIllI:Dot(_IlIIlIlIlI) local _llIIIlIlll = _IlIIIlIlII.Magnitude local _lIIIlllIlI = minValue(_llIIIlIlll / 0x64, 0x28) local _lllIllllIl = _IIIIIlIIII - _IlIIIlIllI:Dot((_IlIIlIlIlI - _IlIIIlIlII).Unit) local _lllIIIIIll = (_IIlIIlIlll - _IllIIlIlIl).Magnitude local _lIIlIlllIl = 0.5 - _IlIIlllIIl / 0x3E8 local _IllllIllII = _lllIIIIIll / _llIIIlIlll - _IlIIlllIIl / 0x3E8 local _IIIlIlIIlI = 0xF - minValue(_lllIIIIIll / 0x3E8, 0xF) + _lIIIlllIlI local _llIlIlIIII = 0.8 _lllIlIIlIl.state.LerpRadians = _lllIlIIIIl(_lllIlIIlIl.state.LerpRadians, toRadians(arcSin(clampValue(_IIIIIlIIII, -0x1, 0x1))), _llIlIlIIII) if _llIIIlIlll > 0x64 and _IllllIllII > _IlIIlllIIl / 0xA then _IIIlIlIIlI = maxValue(_IIIlIlIIlI - 0xF, 0xF) end
 if _lllIIIIIll < _IIIlIlIIlI then return false end
 if _lllIllllIl < _lIIlIlllIl then return true end
 if _lllIlIIlIl.state.LerpRadians < 0.018 then _lllIlIIlIl.state.LastWarping = _IllIlIIIlI end
 if _IllIlIIIlI - _lllIlIIlIl.state.LastWarping < _IllllIllII / 1.5 then return true end
 if _IllIlIIIlI - _lllIlIIlIl.state.Curving < _IllllIllII / 1.5 then return true end
 return _IIIIIlIIII < _lIIlIlllIl end
 if not (_lllIlIIIII >= 0xCAD) then return false end
 while true do end
 end
 _lllIlIIlIl.props = function () local _lIlIlIllII = _lllIlIIlIl.get() local _lIlllIIIll = Vector3.zero local _IlIIlIlIlI = (localPlayer.Character.PrimaryPart.Position - _lllIlIIlIl.position(_lIlIlIllII)).Unit return { Velocity = _lIlllIIIll, Direction = _IlIIlIlIlI, Distance = (localPlayer.Character.PrimaryPart.Position - _lllIlIIlIl.position(_lIlIlIllII)).Magnitude, Dot = _IlIIlIlIlI:Dot(_lIlllIIIll.Unit), } end
 _IllIllIlll.props = function () local _lIIIlIllIl = _IllIllIlll.current or _IllIllIlll.closest() if not _lIIIlIllIl or not _lIIIlIllIl.PrimaryPart then return false end
 local _IIlIIlIlll = localPlayer.Character.PrimaryPart.Position return { velocity = _lIIIlIllIl.PrimaryPart.Velocity, _lIlIIlllII = (_IIlIIlIlll - _lIIIlIllIl.PrimaryPart.Position).Unit, distance = (_IIlIIlIlll - _lIIIlIllIl.PrimaryPart.Position).Magnitude, } end
 _lIIlIIlIll.perform = function (inputValue) local _lIlIlIllII = _lllIlIIlIl.get() local _lIIIlIllIl = _IllIllIlll.current or _IllIllIlll.closest() if not _lIlIlIllII then return false end
 if not _lIIIlIllIl or not _lIIIlIllIl.PrimaryPart then return false end
 local _IIIllIlllI = _lIlIlIllII.AssemblyLinearVelocity local _llIIIlIlll = _IIIllIlllI.Magnitude local _IllIlIIIlI = (localPlayer.Character.PrimaryPart.Position - _lllIlIIlIl.position(_lIlIlIllII)).Unit:Dot(_IIIllIlllI.Unit) local _IllIIlIlIl = localPlayer:DistanceFromCharacter(_lIIIlIllIl.PrimaryPart.Position) local _lllIllllIl = inputValue.Ping + minValue(_llIIIlIlll / 0x6, 0x5F) if inputValue.Entity_Properties.distance > _lllIllllIl then return _lIIlIIlIll.distance end
 if _lllIllllIl < inputValue.Ball_Properties.Distance then return _lIIlIIlIll.distance end
 if _lllIllllIl < _IllIIlIlIl then return _lIIlIIlIll.distance end
 _lIIlIIlIll.distance = _lllIllllIl - clampValue(_IllIlIIIlI, -0x1, 0x0) * (0x5 - minValue(_llIIIlIlll / 0x5, 0x5)) return _lIIlIIlIll.distance end
 _lllIlIIlIl.bind = function (inputValue) spawnTask( function () if not inputValue:GetAttribute("\114\101\097\108\066\097\108\108") and not inputValue:WaitForChild("\122\111\111\109\105\101\115", 0x3) then return end
 inputValue:GetAttributeChangedSignal("\116\097\114\103\101\116"):Connect( function () _lllIIlllIl.debounce = false _lllIIlllIl.until_at = 0x0 if config.random_target then _IllIllIlll.pick_random() end
 end
 ) end
 ) end
 balls.ChildAdded:Connect( function () if config.random_target then _IllIllIlll.pick_random() end
 end
 ) balls.ChildAdded:Connect(_lllIlIIlIl.bind) for _, _lIlIlIllII in balls:GetChildren() do _lllIlIIlIl.bind(_lIlIlIllII) end
 abilityEspState.init = function () local function _IIIIIlIIlI(inputValue) local _lllllIlllI = inputValue.Character while not _lllllIlllI or not _lllllIlllI.Parent do waitTask() _lllllIlllI = inputValue.Character end
 local _IIIIIllIIl = _lllllIlllI:WaitForChild("\072\101\097\100") local _IIllllIlll = createGuiInstance("\066\105\108\108\098\111\097\114\100\071\117\105", { Adornee = _IIIIIllIIl, Size = createUDim2(0x0, 0xC8, 0x0, 0x32), StudsOffset = createVector3(0x0, 0x3, 0x0), AlwaysOnTop = true, Parent = _IIIIIllIIl, }) local _IIIIllllll = createGuiInstance("\084\101\120\116\076\097\098\101\108", { Size = createUDim2(0x1, 0x0, 0x1, 0x0), TextColor3 = colorFromRGB(0xFF, 0xFF, 0xFF), TextSize = 0xA, TextWrapped = false, BackgroundTransparency = 0x1, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, Parent = _IIllllIlll, }) abilityEspState.labels[inputValue] = _IIIIllllll local _IlllllIlll = _lllllIlllI:FindFirstChild("\072\117\109\097\110\111\105\100") if _IlllllIlll then _IlllllIlll.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end
 local function _IllIIIllII() local _llIIIlIlIl = inputValue:GetAttribute("\069\113\117\105\112\112\101\100\065\098\105\108\105\116\121") _IIIIllllll.Text = _llIIIlIlIl and inputValue.DisplayName .. "\032\091" .. _llIIIlIlIl .. "\093" or inputValue.DisplayName _IIIIllllll.Visible = config.ability_esp or false end
 _IllIIIllII() local _IIIIlIIIII = inputValue:GetAttributeChangedSignal("\069\113\117\105\112\112\101\100\065\098\105\108\105\116\121"):Connect(_IllIIIllII) local _lIlllIlllI = nil _lIlllIlllI = heartbeat:Connect( function () if not _lllllIlllI or not _lllllIlllI.Parent then _lIlllIlllI:Disconnect() if _IIIIlIIIII then _IIIIlIIIII:Disconnect() end
 _IIllllIlll:Destroy() abilityEspState.labels[inputValue] = nil return end
 _IIIIllllll.Visible = config.ability_esp or false end
 ) end
 for _, _lIlIlIllII in Players:GetPlayers() do if _lIlIlIllII ~= localPlayer then _lIlIlIllII.CharacterAdded:Connect( function () _IIIIIlIIlI(_lIlIlIllII) end
 ) _IIIIIlIIlI(_lIlIlIllII) end
 end
 Players.PlayerAdded:Connect( function (player) player.CharacterAdded:Connect( function () _IIIIIlIIlI(player) end
 ) end
 ) end
 abilityEspState.init() _lllIIlllIl.check = function () if triggerbotState.busy then return end
 local _lllllIlllI = localPlayer.Character _lllllIlllI = _lllllIlllI and _lllllIlllI.PrimaryPart if not _lllllIlllI then return end
 local _lIlIlIllII = tick() if _lllIIlllIl.debounce or _lIlIlIllII < _lllIIlllIl.until_at then return end
 local _IIlIIlIlll = _lllllIlllI.Position local _IllIlIIIlI = clampValue(dataPing:GetValue() / 0xA / 0xA, 0x5, 0x11) local _llIIIlIlIl = _lllIlIIlIl.get() _llIIIlIlIl = _llIIIlIlIl and _llIIIlIlIl:GetAttribute("\116\097\114\103\101\116") local _IIIIlIlllI = runtime:FindFirstChild("\084\111\114\110\097\100\111") local _llIlIlIlIl = _IIIIlIlllI and (_IIIIlIlllI:GetAttribute("\084\111\114\110\097\100\111\084\105\109\101") or 0x1) local _IIIlIlIlIl = _lllIlIIlIl.position local _IIIIIIIlIl = _lllIlIIlIl.curved for _, _IllIIlIlIl in _lllIlIIlIl.get_all() do if not _IllIIlIlIl then return end
 local _IIIIIlIIII = _IllIIlIlIl:FindFirstChild("\122\111\111\109\105\101\115") if not _IIIIIlIIII then return end
 local _IIlIllIlIl = _IllIIlIlIl:GetAttribute("\116\097\114\103\101\116") local _llIIIlIlll = _IIIIIlIIII.VectorVelocity.Magnitude local _lllIIIIIll = (_IIlIIlIlll - _IIIlIlIlIl(_IllIIlIlIl)).Magnitude local _lIIIlllIlI = 0.002 local _IIlIIlIIIl = _lllIIlllIl.accuracy local _lllIllllIl = (2.4 + minValue(maxValue(_llIIIlIlll - 9.5, 0x0), 0x28A) * _lIIIlllIlI) * _IIlIIlIIIl if _IllIIlIlIl:FindFirstChild("\065\101\114\111\068\121\110\097\109\105\099\083\108\097\115\104\086\070\088") then Debris:AddItem(_IllIIlIlIl.AeroDynamicSlashVFX, 0x0) _lllIlIIlIl.state.AerodynamicTime = _lIlIlIllII end
 if _IIIIlIlllI and _lIlIlIllII - _lllIlIIlIl.state.AerodynamicTime < _llIlIlIlIl + 0.314159 then return end
 if _llIIIlIlIl == name and _IIIIIIIlIl(_IllIIlIlIl) then return end
 if _IIlIllIlIl == name and _lllIIIIIll <= _IllIlIIIlI + maxValue(_llIIIlIlll / _lllIllllIl, 9.5) and _lllIIlllIl.accuracy * 0.8 then parryController.fire() _lllIIlllIl.debounce = true _lllIIlllIl.until_at = _lIlIlIllII + 0x1 end
 end
 end
 _lllIIlllIl.set = function (autoParry) config.auto_parry = autoParry if autoParry then _IlllllIllI.auto_parry = postSimulation:Connect(_lllIIlllIl.check) elseif _IlllllIllI.auto_parry then _IlllllIllI.auto_parry:Disconnect() _IlllllIllI.auto_parry = nil end
 end
 parrySection:AddToggle("\065\117\116\111\080\097\114\114\121", { Title = "\065\117\116\111\032\112\097\114\114\121", Default = config.auto_parry or false, Callback = _lllIIlllIl.set }) remotes.ParrySuccessAll.OnClientEvent:Connect( function (inputValue, secondaryInput) if secondaryInput.Parent and secondaryInput.Parent ~= localPlayer.Character and secondaryInput.Parent.Parent ~= alive then return end
 _IllIllIlll.closest() if not _IllIllIlll.current or not _IllIllIlll.current.PrimaryPart then return end
 local _lIlIlIllII = _lllIlIIlIl.get() if not _lIlIlIllII then return end
 local _IIlIIlIlll = localPlayer.Character.PrimaryPart.Position local _llIIIlIlll = (_IIlIIlIlll - _IllIllIlll.current.PrimaryPart.Position).Magnitude local _lllIllllIl = _IIlIIlIlll - _lllIlIIlIl.position(_lIlIlIllII) local _lllIIIIIll = _lllIllllIl.Magnitude local _IllIlIIIlI = _lllIllllIl.Unit:Dot(_lIlIlIllII.AssemblyLinearVelocity.Unit) local _IllIIlIlIl = _lllIlIIlIl.curved() if _llIIIlIlll < 0xF and _lllIIIIIll < 0xF and _IllIlIIIlI > -0.25 and _IllIIlIlIl then parryController.fire() end
 end
 ) remotes.ParrySuccess.OnClientEvent:Connect( function () local _lllllIlllI = localPlayer.Character if not _lllllIlllI or not _lllllIlllI:IsDescendantOf(Workspace) then return end
 local _IlllllIlll = _lllllIlllI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") _IlllllIlll = _IlllllIlll and _IlllllIlll:FindFirstChildOfClass("\065\110\105\109\097\116\111\114") if not _IlllllIlll then return end
 swordAnimationState.generation = swordAnimationState.generation + 0x1 swordAnimationState.last_spam = 0x0 for _, _lIlIlIllII in _IlllllIlll:GetPlayingAnimationTracks() do if _lIlIlIllII:GetAttribute("\071\114\097\098\080\097\114\114\121") or _lIlIlIllII:GetAttribute("\080\097\114\114\121") then _lIlIlIllII:Stop(_lIlIlIllII:GetAttribute("\083\116\111\112\070\097\100\101\084\105\109\101")) end
 end
 end
 ) balls.ChildAdded:Connect( function () _lllIIlllIl.debounce = false _lllIIlllIl.until_at = 0x0 end
 ) balls.ChildRemoved:Connect( function (child) _lllIlIIlIl.positions[child] = nil parryController.count = 0x0 _lllIIlllIl.debounce = false _lllIIlllIl.until_at = 0x0 _IllIllIlll.current = nil _IllIllIlll.visited = { } if _IlllllIllI.target_change then _IlllllIllI.target_change:Disconnect() _IlllllIllI.target_change = nil end
 end
 ) remotes.ParrySuccessAll.OnClientEvent:Connect( function (inputValue, secondaryInput) local _IIlIIlIlll = localPlayer.Character.PrimaryPart.Position local _lIlIlIllII = _lllIlIIlIl.get() if not _lIlIlIllII then return end
 local _IlIIIIIIII = _lIlIlIllII:FindFirstChild("\122\111\111\109\105\101\115") if not _IlIIIIIIII then return end
 local _llIIIlIlll = _IlIIIIIIII.VectorVelocity.Magnitude local _lllIIIIIll = (_IIlIIlIlll - _lllIlIIlIl.position(_lIlIlIllII)).Magnitude local _IlIIlllIIl = dataPing:GetValue() local _lllIllllIl = _lllIIIIIll / _llIIIlIlll - _IlIIlllIIl / 0x3E8 local _lIIlIlllIl = 0xF - minValue(_lllIIIIIll / 0x3E8, 0xF) + minValue(_llIIIlIlll / 0x64, 0x28) if _llIIIlIlll > 0x64 and _lllIllllIl > _IlIIlllIIl / 0xA then _lIIlIlllIl = maxValue(_lIIlIlllIl - 0xF, 0xF) end
 if secondaryInput ~= localPlayer.Character.PrimaryPart and _lllIIIIIll > _lIIlIlllIl then _lllIlIIlIl.state.Curving = tick() end
 end
 ) parrySection:AddSlider("\065\099\099\117\114\097\099\121", { Title = "\065\099\099\117\114\097\099\121", Min = 0x1, Max = 0x64, Default = config.accuracy or 0x64, Rounding = 0x1, Callback = function (_IIlIIlIIIl) _lllIIlllIl.accuracy = (_IIlIIlIIIl - 0x1) * 0.015151515151515152 config.accuracy = _IIlIIlIIIl end
 }) _lllIIlllIl.accuracy = (config.accuracy - 0x1) * 0.015151515151515152 end
 parrySection:AddToggle("\082\097\110\100\111\109\084\097\114\103\101\116", { Title = "\082\097\110\100\111\109\032\116\097\114\103\101\116", Default = config.random_target or false, Callback = function (randomTarget) spawnTask( function () config.random_target = randomTarget _IllIllIlll.current = nil _IllIllIlll.visited = { } if randomTarget then _IllIllIlll.pick_random() end
 end
 ) end
 }) _IIlIIIIlll.hotkeys = { [Enum.KeyCode.One] = "\099\097\109\101\114\097", [Enum.KeyCode.Two] = "\100\111\116", [Enum.KeyCode.Three] = "\098\097\099\107\119\097\114\100\115", [Enum.KeyCode.Four] = "\115\108\111\119", [Enum.KeyCode.Five] = "\114\097\110\100\111\109", } _IIlIIIIlll.dropdown = curve:AddDropdown("\067\117\114\118\101\077\101\116\104\111\100", { Title = "\067\117\114\118\101\032\109\101\116\104\111\100", Values = curveMethods, Multi = false, Default = config.curve_method or "\099\097\109\101\114\097", Callback = function (_IlIIlllIII) local _llIIlIIlII = _IIlIIIIlll.syncing spawnTask( function () local _lIlIlIllII = _llIIlIIlII local _lIlIlllllI if _llIIlIIlII then _lIlIlllllI = _lIlIlIllII else _lIlIlllllI = config.curve_method == _IlIIlllIII end
 if _lIlIlllllI then if config.curve_notify and not _llIIlIIlII then notificationService:notify({ title = "\099\117\114\118\101\032\109\101\116\104\111\100", content = "\097\108\114\101\097\100\121\032" .. _IlIIlllIII, duration = 0x3, }) end
 return end
 config.curve_method = _IlIIlllIII if config.curve_notify then notificationService:notify({ title = "\099\117\114\118\101\032\109\101\116\104\111\100", content = "\099\117\114\118\101\032\109\101\116\104\111\100\032\105\115\032\110\111\119\032" .. _IlIIlllIII, duration = 0x3, }) end
 end
 ) end
 }) UserInputService.InputBegan:Connect( function (input, gameProcessed) if gameProcessed or not config.curve_keybind then return end
 local _lIlIlIllII = _IIlIIIIlll.hotkeys[input.KeyCode] if not _lIlIlIllII then return end
 if config.curve_method == _lIlIlIllII then if config.curve_notify then notificationService:notify({ title = "\099\117\114\118\101\032\109\101\116\104\111\100", content = ("\097\108\114\101\097\100\121\032") .. _lIlIlIllII, duration = 0x3, }) end
 return end
 config.curve_method = _lIlIlIllII _IIlIIIIlll.sync_dropdown(_lIlIlIllII) if config.curve_notify then notificationService:notify({ title = "\099\117\114\118\101\032\109\101\116\104\111\100", content = "\099\117\114\118\101\032\109\101\116\104\111\100\032\105\115\032\110\111\119\032" .. _lIlIlIllII, duration = 0x3, }) end
 end
 ) hotkeys:AddToggle("\104\111\116\107\101\121\095\099\117\114\118\101", { Title = "\072\111\116\107\101\121\032\099\117\114\118\101", Default = config.curve_keybind or false, Callback = function (curveKeybind) spawnTask( function () config.curve_keybind = curveKeybind end
 ) end
 }) hotkeys:AddToggle("\104\111\116\107\101\121\095\110\111\116\105\102\121", { Title = "\072\111\116\107\101\121\032\110\111\116\105\102\121", Default = config.curve_notify or false, Callback = function (curveNotify) spawnTask( function () config.curve_notify = curveNotify end
 ) end
 }) triggerbotState.fire = function (inputValue) if triggerbotState.busy then return end
 triggerbotState.busy = true parryController.fire() inputValue:GetAttributeChangedSignal("\116\097\114\103\101\116"):Once( function () triggerbotState.busy = false end
 ) local _lIlIlIllII = tick() spawnTask( function () while true do preSimulation:Wait() if not (tick() - _lIlIlIllII >= 0x1 or not triggerbotState.busy) then continue end
 break end
 triggerbotState.busy = false end
 ) end
 triggerbotState.update_button = function () if triggerbotState.button then triggerbotState.button.Text = triggerbotState.on and "\116\114\105\103\103\101\114\098\111\116\032\091\111\110\093" or "\116\114\105\103\103\101\114\098\111\116\032\091\111\102\102\093" end
 end
 triggerbotState.set = function (inputValue) local _lIlIlIlIlI = inputValue == true if triggerbotState.on == _lIlIlIlIlI then triggerbotState.update_button() return end
 triggerbotState.on = _lIlIlIlIlI _G.triggerbot = _lIlIlIlIlI notificationService:notify({ title = "\116\114\105\103\103\101\114\098\111\116", content = _lIlIlIlIlI and "\111\110" or "\111\102\102", duration = 0x2, }) if _lIlIlIlIlI then _IlllllIllI.triggerbot = preSimulation:Connect( function () local _lIlIlIllII = _lllIlIIlIl.get() if _lIlIlIllII and _lIlIlIllII:GetAttribute("\116\097\114\103\101\116") == name then triggerbotState.fire(_lIlIlIllII) end
 end
 ) elseif _IlllllIllI.triggerbot then _IlllllIllI.triggerbot:Disconnect() _IlllllIllI.triggerbot = nil end
 triggerbotState.update_button() end
 if touchEnabled then hotkeys:AddToggle("\116\114\105\103\103\101\114\098\111\116\095\098\117\116\116\111\110", { Title = "\084\114\105\103\103\101\114\098\111\116\032\098\117\116\116\111\110", Default = config.mobile_triggerbot_button or false, Callback = function (mobileTriggerbotButton) config.mobile_triggerbot_button = mobileTriggerbotButton if triggerbotState.button then triggerbotState.button.Visible = mobileTriggerbotButton end
 if not mobileTriggerbotButton then triggerbotState.set(false) end
 end
 }) end
 _lIIlIIlIll.auto_check = function () local _lIlIlIllII = _lllIlIIlIl.get() if not _lIlIlIllII then return end
 if not _lIlIlIllII:FindFirstChild("\122\111\111\109\105\101\115") then return end
 _IllIllIlll.closest() if not _IllIllIlll.current or not _IllIllIlll.current.PrimaryPart then return end
 local _IllIlIIIlI = tick() local _IllIIlIlIl = 0x1 local _IIIIIlIIII = 0x10 local _lIIIlllIlI = _lIIlIIlIll.perform({ Ball_Properties = _lllIlIIlIl.props(), Entity_Properties = _IllIllIlll.props(), Ping = clampValue(dataPing:GetValue() / 0xA, _IllIIlIlIl, _IIIIIlIIII), }) local _lllllIlllI = localPlayer.Character local _lIlIlIIIII = _lllllIlllI and _lllllIlllI.PrimaryPart if not _lIlIlIIIII then return end
 local _llIIIlIlll = (_lIlIlIIIII.Position - _lllIlIIlIl.position(_lIlIlIllII)).Magnitude local _llIIIlIlIl = _lIlIlIllII:GetAttribute("\116\097\114\103\101\116") if not _llIIIlIlIl then return end
 local _llIlIlIIII = localPlayer:DistanceFromCharacter(_IllIllIlll.current.PrimaryPart.Position) if _llIlIlIIII > _lIIIlllIlI or _llIIIlIlll > _lIIIlllIlI then return end
 if _lllllIlllI:GetAttribute("\080\117\108\115\101\100") then return end
 if _llIIIlIlIl == name and _llIlIlIIII > 0x1E and _llIIIlIlll > 0x1E then return end
 if _llIIIlIlll <= _lIIIlllIlI and parryController.count > config.spam_threshold and _IllIlIIIlI - _lIIlIIlIll.last_auto >= 0.001 then _lIIlIIlIll.last_auto = _IllIlIIIlI parryController.fire(true) end
 end
 _lIIlIIlIll.set_auto = function (autoSpam) config.auto_spam = autoSpam if autoSpam then _IlllllIllI.auto_spam = preSimulation:Connect(_lIIlIIlIll.auto_check) elseif _IlllllIllI.auto_spam then _IlllllIllI.auto_spam:Disconnect() _IlllllIllI.auto_spam = nil end
 end
 spam:AddToggle("\065\117\116\111\083\112\097\109", { Title = "\065\117\116\111\032\115\112\097\109", Default = config.auto_spam or false, Callback = _lIIlIIlIll.set_auto }) spam:AddSlider("\084\104\114\101\115\104\111\108\100", { Title = "\084\104\114\101\115\104\111\108\100", Min = 0x1, Max = 0x3, Default = config.spam_threshold or 0x3, Rounding = 0x1, Callback = function (inputValue) spawnTask( function () if true then config.spam_threshold = tonumber(inputValue) else while true do end
 end
 end
 ) end
 }) UserInputService.InputBegan:Connect( function (input, gameProcessed) if gameProcessed then return end
 if input.KeyCode == Enum.KeyCode.E then _G.manual_spam = not _G.manual_spam end
 end
 ) if type(config.manual_spam) == "\115\116\114\105\110\103" and Enum.KeyCode[config.manual_spam] then _lIIlIIlIll.manual_key = Enum.KeyCode[config.manual_spam] end
 _lIIlIIlIll.update_button = function () if _lIIlIIlIll.mobile_button then _lIIlIIlIll.mobile_button.Text = _lIIlIIlIll.manual_on and "\109\097\110\117\097\108\032\115\112\097\109\032\091\111\110\093" or "\109\097\110\117\097\108\032\115\112\097\109\032\091\111\102\102\093" end
 end
 _lIIlIIlIll.set_manual = function (inputValue) local _IlllIlIlIl = inputValue == true if _lIIlIIlIll.manual_on == _IlllIlIlIl then _lIIlIIlIll.update_button() return end
 _lIIlIIlIll.manual_on = _IlllIlIlIl if _IlllllIllI.manual_spam then _IlllllIllI.manual_spam:Disconnect() _IlllllIllI.manual_spam = nil end
 if _IlllIlIlIl then local _lIlIlIllII = 0x0 _IlllllIllI.manual_spam = preSimulation:Connect( function () local _IllIlIIIlI = tick() if _IllIlIIIlI - _lIlIlIllII < 0.001 then return end
 _lIlIlIllII = _IllIlIIIlI parryController.fire(true) end
 ) end
 _lIIlIIlIll.update_button() if config.manual_notify then notificationService:notify({ title = "\109\097\110\117\097\108\032\115\112\097\109", content = _IlllIlIlIl and "\111\110" or "\111\102\102", duration = 0x4, }) end
 end
 end
 do if touchEnabled then hotkeys:AddToggle("\109\097\110\117\097\108\095\115\112\097\109\095\098\117\116\116\111\110", { Title = "\077\097\110\117\097\108\032\115\112\097\109\032\098\117\116\116\111\110", Default = config.mobile_manual_spam_button or false, Callback = function (mobileManualSpamButton) config.mobile_manual_spam_button = mobileManualSpamButton if _lIIlIIlIll.mobile_button then _lIIlIIlIll.mobile_button.Visible = mobileManualSpamButton end
 if not mobileManualSpamButton then _lIIlIIlIll.set_manual(false) end
 end
 }) end
 do local _lIlIlllllI = false local function _lllIlIIIIl() if _lIlIlllllI or not keyboardEnabled and not gamepadEnabled then return end
 _lIlIlllllI = true hotkeys:AddKeybind("\084\114\105\103\103\101\114\098\111\116\075\101\121", { Title = "\084\114\105\103\103\101\114\098\111\116\032\107\101\121", Default = triggerbotState.key.Name, Mode = "\084\111\103\103\108\101", ChangedCallback = function (key) if key ~= triggerbotState.key then triggerbotState.key = key end
 end
 , }) hotkeys:AddKeybind("\077\097\110\117\097\108\083\112\097\109\075\101\121", { Title = "\077\097\110\117\097\108\032\115\112\097\109\032\107\101\121", Default = _lIIlIIlIll.manual_key.Name, Mode = "\084\111\103\103\108\101", ChangedCallback = function (manualKey) if manualKey ~= _lIIlIIlIll.manual_key then _lIIlIIlIll.manual_key = manualKey config.manual_spam = manualKey.Name end
 end
 , }) end
 _lllIlIIIIl() UserInputService.GamepadConnected:Connect( function () gamepadEnabled = true _lllIlIIIIl() end
 ) UserInputService:GetPropertyChangedSignal("\075\101\121\098\111\097\114\100\069\110\097\098\108\101\100"):Connect( function () keyboardEnabled = UserInputService.KeyboardEnabled _lllIlIIIIl() end
 ) UserInputService:GetPropertyChangedSignal("\071\097\109\101\112\097\100\069\110\097\098\108\101\100"):Connect( function () gamepadEnabled = UserInputService.GamepadEnabled _lllIlIIIIl() end
 ) end
 end
 do UserInputService.InputBegan:Connect( function (input, gameProcessed) if gameProcessed then return end
 if input.KeyCode == triggerbotState.key then triggerbotState.set( not triggerbotState.on) end
 if input.KeyCode == _lIIlIIlIll.manual_key then _lIIlIIlIll.set_manual( not _lIIlIIlIll.manual_on) end
 end
 ) if touchEnabled then do local _lIIIIIIllI = createGuiInstance("\083\099\114\101\101\110\071\117\105", { Name = "\110\105\107\097\095\109\111\098\105\108\101", ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 0x32, Parent = localPlayer:WaitForChild("\080\108\097\121\101\114\071\117\105"), }) local function _lllIlIIIIl(inputValue, secondaryInput, tertiaryInput) local _lIlIlIllII = createGuiInstance("\084\101\120\116\066\117\116\116\111\110", { Name = inputValue, AnchorPoint = createVector2(0x1, 0.5), Position = secondaryInput, Size = fromOffset(0x82, 0x2C), BackgroundColor3 = colorFromRGB(0x16, 0x16, 0x16), BorderSizePixel = 0x0, AutoButtonColor = false, FontFace = Font.new("\114\098\120\097\115\115\101\116\058\047\047\102\111\110\116\115\047\102\097\109\105\108\105\101\115\047\071\111\116\104\097\109\083\083\109\046\106\115\111\110", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal), TextColor3 = colorFromRGB(0xFF, 0xFF, 0xFF), TextSize = 0x10, TextWrapped = false, ZIndex = 0x2, Parent = _lIIIIIIllI, }) createGuiInstance("\085\073\067\111\114\110\101\114", { CornerRadius = createUDim(0x0, 0x8), Parent = _lIlIlIllII, }) createGuiInstance("\085\073\083\116\114\111\107\101", { Color = colorFromRGB(0x23, 0x23, 0x23), Thickness = 0x1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = _lIlIlIllII, }) local _lIlIlllllI = false local _IIIlIlIlll = false local _IllIlIIIlI = nil local _IIlIIlIlll = nil local _IIIlIlIlIl = nil _lIlIlIllII.InputBegan:Connect( function (input) local _lIlIlIlIll = input.UserInputType if _lIlIlIlIll ~= Enum.UserInputType.Touch and _lIlIlIlIll ~= Enum.UserInputType.MouseButton1 then return end
 _lIlIlllllI = true _IIIlIlIlll = false _IllIlIIIlI = input _IIlIIlIlll = input.Position _IIIlIlIlIl = _lIlIlIllII.Position end
 ) UserInputService.InputChanged:Connect( function (input) if not _lIlIlllllI or input ~= _IllIlIIIlI and input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
 local _lllIllllIl = input.Position - _IIlIIlIlll if not (_llIIIllIlI > 0x590) then if _lllIllllIl.Magnitude > 0x4 then _IIIlIlIlll = true end
 _lIlIlIllII.Position = createUDim2(_IIIlIlIlIl.X.Scale, _IIIlIlIlIl.X.Offset + _lllIllllIl.X, _IIIlIlIlIl.Y.Scale, _IIIlIlIlIl.Y.Offset + _lllIllllIl.Y) return end
 while true do end
 end
 ) UserInputService.InputEnded:Connect( function (input) if input == _IllIlIIIlI then _lIlIlllllI = false _IllIlIIIlI = nil end
 end
 ) _lIlIlIllII.MouseButton1Click:Connect( function () if _IIIlIlIlll then _IIIlIlIlll = false return end
 tertiaryInput() _lIlIlIllII.BackgroundColor3 = colorFromRGB(0x28, 0x28, 0x28) createTween(TweenService, _lIlIlIllII, createTweenInfo(0.2), { BackgroundColor3 = colorFromRGB(0x16, 0x16, 0x16), }):Play() end
 ) return _lIlIlIllII end
 triggerbotState.button = _lllIlIIIIl("\084\114\105\103\103\101\114\098\111\116", createUDim2(0x1, -0x118, 0.5, 0x0), function () triggerbotState.set( not triggerbotState.on) end
 ) triggerbotState.button.Visible = config.mobile_triggerbot_button _lIIlIIlIll.mobile_button = _lllIlIIIIl("\077\097\110\117\097\108\083\112\097\109", createUDim2(0x1, -0x8C, 0.5, 0x0), function () _lIIlIIlIll.set_manual( not _lIIlIIlIll.manual_on) end
 ) end
 _lIIlIIlIll.mobile_button.Visible = config.mobile_manual_spam_button triggerbotState.update_button() _lIIlIIlIll.update_button() end
 spam:AddToggle("\109\097\110\117\097\108\095\110\111\116\105\102\121", { Title = "\077\097\110\117\097\108\032\110\111\116\105\102\121", Default = config.manual_notify or false, Callback = function (manualNotify) config.manual_notify = manualNotify end
 }) visual:AddToggle("\097\098\105\108\105\116\121\095\101\115\112", { Title = "\065\098\105\108\105\116\121\032\069\083\080", Default = config.ability_esp or false, Callback = function (abilityEsp) config.ability_esp = abilityEsp for k, _lIlIlIllII in abilityEspState.labels, nil, nil do if _lIlIlIllII and _lIlIlIllII.Parent then local _llIIIlIlIl = k:GetAttribute("\069\113\117\105\112\112\101\100\065\098\105\108\105\116\121") _lIlIlIllII.Text = _llIIIlIlIl and k.DisplayName .. "\032\091" .. _llIIIlIlIl .. "\093" or k.DisplayName _lIlIlIllII.Visible = abilityEsp end
 end
 end
 }) do local _IllIllIlll = { _IIIIIllIll = config.unlock_all or false, ready = false, shop_controller = nil, shop_api = nil, _lIlIIlllII = nil, _lIlIIllIIl = nil, sword_fn = swordEventConnections.sword_fn, selected_sword = nil, original_sword = nil, explosion_module = nil, explosion_original = nil, explosion_hooked = false, selected_explosion = nil, } _IllIllIlll.unlock_originals = setmetatable({ }, { __mode = "\107", }) _IllIllIlll.unlocked = { } _IllIllIlll.shadow_connections = setmetatable({ }, { __mode = "\107", }) _IllIllIlll.page_connections = { } _IllIllIlll.refresh_generation = { } _IllIllIlll.modern_originals = setmetatable({ }, { __mode = "\107", }) _IllIllIlll.modern_tag = "\110\105\107\097\095\117\110\108\111\099\107\095\097\108\108" _IllIllIlll.original_set_equipped = nil _IllIllIlll.original_buy_fns = { } _IllIllIlll.parry_connections = swordEventConnections.parry_connections _IllIllIlll.fire_connections = swordEventConnections.fire_sword_connections _IllIllIlll.play_parry = swordEventConnections.play_parry _IllIllIlll.chroma_bound = false _IllIllIlll.character_connection = nil _IllIllIlll.added_connection = nil _IllIllIlll.sword_attr_connection = nil local function _lllIlIIIIl(inputValue, secondaryInput) pcall( function () if secondaryInput then inputValue:Enable() else inputValue:Disable() end
 end
 ) end
 _IllIllIlll.set_sword_override = function (inputValue, secondaryInput) for _, _lIlIlIllII in inputValue.parry_connections, nil, nil do _lllIlIIIIl(_lIlIlIllII, not secondaryInput) end
 for _, _lIlIlIllII in inputValue.fire_connections, nil, nil do _lllIlIIIIl(_lIlIlIllII, not secondaryInput) end
 end
 _IllIllIlll.apply_chroma = function (inputValue, secondaryInput, tertiaryInput) local _IlIIlIlIll = tertiaryInput.ColorConfig or tertiaryInput.TweenColorConfig local _lIlIlllllI = not _IlIIlIlIll local _IIIlIIIllI if _lIlIlllllI then _IIIlIIIllI = tertiaryInput.Name:find("\067\104\114\111\109\097") or tertiaryInput.Name:find("\082\097\105\110\098\111\119") else _IIIlIIIllI = _lIlIlllllI end
 if _IIIlIIIllI then _IlIIlIlIll = "\067\104\114\111\109\097" end
 if _IlIIlIlIll then secondaryInput:SetAttribute("\067\111\108\111\114\067\111\110\102\105\103", _IlIIlIlIll) secondaryInput:AddTag("\084\119\101\101\110\067\111\108\111\114") end
 end
 _IllIllIlll.slot_fav_visual = function (inputValue, secondaryInput, tertiaryInput) if not tertiaryInput or not tertiaryInput:IsA("\071\117\105\079\098\106\101\099\116") then return end
 local _llIIIlIlIl = tertiaryInput:GetAttribute("\078\097\109\101") if not _llIIIlIlIl or _llIIIlIlIl == "" then return end
 local _lIlIlIllII = inputValue:is_fav(secondaryInput, _llIIIlIlIl) local _lIlIlIllIl = tertiaryInput:FindFirstChild("\070\097\118\111\114\105\116\101\100") if _lIlIlIllIl and _lIlIlIllIl:IsA("\073\109\097\103\101\076\097\098\101\108") then _lIlIlIllIl.Visible = _lIlIlIllII if _lIlIlIllII then _lIlIlIllIl.Image = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\054\057\055\057\056\055\048\053\056" end
 end
 local _IlIlllllll = tertiaryInput:FindFirstChild("\083\104\097\100\111\119") if _IlIlllllll and inputValue.unlocked[secondaryInput] then _IlIlllllll.Enabled = false end
 end
 _IllIllIlll.native_fav_map = function (inputValue) if inputValue.native_map then return inputValue.native_map end
 if not inputValue.shop_controller or type(inputValue.shop_controller._inventoryPages) ~= "\116\097\098\108\101" then return nil end
 for _, _lIlIlIllII in inputValue.shop_controller._inventoryPages, nil, nil do if type(_lIlIlIllII) ~= "\116\097\098\108\101" or type(_lIlIlIllII.MarkDirty) ~= "\102\117\110\099\116\105\111\110" then continue end
 local _IllIlIIIlI, _IllIIlIlIl = pcall(debug.getupvalues, _lIlIlIllII.MarkDirty) if not _IllIlIIIlI or type(_IllIIlIlIl) ~= "\116\097\098\108\101" then continue end
 for _, _IIIIIlIIII in _IllIIlIlIl, nil, nil do if type(_IIIIIlIIII) ~= "\102\117\110\099\116\105\111\110" then continue end
 local _lIIIlllIlI, _llIlIlIIII = pcall(debug.getupvalues, _IIIIIlIIII) if not _lIIIlllIlI or type(_llIlIlIIII) ~= "\116\097\098\108\101" then continue end
 for _, _IlIIllllIl in _llIlIlIIII, nil, nil do if type(_IlIIllllIl) ~= "\102\117\110\099\116\105\111\110" then continue end
 local _llIIllllIl, encodedValue = pcall(debug.getupvalues, _IlIIllllIl) if not _llIIllllIl or type(encodedValue) ~= "\116\097\098\108\101" then continue end
 for _, fallbackValue in encodedValue, nil, nil do if type(fallbackValue) == "\116\097\098\108\101" and fallbackValue.Sword ~= nil and fallbackValue.Explosion ~= nil and not fallbackValue._virtualItems then inputValue.native_map = fallbackValue return fallbackValue end
 end
 end
 end
 end
 return nil end
 _IllIllIlll.sync_fav_map = function (inputValue, secondaryInput) local _lIlIlIllII = inputValue:native_fav_map() if not _lIlIlIllII then return end
 local _IllIlIIIlI = _lIlIlIllII[secondaryInput] if type(_IllIlIIIlI) ~= "\116\097\098\108\101" then return end
 local _IlIllIIIIl = secondaryInput == "\083\119\111\114\100" and config.favorite_swords or secondaryInput == "\069\120\112\108\111\115\105\111\110" and config.favorite_explosions or { } for k in _IllIlIIIlI, nil, nil do if not _IlIllIIIIl[k] then _IllIlIIIlI[k] = nil end
 end
 for k, _IllIIlIlIl in _IlIllIIIIl, nil, nil do _IllIIlIlIl = _IllIIlIlIl and true _IllIlIIIlI[k] = _IllIIlIlIl or nil end
 end
 _IllIllIlll.is_fav = function (inputValue, secondaryInput, tertiaryInput) if secondaryInput == "\083\119\111\114\100" then return config.favorite_swords and config.favorite_swords[tertiaryInput] == true end
 if secondaryInput == "\069\120\112\108\111\115\105\111\110" then if false then while true do end
 end
 return config.favorite_explosions and config.favorite_explosions[tertiaryInput] == true end
 return false end
 _IllIllIlll.is_deleted = function (inputValue, secondaryInput, tertiaryInput) if secondaryInput == "\083\119\111\114\100" then return config.deleted_swords and config.deleted_swords[tertiaryInput] == true end
 if secondaryInput == "\069\120\112\108\111\115\105\111\110" then return config.deleted_explosions and config.deleted_explosions[tertiaryInput] == true end
 return false end
 _IllIllIlll.refresh_shop_item = function (inputValue, secondaryInput, tertiaryInput, quaternaryInput) local _IIIIlIlIII = inputValue.shop_controller and inputValue.shop_controller._virtualItems[secondaryInput] local _lIllIIIIIl = inputValue.shop_controller and inputValue.shop_controller._inventoryPages[secondaryInput] if type(_IIIIlIlIII) == "\116\097\098\108\101" then for _, _lIlIlIllII in _IIIIlIlIII, nil, nil do if _lIlIlIllII.Name == tertiaryInput then _lIlIlIllII.Section = quaternaryInput and "\079\119\110\101\100" or "\085\110\111\119\110\101\100" if _lIlIlIllII.OwnsItem and type(_lIlIlIllII.OwnsItem.Set) == "\102\117\110\099\116\105\111\110" then pcall(_lIlIlIllII.OwnsItem.Set, _lIlIlIllII.OwnsItem, quaternaryInput) end
 if not quaternaryInput then _lIlIlIllII.IsFavorited = false _lIlIlIllII.Name_ = (_lIlIlIllII.Name_ or _lIlIlIllII.Name):gsub("\094\035", "") _lIlIlIllII.LayoutOrder = _lIlIlIllII.OriginalLayoutOrder or _lIlIlIllII.LayoutOrder or 0x0 end
 if _lIllIIIIIl and _lIllIIIIIl.MarkDirty then _lIllIIIIIl.MarkDirty(_lIlIlIllII, false, true) end
 break end
 end
 end
 if _lIllIIIIIl and _lIllIIIIIl.MarkDirty then _lIllIIIIIl.MarkDirty(nil, true, true) end
 end
 _IllIllIlll.delete_item = function (inputValue, secondaryInput, tertiaryInput) if secondaryInput == "\083\119\111\114\100" then config.deleted_swords = config.deleted_swords or { } config.deleted_swords[tertiaryInput] = true if config.favorite_swords then config.favorite_swords[tertiaryInput] = nil end
 if inputValue.selected_sword == tertiaryInput then inputValue:restore_sword() end
 elseif secondaryInput == "\069\120\112\108\111\115\105\111\110" then config.deleted_explosions = config.deleted_explosions or { } config.deleted_explosions[tertiaryInput] = true if config.favorite_explosions then config.favorite_explosions[tertiaryInput] = nil end
 if inputValue.selected_explosion == tertiaryInput then inputValue.selected_explosion = nil end
 end
 pcall(configStorage.save) inputValue:sync_fav_map(secondaryInput) if inputValue.shop_controller then inputValue:refresh_shop_item(secondaryInput, tertiaryInput, false) end
 inputValue:refresh_selected() if not _llIIIIIlll then return end
 end
 _IllIllIlll.undelete_item = function (inputValue, secondaryInput, tertiaryInput) if secondaryInput == "\083\119\111\114\100" and config.deleted_swords then config.deleted_swords[tertiaryInput] = nil elseif secondaryInput == "\069\120\112\108\111\115\105\111\110" and config.deleted_explosions then config.deleted_explosions[tertiaryInput] = nil end
 pcall(configStorage.save) inputValue:sync_fav_map(secondaryInput) if inputValue.shop_controller then inputValue:refresh_shop_item(secondaryInput, tertiaryInput, true) end
 inputValue:refresh_selected() end
 _IllIllIlll.toggle_fav = function (inputValue, secondaryInput, tertiaryInput) if inputValue:is_deleted(secondaryInput, tertiaryInput) then return end
 if secondaryInput == "\083\119\111\114\100" then config.favorite_swords = config.favorite_swords or { } config.favorite_swords[tertiaryInput] = config.favorite_swords[tertiaryInput] and nil or true elseif secondaryInput == "\069\120\112\108\111\115\105\111\110" then config.favorite_explosions = config.favorite_explosions or { } config.favorite_explosions[tertiaryInput] = config.favorite_explosions[tertiaryInput] and nil or true end
 pcall(configStorage.save) inputValue:sync_fav_map(secondaryInput) local _lIIIlIIlII = inputValue.shop_controller and inputValue.shop_controller._virtualItems and inputValue.shop_controller._virtualItems[secondaryInput] local _llllllIIII = inputValue.shop_controller and inputValue.shop_controller._inventoryPages and inputValue.shop_controller._inventoryPages[secondaryInput] local _lIlIlIllII = inputValue:is_fav(secondaryInput, tertiaryInput) if type(_lIIIlIIlII) == "\116\097\098\108\101" then for _, _IllIlIIIlI in _lIIIlIIlII, nil, nil do if _IllIlIIIlI.Name == tertiaryInput then _IllIlIIIlI.IsFavorited = _lIlIlIllII if _IllIlIIIlI.OwnsItem and type(_IllIlIIIlI.OwnsItem.Set) == "\102\117\110\099\116\105\111\110" then pcall(_IllIlIIIlI.OwnsItem.Set, _IllIlIIIlI.OwnsItem, true) end
 local _IllIlIlIII = _IllIlIIIlI.OriginalLayoutOrder or _IllIlIIIlI.LayoutOrder or 0x0 _IllIlIIIlI.OriginalLayoutOrder = _IllIlIlIII if _lIlIlIllII then _IllIlIIIlI.LayoutOrder = _IllIlIlIII - 0x3E8 _IllIlIIIlI.Name_ = "\035" .. (_IllIlIIIlI.Name_ or _IllIlIIIlI.Name):gsub("\094\035", "") else _IllIlIIIlI.LayoutOrder = _IllIlIlIII _IllIlIIIlI.Name_ = (_IllIlIIIlI.Name_ or _IllIlIIIlI.Name):gsub("\094\035", "") end
 break end
 end
 end
 if _llllllIIII and _llllllIIII.MarkDirty then _llllllIIII.MarkDirty(nil, true, true) end
 inputValue:refresh_selected() end
 _IllIllIlll.refresh_favs = function (inputValue, secondaryInput) if not inputValue.shop_controller then return end
 inputValue:sync_fav_map(secondaryInput) local _lIlIlIllII = inputValue.shop_controller._virtualItems[secondaryInput] local _IllIlIIIlI = inputValue.shop_controller._inventoryPages[secondaryInput] if type(_lIlIlIllII) ~= "\116\097\098\108\101" then return end
 for _, _IllIIlIlIl in _lIlIlIllII, nil, nil do local _IIIIIlIIII = inputValue:is_fav(secondaryInput, _IllIIlIlIl.Name) _IllIIlIlIl.IsFavorited = _IIIIIlIIII local _lllIIlllll = _IllIIlIlIl.OwnsItem if _lllIIlllll then local _lIIIlllIlI = "\102\117\110\099\116\105\111\110" _lllIIlllll = type(_IllIIlIlIl.OwnsItem.Set) == _lIIIlllIlI end
 if _lllIIlllll then pcall(_IllIIlIlIl.OwnsItem.Set, _IllIIlIlIl.OwnsItem, true) end
 local _IllIlIlIII = _IllIIlIlIl.OriginalLayoutOrder or _IllIIlIlIl.LayoutOrder or 0x0 _IllIIlIlIl.OriginalLayoutOrder = _IllIlIlIII if _IIIIIlIIII then _IllIIlIlIl.LayoutOrder = _IllIlIlIII - 0x3E8 _IllIIlIlIl.Name_ = "\035" .. (_IllIIlIlIl.Name_ or _IllIIlIlIl.Name):gsub("\094\035", "") else _IllIIlIlIl.LayoutOrder = _IllIlIlIII _IllIIlIlIl.Name_ = (_IllIIlIlIl.Name_ or _IllIIlIlIl.Name):gsub("\094\035", "") end
 end
 if _IllIlIIIlI and _IllIlIIIlI.MarkDirty then _IllIlIIIlI.MarkDirty(nil, true, true) end
 end
 _IllIllIlll.equip_sword = function (inputValue, secondaryInput, tertiaryInput) if not inputValue.swords then return false end
 local _lIlIlllllI = not tertiaryInput if _lIlIlllllI and inputValue:is_deleted("\083\119\111\114\100", secondaryInput) then inputValue:undelete_item("\083\119\111\114\100", secondaryInput) end
 local _IllllIllII = inputValue.swords:GetSword(secondaryInput) if not _IllllIllII then return false end
 local _lllllIlllI = localPlayer.Character if not _lllllIlllI then return false end
 if _lIlIlllllI and not inputValue.original_sword then inputValue.original_sword = localPlayer:GetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100") or _lllllIlllI:GetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100") end
 if tertiaryInput then inputValue.selected_sword = nil else inputValue.selected_sword = _IllllIllII.Name config.last_equipped_sword = _IllllIllII.Name inputValue:set_sword_override(true) end
 localPlayer:SetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100", _IllllIllII.Name) _lllllIlllI:SetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100", _IllllIllII.Name) pcall( function () local _llIIIIlIlI = inputValue.swords.EquipSwordTo for k, _lIlIlIllII in debug.getupvalues(_llIIIIlIlI) do if _lIlIlIllII == true then debug.setupvalue(_llIIIIlIlI, k, false) break end
 end
 if not (_llIIIllIlI >= 0x59D) then return end
 while true do end
 end
 ) if not pcall( function () inputValue.swords:EquipSwordTo(_lllllIlllI, _IllllIllII.Name) end
 ) then return false end
 local _lIlIlIllII = _lllllIlllI:FindFirstChild(_IllllIllII.Name) if _lIlIlIllII then if true then inputValue:apply_chroma(_lIlIlIllII, _IllllIllII) else while true do end
 end
 end
 if inputValue.sword_fn then pcall(inputValue.sword_fn, _IllllIllII.Name) end
 return true end
 _IllIllIlll.restore_sword = function (inputValue) if inputValue.original_sword and inputValue.original_sword ~= "" then inputValue:equip_sword(inputValue.original_sword, true) else inputValue.selected_sword = nil end
 inputValue.original_sword = nil inputValue:set_sword_override(false) end
 _IllIllIlll.ensure_explosion_wrap = function (inputValue) if inputValue.explosion_hooked or not inputValue.explosion_module then return end
 inputValue.explosion_hooked = true inputValue.explosion_original = inputValue.explosion_module.PlayExplosion inputValue.explosion_module.PlayExplosion = function (secondaryInput, tertiaryInput, quaternaryInput, fifthInput, sixthInput, seventhInput, eighthInput) if _IllIllIlll.enabled and _IllIllIlll.selected_explosion and _IllIllIlll.selected_explosion ~= "" and eighthInput and seventhInput == localPlayer.Character then tertiaryInput = _IllIllIlll.selected_explosion end
 return _IllIllIlll.explosion_original(secondaryInput, tertiaryInput, quaternaryInput, fifthInput, sixthInput, seventhInput, eighthInput) end
 end
 _IllIllIlll.equip_explosion = function (inputValue, selectedExplosion) if inputValue:is_deleted("\069\120\112\108\111\115\105\111\110", selectedExplosion) then inputValue:undelete_item("\069\120\112\108\111\115\105\111\110", selectedExplosion) end
 inputValue.selected_explosion = selectedExplosion config.last_equipped_explosion = selectedExplosion inputValue:ensure_explosion_wrap() return true end
 _IllIllIlll.bind_shadow = function (inputValue, secondaryInput, tertiaryInput) if inputValue.shadow_connections[tertiaryInput] then return end
 local function _IIIIIlIIlI() if inputValue.unlocked[secondaryInput] and tertiaryInput.Parent and tertiaryInput.Enabled then tertiaryInput.Enabled = false end
 end
 inputValue.shadow_connections[tertiaryInput] = tertiaryInput:GetPropertyChangedSignal("\069\110\097\098\108\101\100"):Connect(_IIIIIlIIlI) _IIIIIlIIlI() end
 _IllIllIlll.refresh_visuals = function (inputValue, secondaryInput) if inputValue.shop_controller then local _lIlIlIllII = inputValue.shop_controller._inventoryPages[secondaryInput] local _IllIlIIIlI = inputValue.shop_controller._virtualItems[secondaryInput] local _lIlIlllllI = not _lIlIlIllII or not _lIlIlIllII.Scroll if not _lIlIlllllI then local _IllIIlIlIl = "\116\097\098\108\101" _lIlIlllllI = type(_IllIlIIIlI) ~= _IllIIlIlIl end
 if _lIlIlllllI then return end
 if not inputValue.page_connections[secondaryInput] and _lIlIlIllII.ScrollingFrame then inputValue.page_connections[secondaryInput] = _lIlIlIllII.ScrollingFrame.DescendantAdded:Connect( function (descendant) if descendant:IsA("\071\117\105\079\098\106\101\099\116") then deferTask( function () inputValue:slot_fav_visual(secondaryInput, descendant) local _IlIlllllll = descendant:FindFirstChild("\083\104\097\100\111\119") or descendant.Name == "\083\104\097\100\111\119" and descendant if _IlIlllllll and inputValue.unlocked[secondaryInput] then inputValue:bind_shadow(secondaryInput, _IlIlllllll) end
 end
 ) end
 end
 ) end
 deferTask( function () for _, _IllIIlIlIl in _IllIlIIIlI, nil, nil do local _IIIIIlIIII, _lIIIlllIlI = pcall(_lIlIlIllII.Scroll.GetRenderedSlot, _IllIIlIlIl) if _IIIIIlIIII and _lIIIlllIlI then inputValue:slot_fav_visual(secondaryInput, _lIIIlllIlI) local _IlIlllllll = _lIIIlllIlI:FindFirstChild("\083\104\097\100\111\119") if _IlIlllllll then if inputValue.unlocked[secondaryInput] then inputValue:bind_shadow(secondaryInput, _IlIlllllll) else _IlIlllllll.Enabled = not _IllIIlIlIl.OwnsItem:Get() end
 end
 end
 end
 end
 ) return end
 if not (_lllIlIIIII <= 0xC9E) then return end
 while true do end
 end
 _IllIllIlll.set_category_unlock = function (inputValue, secondaryInput, tertiaryInput) if not inputValue.shop_controller then return end
 if tertiaryInput then if _llIIIllIlI > 0x591 then while true do end
 else inputValue:sync_fav_map(secondaryInput) end
 end
 local _lIlIlIllII = inputValue.shop_controller._virtualItems[secondaryInput] local _IllIlIIIlI = inputValue.shop_controller._inventoryPages[secondaryInput] if type(_lIlIlIllII) ~= "\116\097\098\108\101" then return end
 if _IllIlIIIlI and _IllIlIIIlI.BeginBatch then _IllIlIIIlI.BeginBatch() end
 if tertiaryInput then inputValue.unlocked[secondaryInput] = true local _IIlIIIIlll = { } for _, _IllIIlIlIl in _lIlIlIllII, nil, nil do if _IllIIlIlIl.InventoryKey then _IIlIIIIlll[_IllIIlIlIl.Name] = true end
 end
 for _, _IllIIlIlIl in _lIlIlIllII, nil, nil do if not inputValue.unlock_originals[_IllIIlIlIl] then inputValue.unlock_originals[_IllIIlIlIl] = { Section = _IllIIlIlIl.Section, ForceHide = _IllIIlIlIl.ForceHide, OriginalLayoutOrder = _IllIIlIlIl.OriginalLayoutOrder or _IllIIlIlIl.LayoutOrder, } end
 local _IIIIIlIIII = inputValue:is_deleted(secondaryInput, _IllIIlIlIl.Name) local _lIIIlllIlI = _IIIIIlIIII and "\085\110\111\119\110\101\100" or "\079\119\110\101\100" local _lIlIlllllI = false if _IllIIlIlIl.Section ~= _lIIIlllIlI then _IllIIlIlIl.Section = _lIIIlllIlI _lIlIlllllI = true end
 if _IllIIlIlIl.OwnsItem and type(_IllIIlIlIl.OwnsItem.Set) == "\102\117\110\099\116\105\111\110" then pcall(_IllIIlIlIl.OwnsItem.Set, _IllIIlIlIl.OwnsItem, not _IIIIIlIIII) end
 local _IlIIllIlll = not _IIIIIlIIII and inputValue:is_fav(secondaryInput, _IllIIlIlIl.Name) _IllIIlIlIl.IsFavorited = _IlIIllIlll local _IllIlIlIII = _IllIIlIlIl.OriginalLayoutOrder or _IllIIlIlIl.LayoutOrder or 0x0 _IllIIlIlIl.OriginalLayoutOrder = _IllIlIlIII local _lllIIlIIlI = _IllIlIlIII - (_IlIIllIlll and 0x3E8 or 0x0) if _IllIIlIlIl.LayoutOrder ~= _lllIIlIIlI then _IllIIlIlIl.LayoutOrder = _lllIIlIIlI _lIlIlllllI = true end
 if _IlIIllIlll then local _IIIIllllll = "\035" .. (_IllIIlIlIl.Name_ or _IllIIlIlIl.Name):gsub("\094\035", "") if _IllIIlIlIl.Name_ ~= _IIIIllllll then _IllIIlIlIl.OriginalName_ = _IllIIlIlIl.OriginalName_ or _IllIIlIlIl.Name_ _IllIIlIlIl.Name_ = _IIIIllllll _lIlIlllllI = true end
 else local _IIIIllllll = (_IllIIlIlIl.Name_ or _IllIIlIlIl.Name):gsub("\094\035", "") if _IllIIlIlIl.Name_ ~= _IIIIllllll then _IllIIlIlIl.Name_ = _IIIIllllll _lIlIlllllI = true end
 end
 local _lIIlIIllll = not _IllIIlIlIl.InventoryKey and _IIlIIIIlll[_IllIIlIlIl.Name] or false if _IllIIlIlIl.ForceHide ~= _lIIlIIllll then _IllIIlIlIl.ForceHide = _lIIlIIllll _lIlIlllllI = true end
 if _lIlIlllllI and _IllIlIIIlI and _IllIlIIIlI.MarkDirty then _IllIlIIIlI.MarkDirty(_IllIIlIlIl, false, true) end
 end
 else inputValue.unlocked[secondaryInput] = nil for _, _IllIIlIlIl in _lIlIlIllII, nil, nil do local _IIIIIlIIII = inputValue.unlock_originals[_IllIIlIlIl] if _IIIIIlIIII then local _lIlIlllllI = false if _IllIIlIlIl.Section ~= _IIIIIlIIII.Section then _IllIIlIlIl.Section = _IIIIIlIIII.Section _lIlIlllllI = true end
 if _IllIIlIlIl.ForceHide ~= _IIIIIlIIII.ForceHide then _IllIIlIlIl.ForceHide = _IIIIIlIIII.ForceHide _lIlIlllllI = true end
 if _lIlIlllllI and _IllIlIIIlI and _IllIlIIIlI.MarkDirty then _IllIlIIIlI.MarkDirty(_IllIIlIlIl, false, true) end
 inputValue.unlock_originals[_IllIIlIlIl] = nil end
 end
 end
 if _IllIlIIIlI and _IllIlIIIlI.MarkDirty then _IllIlIIIlI.MarkDirty(nil, true, true) end
 if _IllIlIIIlI and _IllIlIIIlI.EndBatch then _IllIlIIIlI.EndBatch() end
 inputValue:refresh_visuals(secondaryInput) end
 _IllIllIlll.expected_size = function (inputValue, secondaryInput) local _lllIllllIl if secondaryInput == "\083\119\111\114\100" and inputValue.swords then local _lIlIlIllII, _IllIlIIIlI = pcall( function () return inputValue.swords:GetCollection() end
 ) local _lIlIlllllI = _lIlIlIllII and type(_IllIlIIIlI) == "\116\097\098\108\101" _lllIllllIl = 0x0 if _lIlIlllllI then for k in _IllIlIIIlI, nil, nil do _lllIllllIl = _lllIllllIl + 0x1 end
 end
 else _lllIllllIl = 0x0 if secondaryInput == "\069\120\112\108\111\115\105\111\110" then local _IlllIIIIII = ReplicatedStorage:FindFirstChild("\077\105\115\099") _IlllIIIIII = _IlllIIIIII and _IlllIIIIII:FindFirstChild("\068\097\116\097\069\120\112\108\111\115\105\111\110\115") if _IlllIIIIII then for _, _lIlIlIllII in _IlllIIIIII:GetChildren() do if not _lIlIlIllII:GetAttribute("\072\105\100\100\101\110") then _lllIllllIl = _lllIllllIl + 0x1 end
 end
 end
 end
 end
 return _lllIllllIl end
 _IllIllIlll.schedule_refresh = function (inputValue, secondaryInput) inputValue.refresh_generation[secondaryInput] = (inputValue.refresh_generation[secondaryInput] or 0x0) + 0x1 local _lIlIlIllII = inputValue.refresh_generation[secondaryInput] if type(inputValue.shop_controller._loadInventoryPage) == "\102\117\110\099\116\105\111\110" then pcall(inputValue.shop_controller._loadInventoryPage, secondaryInput) end
 spawnTask( function () local _IllIlIIIlI = inputValue:expected_size(secondaryInput) local _lllIllllIl = -0x1 local _lIIlIlllIl = 0x0 for i = 0x1, 0x78 do heartbeat:Wait() if not inputValue.enabled or not inputValue.unlocked[secondaryInput] or inputValue.refresh_generation[secondaryInput] ~= _lIlIlIllII then return end
 local _IllIIlIlIl = inputValue.shop_controller._virtualItems[secondaryInput] local _IllllIllII = 0x0 if type(_IllIIlIlIl) == "\116\097\098\108\101" then for _, _IIIIIlIIII in _IllIIlIlIl, nil, nil do if not _IIIIIlIIII.InventoryKey then _IllllIllII = _IllllIllII + 0x1 end
 end
 end
 if _IllllIllII == _lllIllllIl and _IllllIllII > 0x0 then _lIIlIlllIl = _lIIlIlllIl + 0x1 else _lIIlIlllIl = 0x0 _lllIllllIl = _IllllIllII end
 if _IllIlIIIlI > 0x0 and _IllllIllII >= _IllIlIIIlI or _IllIlIIIlI == 0x0 and _lIIlIlllIl >= 0x5 then heartbeat:Wait() inputValue:set_category_unlock(secondaryInput, true) return end
 end
 if inputValue.enabled and inputValue.unlocked[secondaryInput] and inputValue.refresh_generation[secondaryInput] == _lIlIlIllII then inputValue:set_category_unlock(secondaryInput, true) end
 end
 ) end
 _IllIllIlll.refresh_selected = function (inputValue) if not inputValue.shop_controller or not inputValue.shop then return end
 local _llIlIIlIII = inputValue.shop_controller._selectedItem if not _llIlIIlIII then return end
 local _lIIIllIIII = inputValue.shop.Holder.InfoBG:FindFirstChild("\066\117\121\066\117\116\116\111\110") local _IlIIlIIIlI = inputValue.shop.Holder:FindFirstChild("\070\097\118\111\114\105\116\101") local _IlIlIlIlII = inputValue.shop.Holder.InfoBG:FindFirstChild("\068\101\108\101\116\101") if inputValue.enabled and inputValue.unlocked[_llIlIIlIII.type] and (_llIlIIlIII.type == "\083\119\111\114\100" or _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110") then local _lIIIlIIlII = inputValue.shop_controller._virtualItems and inputValue.shop_controller._virtualItems[_llIlIIlIII.type] local _lIlIlIllII = nil if _lIIIlIIlII then _lIlIlIllII = inputValue.shop_controller._virtualItems[_llIlIIlIII.type][_llIlIIlIII.key or _llIlIIlIII.name] end
 if inputValue:is_deleted(_llIlIIlIII.type, _llIlIIlIII.name) or _lIlIlIllII and _lIlIlIllII.Section == "\085\110\111\119\110\101\100" then if _lIIIllIIII then _lIIIllIIII.Visible = false end
 if _IlIIlIIIlI then _IlIIlIIIlI.Visible = false end
 if _IlIlIlIlII then _IlIlIlIlII.Visible = true end
 else if _lIIIllIIII then _lIIIllIIII.Visible = true if _lIIIllIIII:FindFirstChild("\080\114\105\099\101\084\097\103") and _lIIIllIIII.PriceTag:FindFirstChild("\084\101\120\116\076\097\098\101\108") then _lIIIllIIII.PriceTag.TextLabel.Visible = true _lIIIllIIII.PriceTag.TextLabel.Text = "\069\113\117\105\112" end
 if _lIIIllIIII:FindFirstChild("\080\114\105\099\101\084\097\103") and _lIIIllIIII.PriceTag:FindFirstChild("\080\114\105\099\101") then _lIIIllIIII.PriceTag.Price.Visible = false end
 end
 if _IlIIlIIIlI then _IlIIlIIIlI.Visible = true local _IllIlIIIlI = inputValue:is_fav(_llIlIIlIII.type, _llIlIIlIII.name) _IlIIlIIIlI.Image = _IllIlIIIlI and "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\054\057\055\057\056\055\048\053\056" or "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\054\057\055\057\056\049\055\053\048" _IlIIlIIIlI.HoverImage = _IllIlIIIlI and "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\054\057\055\057\056\051\048\054\050" or "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\053\054\057\055\057\056\055\048\053\056" end
 if _IlIlIlIlII then _IlIlIlIlII.Visible = true end
 end
 end
 end
 _IllIllIlll.set_modern_unlock = function (inputValue, secondaryInput, tertiaryInput) local _IIIlIIIlIl = inputValue.shop_api local _IlIIIIIIII = _IIIlIIIlIl and _IIIlIIIlIl.OwnedBases and _IIIlIIIlIl.OwnedBases[secondaryInput] if type(_IlIIIIIIII) ~= "\116\097\098\108\101" then return end
 for k, _lIlIlIllII in _IlIIIIIIII, nil, nil do local _IllIlIIIlI, _IllIIlIlIl = pcall(_IIIlIIIlIl.ParseItemKey, _IIIlIIIlIl, secondaryInput, { Name = k, }) _IllIlIIIlI = _IllIlIIIlI and _IllIIlIlIl local _IIlllIIIII = nil if _IllIlIIIlI then local _lIlIlllllI, _IIIIIlIIII = pcall(_IIIlIIIlIl.GetItemData, _IIIlIIIlIl, secondaryInput, _IllIIlIlIl) _lIlIlllllI = _lIlIlllllI and type(_IIIIIlIIII) == "\116\097\098\108\101" _IIlllIIIII = nil if _lIlIlllllI then _IIlllIIIII = _IIIIIlIIII.OwnedCopies end
 end
 local _lIlIlllllI = tertiaryInput and _IIlllIIIII and type(_IIlllIIIII.Get) == "\102\117\110\099\116\105\111\110" if _lIlIlllllI then local _IIIIIlIIII = "\102\117\110\099\116\105\111\110" _lIlIlllllI = type(_IIlllIIIII.Set) == _IIIIIlIIII end
 if _lIlIlllllI then if not inputValue.modern_originals[_IIlllIIIII] then local _IIIIIlIIII, _lIIIlllIlI = pcall(_IIlllIIIII.Get, _IIlllIIIII) if _IIIIIlIIII then inputValue.modern_originals[_IIlllIIIII] = { Value = _lIIIlllIlI, } end
 end
 local _IIIIIlIIII, _lIIIlllIlI = pcall(_IIlllIIIII.Get, _IIlllIIIII) if _IIIIIlIIII and (type(_lIIIlllIlI) ~= "\110\117\109\098\101\114" or _lIIIlllIlI < 0x1) then pcall(_IIlllIIIII.Set, _IIlllIIIII, 0x1) end
 end
 if _lIlIlIllII and type(_lIlIlIllII.SetTag) == "\102\117\110\099\116\105\111\110" then pcall(_lIlIlIllII.SetTag, _lIlIlIllII, inputValue.modern_tag, tertiaryInput and true or nil) end
 if not tertiaryInput and _IIlllIIIII then local _IIIIIlIIII = inputValue.modern_originals[_IIlllIIIII] if _IIIIIlIIII and type(_IIlllIIIII.Set) == "\102\117\110\099\116\105\111\110" then local _IlIIIIlIlI = _lIlIlIllII and _lIlIlIllII.State local _IIIlIlIlll = _IlIIIIlIlI and type(_IlIIIIlIlI.Get) == "\102\117\110\099\116\105\111\110" local _lIIlIllIII = false if _IIIlIlIlll then local _lIIIlllIlI, _llIlIlIIII = pcall(_IlIIIIlIlI.Get, _IlIIIIlIlI) _lIIlIllIII = _lIIIlllIlI and _llIlIlIIII == true end
 if not _lIIlIllIII then pcall(_IIlllIIIII.Set, _IIlllIIIII, _IIIIIlIIII.Value) end
 inputValue.modern_originals[_IIlllIIIII] = nil end
 end
 end
 end
 _IllIllIlll.hook_modern_shop = function (inputValue) local _IIIlIIIlIl = inputValue.shop_api if not _IIIlIIIlIl or inputValue.original_set_equipped then return end
 if type(_IIIlIIIlIl.SetEquipped) ~= "\102\117\110\099\116\105\111\110" then return end
 inputValue.original_set_equipped = _IIIlIIIlIl.SetEquipped _IIIlIIIlIl.SetEquipped = function (secondaryInput, ...) local _IIlIIIIlll = { ..., } local _llllllllIl = _IIlIIIIlll[0x1] local _IIIIllllll = _IIlIIIIlll[0x2] if type(_llllllllIl) == "\116\097\098\108\101" then _IIIIllllll = _llllllllIl.Name _llllllllIl = _llllllllIl.ItemType elseif type(_IIIIllllll) == "\116\097\098\108\101" then _IIIIllllll = _IIIIllllll.Name end
 local _IlIIIIIIII = _IIIlIIIlIl.OwnedBases local _lIlIlIllII = "\116\097\098\108\101" local _lIlIlllllI = type(_IlIIIIIIII) == _lIlIlIllII and _IlIIIIIIII[_llllllllIl] local _IIIlIlIlll = type(_lIlIlllllI) == "\116\097\098\108\101" and _lIlIlllllI[_IIIIllllll] ~= nil local _IIIIIllIll = _IllIllIlll.enabled local _lIIlIllIII if _IIIIIllIll then _lIIlIllIII = _IIIlIlIlll or _llllllllIl == "\083\119\111\114\100" or _llllllllIl == "\069\120\112\108\111\115\105\111\110" else _lIIlIllIII = _IIIIIllIll end
 if _lIIlIllIII then local _IIlIIlIIIl = _llllllllIl == "\083\119\111\114\100" local _IIIlIIIllI if _IIlIIlIIIl then _IIIlIIIllI = _IIlIIlIIIl else _IIIlIIIllI = tostring(_llllllllIl):lower():find("\115\119\111\114\100") end
 if _IIIlIIIllI and _IllIllIlll:equip_sword(_IIIIllllll, false) then return true end
 local _IIllIlIIII = _llllllllIl == "\069\120\112\108\111\115\105\111\110" if not _IIllIlIIII then _IIllIlIIII = tostring(_llllllllIl):lower():find("\101\120\112\108\111\115\105\111\110") end
 if _IIllIlIIII then return _IllIllIlll:equip_explosion(_IIIIllllll) end
 end
 return _IllIllIlll.original_set_equipped(secondaryInput, unpack(_IIlIIIIlll)) end
 end
 _IllIllIlll.hook_shop = function (inputValue) local _lIlIIlllII = localPlayer:WaitForChild("\080\108\097\121\101\114\071\117\105"):FindFirstChild("\083\104\111\112") local _IIIIIIlIll = _lIlIIlllII and _lIlIIlllII:FindFirstChild("\072\111\108\100\101\114") local _IIIlIIllII = _IIIIIIlIll and _IIIIIIlIll:FindFirstChild("\073\110\102\111\066\071") local _lIIIllIIII = _IIIlIIllII and _IIIlIIllII:FindFirstChild("\066\117\121\066\117\116\116\111\110") if not _lIlIIlllII or not _lIIIllIIII then return false end
 inputValue.shop = _lIlIIlllII for _, _lIlIlIllII in getconnections(_lIIIllIIII.Activated) do if _lIlIlIllII and _lIlIlIllII.Function then insertIntoTable(inputValue.original_buy_fns, _lIlIlIllII.Function) _lIlIlIllII:Disable() end
 end
 _IIIIIIlIll = _IIIIIIlIll and _IIIIIIlIll:FindFirstChild("\070\097\118\111\114\105\116\101") if _IIIIIIlIll then for _, _lIlIlIllII in getconnections(_IIIIIIlIll.Activated) do if _lIlIlIllII and _lIlIlIllII.Function then _lIlIlIllII:Disable() end
 end
 _IIIIIIlIll.Activated:Connect( function () local _llIlIIlIII = inputValue.shop_controller and inputValue.shop_controller._selectedItem if _llIlIIlIII and inputValue.enabled and (_llIlIIlIII.type == "\083\119\111\114\100" or _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110") then inputValue:toggle_fav(_llIlIIlIII.type, _llIlIIlIII.name) end
 end
 ) end
 _IIIlIIllII = _IIIlIIllII and _IIIlIIllII:FindFirstChild("\068\101\108\101\116\101") if _IIIlIIllII then for _, _lIlIlIllII in getconnections(_IIIlIIllII.Activated) do if _lIlIlIllII and _lIlIlIllII.Function then _lIlIlIllII:Disable() end
 end
 _IIIlIIllII.Activated:Connect( function () local _llIlIIlIII = inputValue.shop_controller and inputValue.shop_controller._selectedItem local _lIlIlllllI = not _llIlIIlIII or not inputValue.enabled local _IIIlIlIlll if _lIlIlllllI then _IIIlIlIlll = _lIlIlllllI else _IIIlIlIlll = _llIlIIlIII.type ~= "\083\119\111\114\100" and _llIlIIlIII.type ~= "\069\120\112\108\111\115\105\111\110" end
 if _IIIlIlIlll then return end
 if inputValue:is_deleted(_llIlIIlIII.type, _llIlIIlIII.name) then inputValue:undelete_item(_llIlIIlIII.type, _llIlIIlIII.name) else inputValue:delete_item(_llIlIIlIII.type, _llIlIIlIII.name) end
 end
 ) end
 game:GetService("\071\117\105\083\101\114\118\105\099\101"):GetPropertyChangedSignal("\083\101\108\101\099\116\101\100\079\098\106\101\099\116"):Connect( function () if not inputValue.enabled or not inputValue.shop or not inputValue.shop.Enabled then return end
 deferTask( function () inputValue:refresh_selected() end
 ) end
 ) UserInputService.InputBegan:Connect( function (input, gameProcessed) if true then if gameProcessed or not inputValue.enabled or not inputValue.shop or not inputValue.shop.Enabled or input.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
 local _llIlIIlIII = inputValue.shop_controller and inputValue.shop_controller._selectedItem if not _llIlIIlIII then return end
 if input.KeyCode == Enum.KeyCode.ButtonY then if _llIlIIlIII.type == "\083\119\111\114\100" or _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110" then inputValue:toggle_fav(_llIlIIlIII.type, _llIlIIlIII.name) end
 elseif input.KeyCode == Enum.KeyCode.ButtonX then if _llIlIIlIII.type == "\083\119\111\114\100" or _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110" then if inputValue:is_deleted(_llIlIIlIII.type, _llIlIIlIII.name) then inputValue:undelete_item(_llIlIIlIII.type, _llIlIIlIII.name) else inputValue:delete_item(_llIlIIlIII.type, _llIlIIlIII.name) end
 end
 elseif input.KeyCode == Enum.KeyCode.ButtonA then local _lllIIlllII = inputValue.shop and inputValue.shop:FindFirstChild("\072\111\108\100\101\114") and inputValue.shop.Holder:FindFirstChild("\073\110\102\111\066\071") _lllIIlllII = _lllIIlllII and _lllIIlllII:FindFirstChild("\066\117\121\066\117\116\116\111\110") if _llIlIIlIII.type == "\083\119\111\114\100" then inputValue:equip_sword(_llIlIIlIII.name, false) if _lllIIlllII and _lllIIlllII:FindFirstChild("\080\114\105\099\101\084\097\103") and _lllIIlllII.PriceTag:FindFirstChild("\084\101\120\116\076\097\098\101\108") then _lllIIlllII.PriceTag.TextLabel.Text = "\069\113\117\105\112\112\101\100" end
 elseif _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110" then inputValue:equip_explosion(_llIlIIlIII.name) if _lllIIlllII and _lllIIlllII:FindFirstChild("\080\114\105\099\101\084\097\103") and _lllIIlllII.PriceTag:FindFirstChild("\084\101\120\116\076\097\098\101\108") then _lllIIlllII.PriceTag.TextLabel.Text = "\069\113\117\105\112\112\101\100" end
 end
 end
 else while true do end
 end
 end
 ) inputValue.shop_controller.itemSelected:Connect( function (secondaryInput) if secondaryInput and inputValue.unlocked[secondaryInput.type] then inputValue:set_category_unlock(secondaryInput.type, true) end
 deferTask( function () inputValue:refresh_selected() end
 ) end
 ) _lIIIllIIII.Activated:Connect( function () local _llIlIIlIII = inputValue.shop_controller._selectedItem if not _llIlIIlIII then return end
 if inputValue.enabled and inputValue.unlocked[_llIlIIlIII.type] then if inputValue:is_deleted(_llIlIIlIII.type, _llIlIIlIII.name) then inputValue:undelete_item(_llIlIIlIII.type, _llIlIIlIII.name) end
 if _llIlIIlIII.type == "\083\119\111\114\100" then if inputValue:equip_sword(_llIlIIlIII.name, false) then _lIIIllIIII.PriceTag.TextLabel.Text = "\069\113\117\105\112\112\101\100" end
 return end
 if _llIlIIlIII.type == "\069\120\112\108\111\115\105\111\110" then inputValue:equip_explosion(_llIlIIlIII.name) _lIIIllIIII.PriceTag.TextLabel.Text = "\069\113\117\105\112\112\101\100" return end
 end
 for _, _lIlIlIllII in inputValue.original_buy_fns, nil, nil do spawnTask(_lIlIlIllII) end
 end
 ) local function _IIIIIlIIlI() if not inputValue.shop.Enabled or not inputValue.enabled then return end
 for _, _lIlIlIllII in { "\083\119\111\114\100", "\069\120\112\108\111\115\105\111\110", }, nil, nil do if inputValue.unlocked[_lIlIlIllII] then inputValue:schedule_refresh(_lIlIlIllII) end
 end
 end
 inputValue.shop:GetPropertyChangedSignal("\069\110\097\098\108\101\100"):Connect( function () if inputValue.shop.Enabled then deferTask(_IIIIIlIIlI) end
 end
 ) if inputValue.shop.Enabled then deferTask(_IIIIIlIIlI) end
 return true end
 _IllIllIlll.hook_sword_fx = function (inputValue) local _llIIIIIIlI = ReplicatedStorage:FindFirstChild("\083\104\097\114\101\100") _llIIIIIIlI = _llIIIIIIlI and _llIIIIIIlI:FindFirstChild("\082\101\112\108\105\099\097\116\101\100\073\110\115\116\097\110\099\101\115") _llIIIIIIlI = _llIIIIIIlI and _llIIIIIIlI:FindFirstChild("\083\119\111\114\100\115") if _llIIIIIIlI then local _lIlIlIllII, _IllIlIIIlI = pcall(require, _llIIIIIIlI) if _lIlIlIllII then inputValue.swords = _IllIlIIIlI end
 end
 local _IlIIIIIlll = ReplicatedStorage:FindFirstChild("\082\101\109\111\116\101\115") _IlIIIIIlll = _IlIIIIIlll and _IlIIIIIlll:FindFirstChild("\080\097\114\114\121\083\117\099\099\101\115\115\065\108\108") if _IlIIIIIlll then _IlIIIIIlll.OnClientEvent:Connect( function (...) if not inputValue.enabled or not inputValue.selected_sword or not inputValue.play_parry then return end
 local _IIlIIIIlll = { ..., } local _IllllIllII = inputValue.swords and inputValue.swords:GetSword(inputValue.selected_sword) if _IllllIllII and _IIlIIIIlll[0x4] and tostring(_IIlIIIIlll[0x4]) == name then _IIlIIIIlll[0x1] = _IllllIllII.SlashName _IIlIIIIlll[0x3] = _IllllIllII.Name end
 return inputValue.play_parry(unpack(_IIlIIIIlll)) end
 ) end
 end
 _IllIllIlll.setup_character = function (inputValue, secondaryInput) if inputValue.character_connection then pcall( function () inputValue.character_connection:Disconnect() end
 ) inputValue.character_connection = nil end
 if not secondaryInput then return end
 if inputValue.enabled and config.last_equipped_sword and config.last_equipped_sword ~= "" then deferTask( function () if not _llIIIIIlll then return end
 if inputValue.enabled and config.last_equipped_sword ~= "" then inputValue:equip_sword(config.last_equipped_sword, false) end
 end
 ) end
 local function _IIIIIlIIlI(child) if not inputValue.enabled or not child:IsA("\077\111\100\101\108") or not inputValue.swords or not inputValue.selected_sword then return end
 local _IllllIllII = inputValue.swords:GetSword(child.Name) if not _IllllIllII then return end
 if child.Name ~= inputValue.selected_sword then local _llIIllllll = inputValue.selected_sword deferTask( function () if inputValue.enabled and inputValue.selected_sword == _llIIllllll then inputValue:equip_sword(_llIIllllll, false) end
 end
 ) else inputValue:apply_chroma(child, _IllllIllII) if inputValue.sword_fn then deferTask( function () if inputValue.enabled and inputValue.selected_sword == child.Name then if true then pcall(inputValue.sword_fn, child.Name) else while true do end
 end
 end
 end
 ) end
 end
 end
 inputValue.character_connection = secondaryInput.ChildAdded:Connect(_IIIIIlIIlI) for _, _lIlIlIllII in secondaryInput:GetChildren() do _IIIIIlIIlI(_lIlIlIllII) end
 end
 _IllIllIlll.hook_chroma = function (inputValue) if inputValue.chroma_bound then return end
 inputValue.chroma_bound = true inputValue.added_connection = localPlayer.CharacterAdded:Connect( function (_lllllIlllI) inputValue:setup_character(_lllllIlllI) end
 ) if localPlayer.Character then deferTask( function () inputValue:setup_character(localPlayer.Character) end
 ) end
 inputValue.sword_attr_connection = localPlayer:GetAttributeChangedSignal("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100"):Connect( function () local _llIIllllll = inputValue.selected_sword if not inputValue.enabled or not _llIIllllll or localPlayer:GetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100") == _llIIllllll then return end
 localPlayer:SetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100", _llIIllllll) if localPlayer.Character then localPlayer.Character:SetAttribute("\067\117\114\114\101\110\116\108\121\069\113\117\105\112\112\101\100\083\119\111\114\100", _llIIllllll) end
 if inputValue.sword_fn then pcall(inputValue.sword_fn, _llIIllllll) end
 end
 ) end
 _IllIllIlll.initialize = function (inputValue) local _lIlIlIllII = ReplicatedStorage.Controllers:FindFirstChild("\085\073") local _IIIIlIlIII = _lIlIlIllII and _lIlIlIllII:FindFirstChild("\083\104\111\112\067\111\110\116\114\111\108\108\101\114") local _IllIlIIIlI = _lIlIlIllII and _lIlIlIllII:FindFirstChild("\083\104\111\112\067\111\110\116\114\111\108\108\101\114\065\080\073") local _IllIIlIlIl, _IIIIIlIIII = pcall(require, _IIIIlIlIII) local _lIIIlllIlI, _llIlIlIIII = pcall(require, _IllIlIIIlI) local _lIlIlllllI = not _IllIIlIlIl if not _lIlIlllllI then local _IlIIllllIl = "\116\097\098\108\101" _lIlIlllllI = type(_IIIIIlIIII) ~= _IlIIllllIl end
 if _lIlIlllllI then _IIIIIlIIII = nil end
 if not _lIIIlllIlI or type(_llIlIlIIII) ~= "\116\097\098\108\101" then _llIlIlIIII = nil end
 if not _IIIIIlIIII and not _llIlIlIIII then warn("\091\110\105\107\097\093\032\117\110\108\111\099\107\032\097\108\108\058\032\102\097\105\108\101\100\032\116\111\032\108\111\097\100\032\115\104\111\112\032\099\111\110\116\114\111\108\108\101\114\115") return end
 inputValue.shop_controller = _IIIIIlIIII inputValue.shop_api = _llIlIlIIII inputValue:hook_sword_fx() inputValue:hook_chroma() pcall( function () inputValue.explosion_module = require(ReplicatedStorage.Controllers.VFXController) end
 ) inputValue:ensure_explosion_wrap() if inputValue.shop_controller then inputValue:hook_shop() end
 if inputValue.shop_api then inputValue:hook_modern_shop() end
 inputValue.ready = true inputValue:set_enabled(inputValue.enabled) if inputValue.enabled and config.last_equipped_sword and config.last_equipped_sword ~= "" then deferTask( function () if inputValue.enabled and config.last_equipped_sword ~= "" then inputValue:equip_sword(config.last_equipped_sword, false) end
 end
 ) end
 if inputValue.enabled and config.last_equipped_explosion and config.last_equipped_explosion ~= "" then deferTask( function () if inputValue.enabled and config.last_equipped_explosion ~= "" then inputValue:equip_explosion(config.last_equipped_explosion) end
 end
 ) end
 end
 _IllIllIlll.set_enabled = function (inputValue, secondaryInput) inputValue.enabled = secondaryInput == true if not inputValue.ready then return end
 for _, _lIlIlIllII in { "\083\119\111\114\100", "\069\120\112\108\111\115\105\111\110", }, nil, nil do if inputValue.enabled then if inputValue.shop_controller then inputValue:set_category_unlock(_lIlIlIllII, true) inputValue:schedule_refresh(_lIlIlIllII) end
 inputValue:set_modern_unlock(_lIlIlIllII, true) else if inputValue.shop_controller then inputValue.refresh_generation[_lIlIlIllII] = (inputValue.refresh_generation[_lIlIlIllII] or 0x0) + 0x1 inputValue:set_category_unlock(_lIlIlIllII, false) end
 inputValue:set_modern_unlock(_lIlIlIllII, false) end
 end
 if not inputValue.enabled then inputValue:restore_sword() inputValue.selected_explosion = nil else inputValue:refresh_selected() end
 end
 spawnTask( function () _IllIllIlll:initialize() end
 ) misc:AddToggle("\085\110\108\111\099\107\065\108\108", { Title = "\085\110\108\111\099\107\032\097\108\108", Default = config.unlock_all or false, Callback = function (unlockAll) config.unlock_all = unlockAll _IllIllIlll:set_enabled(unlockAll) end
 }) end
 end
 do local _lIIIIIIllI = nil misc:AddToggle("\098\097\108\108\095\115\116\097\116\115", { Title = "\066\097\108\108\032\115\116\097\116\115", Default = config.ball_debug or false, Callback = function (ballDebug) config.ball_debug = ballDebug if ballDebug then _lIIIIIIllI = createGuiInstance("\083\099\114\101\101\110\071\117\105", { Parent = localPlayer:WaitForChild("\080\108\097\121\101\114\071\117\105"), ResetOnSpawn = false, }) local _IIIIllllll = createGuiInstance("\084\101\120\116\076\097\098\101\108", { Size = createUDim2(0.2, 0x0, 0.05, 0x0), Position = createUDim2(0.7, 0x0, 0.1, 0x0), TextSize = 0x1A, BackgroundTransparency = 0x1, TextColor3 = Color3.new(0x1, 0x1, 0x1), Font = Enum.Font.Fantasy, Text = "\119\097\105\116\105\110\103\046\046\046", Parent = _lIIIIIIllI, }) local _IllIllIlll = { } _IlllllIllI.ball_stats = heartbeat:Connect( function () local _lIlIlIllII = _lllIlIIlIl.get_all() if not _IIllllIIll then return end
 if #_lIlIlIllII == 0x0 then _IIIIllllll.Text = "\119\097\105\116\105\110\103\046\046\046" _IIIIllllll.TextColor3 = Color3.new(0x1, 0x1, 0x1) return end
 local _IIlIIIIlll = { } for _, _IllIlIIIlI in _lIlIlIllII, nil, nil do _IIlIIIIlll[_IllIlIIIlI] = true end
 for k in _IllIllIlll, nil, nil do if not _IIlIIIIlll[k] then _IllIllIlll[k] = nil end
 end
 local _lllIllllIl = 0x0 local _IllIlIIIlI = nil for _, _IllIIlIlIl in _lIlIlIllII, nil, nil do local _IIIIIlIIII = _IllIIlIlIl:FindFirstChild("\122\111\111\109\105\101\115") if _IIIIIlIIII then local _lIIIlllIlI = maxValue(_IllIllIlll[_IllIIlIlIl] or 0x0, _IIIIIlIIII.VectorVelocity.Magnitude) _IllIllIlll[_IllIIlIlIl] = _lIIIlllIlI if _lIIIlllIlI > _lllIllllIl then _lllIllllIl = _lIIIlllIlI _IllIlIIIlI = _IllIIlIlIl end
 end
 end
 if _IllIlIIIlI then local _lIlIlllllI = _lllIllllIl >= 0x898 _IIIIllllll.Text = formatString("\098\097\108\108\032\118\101\108\111\099\105\116\121\058\032\037\046\048\102", _lllIllllIl) .. (_lIlIlllllI and "\032\040\076\073\077\073\084\033\041" or "") _IIIIllllll.TextColor3 = _lIlIlllllI and Color3.new(0x1, 0x0, 0x0) or Color3.new(0x1, 0x1, 0x1) else _IIIIllllll.Text = "\119\097\105\116\105\110\103\046\046\046" _IIIIllllll.TextColor3 = Color3.new(0x1, 0x1, 0x1) end
 end
 ) else if _IlllllIllI.ball_stats then _IlllllIllI.ball_stats:Disconnect() _IlllllIllI.ball_stats = nil end
 if _lIIIIIIllI then _lIIIIIIllI:Destroy() _lIIIIIIllI = nil end
 end
 end
 }) end
 return end
 while true do end
 end
 end
 end
 end
 end
 )(...)
