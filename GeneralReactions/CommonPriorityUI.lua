local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			name = "---------- job order ----------",
			uuid = "885720b6-8574-6833-a0a3-c0405d7c2b34",
			version = 2,
		},
		inheritedIndex = 1,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "--[[\n    优先级UI初始化\n]]\nif JobPriority == nil then\n    JobPriority = {}\n    JobPriority.GUI = GUI\n    JobPriority.init = true\n    JobPriority.lastTick = 1001\n    JobPriority.defaultJobPriority = { 19, 21, 32, 37, 24, 33, 40, 28, 20, 22, 30, 34, 39, 31, 23, 28, 25, 27, 35 }\n    local JobName = { '骑士', '战士', '黑骑', '枪刃', '白魔', '占星', '贤者', '学者', '武僧',\n        '龙骑', '忍者', '武士', '镰刀', '机工', '诗人', '舞者', '黑魔', '召唤', '赤魔' }\n    JobPriority.getJobNameById = function(job)\n        for i = 1, #JobPriority.defaultJobPriority, 1 do\n            if JobPriority.defaultJobPriority[i] == job then\n                return JobName[i]\n            end\n        end\n    end\nend\n",
						name = "init",
						uuid = "6c3edbae-8f3a-5dfc-aabb-e9dc37f887dc",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- 优先级UI打开\nif GUI:IsKeyPressed(88) and GUI:IsKeyDown(17) then\n    JobPriority.GUI.open = not JobPriority.GUI.open\nend\n",
						name = "Keypress",
						uuid = "7e8bc270-e5cd-d027-91f6-ebd5e29d56bd",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "--[[\n     优先级设置菜单\n]]\nif JobPriority.GUI.open then\n    GUI:SetNextWindowSize(200, 0, GUI.SetCond_Appearing)\n    JobPriority.GUI.visible, JobPriority.GUI.open = GUI:Begin(\"优先级设置\", JobPriority.GUI.open)\n    if JobPriority.GUI.visible then\n        if JobPriority.PartyInfo == nil then\n            JobPriority.PartyInfo = {}\n            JobPriority.PartyInfo.MT = nil\n            JobPriority.PartyInfo.ST = nil\n            JobPriority.PartyInfo.H1 = nil\n            JobPriority.PartyInfo.H2 = nil\n            JobPriority.PartyInfo.D1 = nil\n            JobPriority.PartyInfo.D2 = nil\n            JobPriority.PartyInfo.D3 = nil\n            JobPriority.PartyInfo.D4 = nil\n        end\n        local width = GUI:GetContentRegionAvailWidth()\n        GUI:Dummy((width - 320), 0)\n        GUI:ListBoxHeader(\"##Jobs\", 18, 11)\n        local partyMembers = {\n            { info = JobPriority.PartyInfo.MT, label = \"MT\" },\n            { info = JobPriority.PartyInfo.ST, label = \"ST\" },\n            { info = JobPriority.PartyInfo.H1, label = \"H1\" },\n            { info = JobPriority.PartyInfo.H2, label = \"H2\" },\n            { info = JobPriority.PartyInfo.D1, label = \"D1\" },\n            { info = JobPriority.PartyInfo.D2, label = \"D2\" },\n            { info = JobPriority.PartyInfo.D3, label = \"D3\" },\n            { info = JobPriority.PartyInfo.D4, label = \"D4\" }\n        }\n        for i, member in ipairs(partyMembers) do\n            local currentseletion = function()\n                if member.label == JobPriority.PartyInfo.selected then\n                    return true\n                end\n                return false\n            end\n\n            GUI:Button(member.label)\n            GUI:SameLine()\n\n            if member.info ~= nil and member.info.job ~= nil and member.info.name ~= nil then\n                GUI:Selectable(\" \" .. JobPriority.getJobNameById(member.info.job) .. \" \" .. member.info.name,\n                    currentseletion())\n            else\n                GUI:Selectable(\" \" .. \"暂无数据\" .. \" \" .. \"暂无数据\" .. i, currentseletion())\n            end\n\n            if GUI:IsItemHovered(GUI.HoveredFlags_AllowWhenBlockedByPopup + GUI.HoveredFlags_AllowWhenBlockedByActiveItem + GUI.HoveredFlags_AllowWhenOverlapped) then\n                if GUI:IsMouseDown(0) then\n                    if JobPriority.PartyInfo.mousePosition == nil then\n                        if JobPriority.PartyInfo.mousePosition ~= member.label then\n                            JobPriority.PartyInfo.mousePosition = member.label\n                        end\n                        if JobPriority.PartyInfo.selected ~= member.label then\n                            JobPriority.PartyInfo.selected = member.label\n                        end\n                        d(JobPriority.PartyInfo.mousePosition)\n                        d(JobPriority.PartyInfo.selected)\n                    elseif JobPriority.PartyInfo.mousePosition ~= member.label then\n                        local temp = JobPriority.PartyInfo[JobPriority.PartyInfo.mousePosition]\n                        JobPriority.PartyInfo[JobPriority.PartyInfo.mousePosition] = JobPriority.PartyInfo[member.label]\n                        JobPriority.PartyInfo[member.label] = temp\n                        JobPriority.PartyInfo.mousePosition = member.label\n                        if JobPriority.PartyInfo.selected ~= member.label then\n                            JobPriority.PartyInfo.selected = member.label\n                        end\n                    end\n                end\n            end\n\n            if JobPriority.PartyInfo.mousePosition ~= nil and (GUI:IsMouseReleased(0) or not GUI:IsMouseDown(0)) then\n                JobPriority.PartyInfo.mousePosition = nil\n            end\n        end\n        GUI:ListBoxFooter()\n        if JobPriority.PartyInfo.mousePosition ~= nil and not GUI:IsItemHovered(GUI.HoveredFlags_AllowWhenBlockedByPopup + GUI.HoveredFlags_AllowWhenBlockedByActiveItem + GUI.HoveredFlags_AllowWhenOverlapped) then\n            JobPriority.PartyInfo.mousePosition = nil\n        end\n        GUI:SameLine()\n        GUI:SetWindowSize(470, 0)\n    end\n\n    GUI:End()\nend\n",
						conditions = 
						{
							
							{
								"1d38aceb-831a-88f5-8452-17c4b312c663",
								true,
							},
						},
						name = "菜单",
						uuid = "0e9b1755-ef8a-4a48-bbf9-ea005b5b9759",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return JobPriority ~= nil",
						uuid = "1d38aceb-831a-88f5-8452-17c4b312c663",
						version = 2,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 13,
			name = "PriorityUI",
			uuid = "7e6d338f-6264-27cb-8cdc-2bd7314cdf59",
			version = 2,
		},
		inheritedIndex = 2,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- 普通模式下使用\nlocal Party = TensorCore.getEntityGroupList(\"Party\")\nif JobPriority.PartyInfo == nil then\n    JobPriority.PartyInfo = {}\nend\nlocal MyPartyenti = {}\nlocal jobHasSet = {}\nif #Party == 1 then\n    table.insert(MyPartyenti, Party[1])\n    -- 回放\n    Party = TensorCore.entityList(\"Party\")\nend\nfor _, val in pairs(Party) do\n    for _, v in ipairs(JobPriority.defaultJobPriority) do\n        if val.job == v and not table.contains(MyPartyenti, val) then\n            table.insert(MyPartyenti, val)\n        end\n    end\nend\n\nlocal TankJobs = { 19, 21, 32, 37 }\nlocal HealerJobs = { 24, 28, 33, 40 }\nlocal MeleeJob = { 20, 22, 30, 34, 39 }\nlocal RangeJob = { 31, 23, 28 }\nlocal MagicJob = { 25, 27, 35 }\n\n-- 根据职业设置默认位置\nfor i = 1, #MyPartyenti, 1 do\n    if table.contains(TankJobs, MyPartyenti[i].job) then\n        if JobPriority.PartyInfo.MT == nil then\n            JobPriority.PartyInfo.MT = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        else\n            JobPriority.PartyInfo.ST = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        end\n    elseif table.contains(HealerJobs, MyPartyenti[i].job) then\n        if JobPriority.PartyInfo.H1 == nil then\n            JobPriority.PartyInfo.H1 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        else\n            JobPriority.PartyInfo.H2 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        end\n    elseif table.contains(MeleeJob, MyPartyenti[i].job) then\n        if JobPriority.PartyInfo.D1 == nil then\n            JobPriority.PartyInfo.D1 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        else\n            JobPriority.PartyInfo.D2 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        end\n    elseif table.contains(RangeJob, MyPartyenti[i].job) then\n        if JobPriority.PartyInfo.D3 == nil then\n            JobPriority.PartyInfo.D3 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        end\n    elseif table.contains(MagicJob, MyPartyenti[i].job) then\n        if JobPriority.PartyInfo.D4 == nil then \n            JobPriority.PartyInfo.D4 = MyPartyenti[i]\n            table.insert(jobHasSet, MyPartyenti[i].job)\n        end\n    end\nend\nif #jobHasSet < 8 then\n    for i = 1, #MyPartyenti, 1 do\n        if not table.contains(jobHasSet, MyPartyenti[i].job) then\n            if JobPriority.PartyInfo.MT == nil then JobPriority.PartyInfo.MT = MyPartyenti[i] end\n            if JobPriority.PartyInfo.ST == nil then JobPriority.PartyInfo.ST = MyPartyenti[i] end\n            if JobPriority.PartyInfo.H1 == nil then JobPriority.PartyInfo.H1 = MyPartyenti[i] end\n            if JobPriority.PartyInfo.H2 == nil then JobPriority.PartyInfo.H2 = MyPartyenti[i] end\n            if JobPriority.PartyInfo.D1 == nil then JobPriority.PartyInfo.D1 = MyPartyenti[i] end\n            if JobPriority.PartyInfo.D2 == nil then JobPriority.PartyInfo.D2 = MyPartyenti[i] end\n            if JobPriority.PartyInfo.D3 == nil then JobPriority.PartyInfo.D3 = MyPartyenti[i] end\n            if JobPriority.PartyInfo.D4 == nil then JobPriority.PartyInfo.D4 = MyPartyenti[i] end\n        end\n    end\nend\n-- SendTextCommand(\"/e 小队优先级初始化完成\")\nself.used = true\n",
						conditions = 
						{
							
							{
								"451c7173-2065-5087-a578-b3afb9853580",
								true,
							},
						},
						uuid = "2c8a0bdf-4a60-4507-b4e8-5ccedc71088e",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local Party = TensorCore.getEntityGroupList(\"Party\")\nlocal Partycount = 0\n\nfor v,k in pairs(Party) do\n    Partycount = Partycount + 1\nend\n\nreturn Partycount >= 8 and JobPriority ~= nil",
						conditionType = 10,
						name = "判断是否进入8人本(回放需要去掉)",
						uuid = "451c7173-2065-5087-a578-b3afb9853580",
						version = 2,
					},
				},
			},
			eventType = 11,
			name = "PriorityUIMapChange",
			uuid = "66183b1e-a4ac-fd8b-99d9-8b1c945690ea",
			version = 2,
		},
		inheritedIndex = 26,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl