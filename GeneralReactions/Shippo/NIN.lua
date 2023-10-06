local tbl = 
{
	
	{
		data = 
		{
			name = "Shadowcaster Script",
			uuid = "ccf0db93-e79a-0e6c-8d37-9076701e5c0a",
			version = 2,
		},
		inheritedIndex = 6,
		inheritedObjectUUID = "f8ec4192-f420-c816-90bf-b0280aef7675",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			name = "Shadowcaster Channel",
			uuid = "39f71b42-3497-3134-b8bd-c80ed742b0a4",
			version = 2,
		},
		inheritedIndex = 7,
		inheritedObjectUUID = "c41e069b-40c8-7063-8876-76735d1c555d",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--------------------------------------------------------------",
			uuid = "d4736fc2-1474-007b-8f94-82dff479125d",
			version = 2,
		},
		inheritedIndex = 13,
	},
	
	{
		data = 
		{
			name = "Prepull Helper (new)",
			uuid = "d1f15818-99e6-0dec-bc80-7b8a8a558034",
			version = 2,
		},
		inheritedIndex = 14,
		inheritedObjectUUID = "5ee0bd9e-9b4d-1f0e-875c-0d1051719b34",
		inheritedOverwrites = 
		{
			enabled = false,
		},
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
						actionLua = "d(\"[AnyoneCore] Countdown started - engaging Prepull Helper.\")\nAnyoneCore.Data.countdownTime = Now()\nAnyoneCore.Data.countdownDuration = tonumber(eventArgs.time)\ndata.startCombat = gStartCombat\nAnyoneCore.Toggle(\"pots\", false, (30000 + eventArgs.time))\ngStartCombat = false\nAnyoneCore.JobCheck()\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
						},
						name = "Set Variables",
						uuid = "a38a5298-718d-1400-ad27-8c55f839b4f9",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_Huton",
						uuid = "8bc2b192-4418-96dd-b559-66f7fcc661e2",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_9GCDTrick",
						gVarValue = 2,
						uuid = "e2d7267c-6d13-3e68-b5af-595baad5dba5",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						actionID = 2245,
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"6d1fab98-2ac2-8510-b9df-c6a2589d79bd",
								true,
							},
						},
						ignoreWeaveRules = true,
						uuid = "fd42adba-15bb-3e74-b9d1-c6c81a61f89f",
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"73912ed4-e274-7b36-a84b-e786b4d4f2da",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_Suiton",
						uuid = "c3c23de4-b8c6-2508-9e12-b1b776554da8",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"dbbacbc8-ec88-10a2-9345-c334b0e00cf4",
								true,
							},
						},
						name = "target nearest",
						setTarget = true,
						targetType = "Enemy",
						uuid = "04dee14c-0d2b-8eb0-9fe2-b693bdad9679",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "TensorCore.API.TensorACR.holdActionUntil(2258, Now() + 6000) --TA\nTensorCore.API.TensorACR.holdActionUntil(2248, Now() + 4000) --MUG\nTensorCore.API.TensorACR.holdActionUntil(3566, Now() + 6000) --DWD\nTensorCore.API.TensorACR.holdActionUntil(16489, Now() + 6000) --meisui\nTensorCore.API.RikuNIN2.holdActionUntil(2247, Now() + 10000)\nSendTextCommand(\"/focustarget\")\nself.used = true",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
								true,
							},
						},
						uuid = "6aea5369-56e6-5b9d-b1d9-55427ba36b7e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"944d7372-6a4b-7c45-b315-35eb28bbc08a",
								true,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
								true,
							},
						},
						usePot = true,
						uuid = "4d6f7f98-4077-f6bf-bbe3-fdc8e2a61367",
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						actionID = 2241,
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"944d7372-6a4b-7c45-b315-35eb28bbc08a",
								false,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_ShadeShift",
						uuid = "27088d63-4d3a-57b4-88ce-8cbeb4c016f3",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = true\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
							
							{
								"5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
								true,
							},
						},
						name = "Engage",
						uuid = "27c74d03-bd35-a555-b9a7-3cf6d531c52a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ACR_RikuNIN2_FastTA = true\nACR_RikuNIN2_ClipTA = true\nself.used = true\n",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"dd06091a-27b3-cd5e-a396-7878f2ff8d7a",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_FastTA",
						uuid = "cc581b3c-be01-0ac7-b8af-e6d6b46cf463",
						version = 2,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						actionID = 2255,
						conditions = 
						{
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"d99b976c-0b12-f018-9da4-69e9aece8bb5",
								true,
							},
							
							{
								"911cee82-0f1f-91fe-afb9-4da660068b46",
								true,
							},
							
							{
								"83f1e787-ce17-8e10-a036-fab499bb4bb1",
								true,
							},
							
							{
								"80e4d5c9-e730-ba78-b26d-5ab188a907aa",
								true,
							},
							
							{
								"e0d45e73-fb6a-583b-9f4f-975f5eb5efb4",
								true,
							},
						},
						targetType = "Current Target",
						uuid = "a91626fa-fb05-d989-9402-260260fcf53d",
						version = 2,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"[AnyoneCore] Countdown finished, engaging boss.\")\ngStartCombat = data.startCombat\nAnyoneCore.Data.countdownTime = nil\nAnyoneCore.Data.countdownDuration = nil\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"f1ef0e11-a221-8254-85af-2428dc045a18",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
						},
						name = "End",
						uuid = "ffe6718c-e21c-a4f3-8d88-13de1b8a75b0",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 9,
						name = "-9",
						uuid = "d9654727-5617-039a-a99e-f3c537a44ca9",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 8,
						name = "-8",
						uuid = "0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 7,
						name = "-7",
						uuid = "6d1fab98-2ac2-8510-b9df-c6a2589d79bd",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 6,
						name = "-6",
						uuid = "73912ed4-e274-7b36-a84b-e786b4d4f2da",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 3,
						name = "-3",
						uuid = "dbbacbc8-ec88-10a2-9345-c334b0e00cf4",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 1,
						name = "-1",
						uuid = "0d397b16-61b0-745d-9759-541f0b1ffa2c",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						name = "is bot running",
						partyTargetSubType = 1,
						uuid = "6843b684-0221-ca26-9cae-f3b6720d37d8",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "3f81c302-eb62-de63-b207-10c4b0445b50",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR_RikuNIN2_Potion == true",
						name = "READY_POT",
						uuid = "944d7372-6a4b-7c45-b315-35eb28bbc08a",
						version = 2,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.PrepullHelper.enabled",
						name = "Check BotRunning",
						uuid = "99429e2f-3998-4d19-9efa-01eaa952e57d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "NINJA",
						name = "ninja",
						uuid = "18a6022d-ee55-1ed4-bfa0-4c68812124c8",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						name = "End Timer",
						uuid = "f1ef0e11-a221-8254-85af-2428dc045a18",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 1,
						name = "Engage Boss Timer",
						uuid = "5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 2248,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "MUG <= 1",
						uuid = "56c8c514-d847-7205-93cf-ce087acd7001",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 5,
						actionID = 2258,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "TA <= 5",
						uuid = "475a9818-dfba-6c40-a1f4-97ae83f86475",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local GcdRecast = ActionList:Get(1,2240).recasttime\nlocal CurrentGcd = ActionList:Get(1,2240).cd\n\nreturn CurrentGcd >= GcdRecast * (8.5/12) and CurrentGcd <= GcdRecast * (10/12)",
						name = "cd_check >= 8 o'clock",
						uuid = "5fdf978c-1c25-d364-86db-515915dbd4de",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Player.lastcomboid ==  2240",
						name = "combat_1",
						uuid = "2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Player.lastcomboid == 2242",
						name = "combat_2",
						uuid = "d99b976c-0b12-f018-9da4-69e9aece8bb5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 6,
						gaugeValue = 50,
						uuid = "f1af0910-2101-5cf2-adac-de65da5ac765",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2248,
						name = "last_Mug",
						uuid = "c274a471-fc3f-7e94-8313-910f4107dbf1",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2267,
						name = "last_LeiDun",
						uuid = "7fc75996-0596-8091-8d75-cc0c46c15d03",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 16493,
						name = "last_FengSheng",
						uuid = "fad92bff-f6b4-79a5-b4ef-82b4f61dd408",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 25774,
						name = "last_PK",
						uuid = "280c6f92-d390-bdcf-b966-896c67ccf4b4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 2264,
						name = "last_ShengSha",
						uuid = "7ca71ff7-ab17-2507-ad42-5714e2af2c17",
						version = 2,
					},
					inheritedIndex = 24,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 7402,
						name = "last_6Dao",
						uuid = "da6f31f4-ace8-8c43-a789-ee30d39874f0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 17,
						buffID = 638,
						comparator = 2,
						name = "target_have_mug <= 17",
						uuid = "c7ef6cb6-b888-f2fb-8ce0-587b7c6260c5",
						version = 2,
					},
					inheritedIndex = 26,
				},
				
				{
					data = 
					{
						buffID = 3254,
						name = "target_have_TA",
						uuid = "911cee82-0f1f-91fe-afb9-4da660068b46",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffDuration = 18.5,
						buffID = 638,
						comparator = 2,
						name = "target_have_MUG",
						uuid = "83f1e787-ce17-8e10-a036-fab499bb4bb1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 2690,
						category = "Self",
						name = "MISS_月影雷兽预备",
						uuid = "80e4d5c9-e730-ba78-b26d-5ab188a907aa",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1122,
						name = "MAP_TOP",
						uuid = "7663d137-59cd-6cda-8d88-7a1659608c5e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2258,
						name = "last_TA",
						uuid = "dd06091a-27b3-cd5e-a396-7878f2ff8d7a",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						localMapIDList = 
						{
							1148,
						},
						localmapid = 1148,
						name = "MAP_P9S",
						uuid = "e0d45e73-fb6a-583b-9f4f-975f5eb5efb4",
						version = 2,
					},
				},
			},
			enabled = false,
			eventType = 16,
			name = "Prepull Helper (TA_8G)",
			timeout = 30,
			uuid = "ffd7ef23-c2f0-7b51-a674-3a56f036dc52",
			version = 2,
		},
		inheritedIndex = 15,
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
						actionLua = "d(\"[AnyoneCore] Countdown started - engaging Prepull Helper.\")\nAnyoneCore.Data.countdownTime = Now()\nAnyoneCore.Data.countdownDuration = tonumber(eventArgs.time)\ndata.startCombat = gStartCombat\nAnyoneCore.Toggle(\"pots\", false, (30000 + eventArgs.time))\ngStartCombat = false\nAnyoneCore.JobCheck()\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
						},
						name = "Set Variables",
						uuid = "a38a5298-718d-1400-ad27-8c55f839b4f9",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_Huton",
						uuid = "8bc2b192-4418-96dd-b559-66f7fcc661e2",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_9GCDTrick",
						uuid = "e2d7267c-6d13-3e68-b5af-595baad5dba5",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						actionID = 2245,
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"6d1fab98-2ac2-8510-b9df-c6a2589d79bd",
								true,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								false,
							},
						},
						ignoreWeaveRules = true,
						uuid = "fd42adba-15bb-3e74-b9d1-c6c81a61f89f",
						version = 2,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"73912ed4-e274-7b36-a84b-e786b4d4f2da",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_Suiton",
						uuid = "c3c23de4-b8c6-2508-9e12-b1b776554da8",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"dbbacbc8-ec88-10a2-9345-c334b0e00cf4",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_ShukuchiHitbox",
						uuid = "f593060a-79ec-e7fc-9574-b4dbc4124415",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"dbbacbc8-ec88-10a2-9345-c334b0e00cf4",
								true,
							},
						},
						name = "target nearest",
						setTarget = true,
						targetType = "Enemy",
						uuid = "04dee14c-0d2b-8eb0-9fe2-b693bdad9679",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "TensorCore.API.TensorACR.holdActionUntil(2258, Now() + (ACR_RikuNIN2_9GCDTrick and 8000 or 6000)) -- TA\nTensorCore.API.TensorACR.holdActionUntil(2248, Now() + 4000) --MUG\nTensorCore.API.TensorACR.holdActionUntil(2264, Now() + 8000) --kassatsu\nTensorCore.API.TensorACR.holdActionUntil(3566, Now() + 10000) --DWD\nTensorCore.API.TensorACR.holdActionUntil(16489, Now() + 10000) --meisui\nTensorCore.API.TensorACR.holdActionUntil(7546, Now() + 10000) --TN\nTensorCore.API.TensorACR.holdActionUntil(2247, Now() + 10000) --TD\nSendTextCommand(\"/focustarget\")\nself.used = true",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
								true,
							},
						},
						uuid = "6aea5369-56e6-5b9d-b1d9-55427ba36b7e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"944d7372-6a4b-7c45-b315-35eb28bbc08a",
								true,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
								true,
							},
						},
						usePot = true,
						uuid = "4d6f7f98-4077-f6bf-bbe3-fdc8e2a61367",
						version = 2,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						actionID = 2241,
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"944d7372-6a4b-7c45-b315-35eb28bbc08a",
								false,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_Hotbar_ShadeShift",
						uuid = "0e885030-18e6-3c66-a15e-4ccfa363e728",
						variableTogglesType = 2,
						version = 2,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = true\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
							
							{
								"5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
								true,
							},
						},
						name = "Engage",
						uuid = "27c74d03-bd35-a555-b9a7-3cf6d531c52a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ACR_RikuNIN2_FastTA = true\nACR_RikuNIN2_ClipTA = true\nself.used = true",
						conditions = 
						{
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"dd06091a-27b3-cd5e-a396-7878f2ff8d7a",
								true,
							},
						},
						gVar = "ACR_RikuNIN2_FastTA",
						uuid = "cc581b3c-be01-0ac7-b8af-e6d6b46cf463",
						version = 2,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						actionID = 2255,
						conditions = 
						{
							
							{
								"3f81c302-eb62-de63-b207-10c4b0445b50",
								true,
							},
							
							{
								"6843b684-0221-ca26-9cae-f3b6720d37d8",
								true,
							},
							
							{
								"d99b976c-0b12-f018-9da4-69e9aece8bb5",
								true,
							},
							
							{
								"911cee82-0f1f-91fe-afb9-4da660068b46",
								true,
							},
							
							{
								"83f1e787-ce17-8e10-a036-fab499bb4bb1",
								true,
							},
							
							{
								"80e4d5c9-e730-ba78-b26d-5ab188a907aa",
								true,
							},
							
							{
								"7663d137-59cd-6cda-8d88-7a1659608c5e",
								true,
							},
						},
						targetType = "Current Target",
						uuid = "a91626fa-fb05-d989-9402-260260fcf53d",
						version = 2,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"[AnyoneCore] Countdown finished, engaging boss.\")\ngStartCombat = data.startCombat\nAnyoneCore.Data.countdownTime = nil\nAnyoneCore.Data.countdownDuration = nil\nself.used = true",
						conditions = 
						{
							
							{
								"99429e2f-3998-4d19-9efa-01eaa952e57d",
								true,
							},
							
							{
								"f1ef0e11-a221-8254-85af-2428dc045a18",
								true,
							},
							
							{
								"18a6022d-ee55-1ed4-bfa0-4c68812124c8",
								true,
							},
						},
						name = "End",
						uuid = "ffe6718c-e21c-a4f3-8d88-13de1b8a75b0",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 9,
						name = "-9",
						uuid = "d9654727-5617-039a-a99e-f3c537a44ca9",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 8,
						name = "-8",
						uuid = "0e6e15e9-c50f-6f99-b77a-0a906ec1dd99",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 7,
						name = "-7",
						uuid = "6d1fab98-2ac2-8510-b9df-c6a2589d79bd",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 6,
						name = "-6",
						uuid = "73912ed4-e274-7b36-a84b-e786b4d4f2da",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 3,
						name = "-3",
						uuid = "dbbacbc8-ec88-10a2-9345-c334b0e00cf4",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 1,
						name = "-1",
						uuid = "0d397b16-61b0-745d-9759-541f0b1ffa2c",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						name = "is bot running",
						partyTargetSubType = 1,
						uuid = "6843b684-0221-ca26-9cae-f3b6720d37d8",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "3f81c302-eb62-de63-b207-10c4b0445b50",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR_RikuNIN2_Potion == true",
						name = "READY_POT",
						uuid = "944d7372-6a4b-7c45-b315-35eb28bbc08a",
						version = 2,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.PrepullHelper.enabled",
						name = "Check BotRunning",
						uuid = "99429e2f-3998-4d19-9efa-01eaa952e57d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "NINJA",
						name = "ninja",
						uuid = "18a6022d-ee55-1ed4-bfa0-4c68812124c8",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						name = "End Timer",
						uuid = "f1ef0e11-a221-8254-85af-2428dc045a18",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 1,
						name = "Engage Boss Timer",
						uuid = "5ac5ef6a-29ad-2ccd-a7bb-036df642ae48",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 2248,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "MUG <= 1",
						uuid = "56c8c514-d847-7205-93cf-ce087acd7001",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 5,
						actionID = 2258,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "TA <= 5",
						uuid = "475a9818-dfba-6c40-a1f4-97ae83f86475",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local GcdRecast = ActionList:Get(1,2240).recasttime\nlocal CurrentGcd = ActionList:Get(1,2240).cd\n\nreturn CurrentGcd >= GcdRecast * (8.5/12) and CurrentGcd <= GcdRecast * (10/12)",
						name = "cd_check >= 8 o'clock",
						uuid = "5fdf978c-1c25-d364-86db-515915dbd4de",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Player.lastcomboid ==  2240",
						name = "combat_1",
						uuid = "2aa6c4ff-7ea2-2893-b0bb-a7666a925ac5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Player.lastcomboid == 2242",
						name = "combat_2",
						uuid = "d99b976c-0b12-f018-9da4-69e9aece8bb5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 6,
						gaugeValue = 50,
						uuid = "f1af0910-2101-5cf2-adac-de65da5ac765",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2248,
						name = "last_Mug",
						uuid = "c274a471-fc3f-7e94-8313-910f4107dbf1",
						version = 2,
					},
					inheritedIndex = 20,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2267,
						name = "last_LeiDun",
						uuid = "7fc75996-0596-8091-8d75-cc0c46c15d03",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 16493,
						name = "last_FengSheng",
						uuid = "fad92bff-f6b4-79a5-b4ef-82b4f61dd408",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 25774,
						name = "last_PK",
						uuid = "280c6f92-d390-bdcf-b966-896c67ccf4b4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 16493,
						category = "Self",
						conditionType = 5,
						lastSkillID = 2264,
						name = "last_ShengSha",
						uuid = "7ca71ff7-ab17-2507-ad42-5714e2af2c17",
						version = 2,
					},
					inheritedIndex = 24,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 7402,
						name = "last_6Dao",
						uuid = "da6f31f4-ace8-8c43-a789-ee30d39874f0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 17,
						buffID = 638,
						comparator = 2,
						name = "target_have_mug <= 17",
						uuid = "c7ef6cb6-b888-f2fb-8ce0-587b7c6260c5",
						version = 2,
					},
					inheritedIndex = 26,
				},
				
				{
					data = 
					{
						buffID = 3254,
						name = "target_have_TA",
						uuid = "911cee82-0f1f-91fe-afb9-4da660068b46",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffDuration = 18.5,
						buffID = 638,
						comparator = 2,
						name = "target_have_MUG",
						uuid = "83f1e787-ce17-8e10-a036-fab499bb4bb1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 2690,
						category = "Self",
						name = "MISS_月影雷兽预备",
						uuid = "80e4d5c9-e730-ba78-b26d-5ab188a907aa",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						localMapIDList = 
						{
							1122,
							1148,
						},
						localmapid = 1122,
						name = "MAP_TOP",
						uuid = "7663d137-59cd-6cda-8d88-7a1659608c5e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2258,
						name = "last_TA",
						uuid = "dd06091a-27b3-cd5e-a396-7878f2ff8d7a",
						version = 2,
					},
					inheritedIndex = 20,
				},
			},
			eventType = 16,
			name = "Prepull Helper (TA_9G)",
			timeout = 30,
			uuid = "5a76831b-9d36-5674-8861-81207f6fa43b",
			version = 2,
		},
		inheritedIndex = 16,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--------------------------------------------------------------",
			uuid = "05bdadef-d51a-51c6-88ab-4c27da3d2d7a",
			version = 2,
		},
		inheritedIndex = 17,
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
						actionLua = "if Shippo == nil then\n    Shippo = {}\nend\nif Shippo.NIN == nil then\n    Shippo.NIN = {}\nend\nif Shippo.NIN.PreAfterMugGCD == nil then\n    Shippo.NIN.PreAfterMugGCD = {}\nend\nif Shippo.NIN.AfterMugGCD == nil then\n    Shippo.NIN.AfterMugGCD = {}\nend\n\nlocal PreAfterMugGCD = Shippo.NIN.PreAfterMugGCD\nlocal AfterMugGCD = Shippo.NIN.AfterMugGCD\n\nlocal GcdSkillID = {0, -- 无\n2240, -- 双刃旋\n2242, -- 绝风\n2255, -- 旋风刃\n3563, -- 强甲破点突\n25778, -- Fleeting Raiju\n25777, -- Forked Raiju\n25774, -- PK\n2254, -- Death Blossom\n16488, -- Hakke Mujinsatsu\n2265, -- 手里剑\n2266, -- 火遁\n2267, -- 雷遁\n2268, -- 冰盾\n2269, -- 风遁\n2270, -- 土遁\n2271, -- 水遁\n2272, -- 兔子\n16492, -- 冰晶乱流\n18873, -- TCJ\n18874, -- TCJ\n18875, -- TCJ\n18876, -- TCJ\n18877, -- TCJ\n18878, -- TCJ\n18879, -- TCJ\n18880, -- TCJ\n18881, -- TCJ\n25876, -- Huraijin\n2247 -- 飞刀\n}\n\nif TensorCore.mGetPlayer().castinginfo.castingid ~= PreAfterMugGCD[#PreAfterMugGCD] then\n    for _, v in pairs(GcdSkillID) do\n        if TensorCore.mGetPlayer().castinginfo.castingid == v then\n            table.insert(PreAfterMugGCD, v)\n        end\n    end\nend\n\nfor i = 1, #PreAfterMugGCD do\n    AfterMugGCD[i] = PreAfterMugGCD[i]\nend\n\nfor i = #AfterMugGCD, 1, -1 do\n    if AfterMugGCD[i] == 0 then\n        table.remove(AfterMugGCD, i)\n    end\nend\n\n--d(AfterMugGCD)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"5fd27cb2-4239-6b68-87df-7c2e268735c9",
								true,
							},
							
							{
								"d3ce14ad-3601-8a1d-aa2f-92fbf46a5e29",
								true,
							},
						},
						endIfUsed = true,
						uuid = "23accee6-430d-d4f5-bd29-e5475c2f56db",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if Shippo == nil then\n    Shippo = {}\nend\n\nif Shippo.NIN == nil then\n    Shippo.NIN = {}\nend\nif Shippo.NIN.PreAfterMugGCD == nil then\n    Shippo.NIN.PreAfterMugGCD = {}\nend\n\nif Shippo.NIN.AfterMugGCD == nil then\n    Shippo.NIN.AfterMugGCD = {}\nend\n\nif #Shippo.NIN.AfterMugGCD ~= 0 then\n    Shippo.NIN.AfterMugGCD = {}\nend\n\nif #Shippo.NIN.PreAfterMugGCD ~= 0 then\n    Shippo.NIN.PreAfterMugGCD = {} \nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"5fd27cb2-4239-6b68-87df-7c2e268735c9",
								false,
							},
						},
						uuid = "c9fbe8a7-730e-c74b-b774-9656346c835b",
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
						conditionLua = "local Enemy = TensorCore.getEntityGroupList(\"Enemy\")\n\nfor _, v in pairs(Enemy) do\n    if TensorCore.hasBuff(v, 638, TensorCore.mGetPlayer(), 0, 0) then\n        return true\n    end\nend\n\nreturn false\n",
						dequeueIfLuaFalse = true,
						name = "附近怪物有自己的夺取",
						uuid = "5fd27cb2-4239-6b68-87df-7c2e268735c9",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffDuration = 15.89999961853,
						buffID = 638,
						category = "Lua",
						comparator = 2,
						conditionLua = "return TensorCore.hasBuff(TensorCore.mGetTarget(), 638, TensorCore.mGetPlayer(), 0, 0)",
						name = "target_have_mug",
						uuid = "d3ce14ad-3601-8a1d-aa2f-92fbf46a5e29",
						version = 2,
					},
				},
			},
			enabled = false,
			eventType = 12,
			name = "Counters_Mug",
			uuid = "25ebc868-6b38-9e90-8a60-25ca3b053784",
			version = 2,
		},
		inheritedIndex = 18,
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
						actionLua = "if Shippo == nil then\n    Shippo = {}\nend\nif Shippo.NIN == nil then\n    Shippo.NIN = {}\nend\nif Shippo.NIN.PreAfterTAGCD == nil then\n    Shippo.NIN.PreAfterTAGCD = {}\nend\nif Shippo.NIN.AfterTAGCD == nil then\n    Shippo.NIN.AfterTAGCD = {}\nend\n\nlocal PreAfterTAGCD = Shippo.NIN.PreAfterTAGCD\nlocal AfterTAGCD = Shippo.NIN.AfterTAGCD\n\nlocal GcdSkillID = {0, -- 无\n2240, -- 双刃旋\n2242, -- 绝风\n2255, -- 旋风刃\n3563, -- 强甲破点突\n25778, -- Fleeting Raiju\n25777, -- Forked Raiju\n25774, -- PK\n2254, -- Death Blossom\n16488, -- Hakke Mujinsatsu\n2265, -- 手里剑\n2266, -- 火遁\n2267, -- 雷遁\n2268, -- 冰盾\n2269, -- 风遁\n2270, -- 土遁\n2271, -- 水遁\n2272, -- 兔子\n16492, -- 冰晶乱流\n18873, -- TCJ\n18874, -- TCJ\n18875, -- TCJ\n18876, -- TCJ\n18877, -- TCJ\n18878, -- TCJ\n18879, -- TCJ\n18880, -- TCJ\n18881, -- TCJ\n25876, -- Huraijin\n2247 -- 飞刀\n}\n\nif TensorCore.mGetPlayer().castinginfo.castingid ~= PreAfterTAGCD[#PreAfterTAGCD] then\n    for _, v in pairs(GcdSkillID) do\n        if TensorCore.mGetPlayer().castinginfo.castingid == v then\n            table.insert(PreAfterTAGCD, v)\n        end\n    end\nend\n\nfor i = 1, #PreAfterTAGCD do\n    AfterTAGCD[i] = PreAfterTAGCD[i]\nend\n\nfor i = #AfterTAGCD, 1, -1 do\n    if AfterTAGCD[i] == 0 then\n        table.remove(AfterTAGCD, i)\n    end\nend\n\n--d(AfterTAGCD)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"afe9a941-6bac-ed20-8515-bdafd0e3a971",
								true,
							},
							
							{
								"d3ce14ad-3601-8a1d-aa2f-92fbf46a5e29",
								true,
							},
						},
						endIfUsed = true,
						uuid = "23accee6-430d-d4f5-bd29-e5475c2f56db",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if Shippo == nil then\n    Shippo = {}\nend\n\nif Shippo.NIN == nil then\n    Shippo.NIN = {}\nend\n\nif Shippo.NIN.PreAfterTAGCD == nil then\n    Shippo.NIN.PreAfterTAGCD = {}\nend\n\nif Shippo.NIN.AfterTAGCD == nil then\n    Shippo.NIN.AfterTAGCD = {}\nend\n\nif #Shippo.NIN.PreAfterTAGCD ~= 0 then\n    Shippo.NIN.PreAfterTAGCD = {}\nend\n\nif #Shippo.NIN.AfterTAGCD ~= 0 then\n    Shippo.NIN.AfterTAGCD = {}\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"afe9a941-6bac-ed20-8515-bdafd0e3a971",
								false,
							},
						},
						uuid = "c9fbe8a7-730e-c74b-b774-9656346c835b",
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
						conditionLua = "local Enemy = TensorCore.getEntityGroupList(\"Enemy\")\n\nfor _, v in pairs(Enemy) do\n\t\tif TensorCore.hasBuff(v, 3254, TensorCore.mGetPlayer(), 0, 0) then\n\t\t\treturn true\n\t\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "附近怪物有自己的背刺",
						uuid = "afe9a941-6bac-ed20-8515-bdafd0e3a971",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffDuration = 15.89999961853,
						buffID = 3254,
						category = "Lua",
						comparator = 2,
						conditionLua = "return TensorCore.hasBuff(TensorCore.mGetTarget(), 3254, TensorCore.mGetPlayer(), 0, 0)",
						name = "target_have_TA",
						uuid = "d3ce14ad-3601-8a1d-aa2f-92fbf46a5e29",
						version = 2,
					},
					inheritedIndex = 3,
				},
			},
			enabled = false,
			eventType = 12,
			name = "Counters_TA",
			uuid = "c902c659-5ea3-1ccf-9a8b-8d9d52427d4b",
			version = 2,
		},
		inheritedIndex = 19,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--------------------------------------------------------------",
			uuid = "bfedc189-2856-1ced-be0a-3076c13accbd",
			version = 2,
		},
		inheritedIndex = 20,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Variable",
						conditions = 
						{
							
							{
								"840c0f29-5f9c-b75b-8313-b8e0a03e8db4",
								true,
							},
							
							{
								"ee1873ad-9f69-4fba-ac52-33033fbbfb07",
								true,
							},
							
							{
								"fd1f074a-f370-20cb-a64e-7d22161454bf",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuNIN2_Hotbar_TrueNorth",
						gVarValue = 2,
						uuid = "8d9f3a76-da57-b3bc-a22a-6dc6f1866549",
						variableTogglesType = 2,
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
						conditionLua = "return ACR_RikuNIN2_Hotbar_TrueNorth == true",
						dequeueIfLuaFalse = true,
						uuid = "840c0f29-5f9c-b75b-8313-b8e0a03e8db4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 1250,
						category = "Self",
						conditionType = 5,
						dequeueIfLuaFalse = true,
						lastSkillID = 2258,
						uuid = "ee1873ad-9f69-4fba-ac52-33033fbbfb07",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "fd1f074a-f370-20cb-a64e-7d22161454bf",
						version = 2,
					},
				},
			},
			name = "[NIN] 防止真北浪费",
			uuid = "58b9ba2c-18ab-1d3c-89be-dc278f3a7d92",
			version = 2,
		},
		inheritedIndex = 22,
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
						actionLua = "ACR_RikuNIN2_SafeJump = false\nself.used = true",
						conditions = 
						{
							
							{
								"ec337c18-0f12-56fb-9e11-2514fcf4e4ff",
								true,
							},
						},
						uuid = "3cabe1a5-d50f-7854-8a26-8468e3d24c5f",
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
						conditionLua = "return ACR_RikuNIN2_SafeJump == true",
						dequeueIfLuaFalse = true,
						uuid = "ec337c18-0f12-56fb-9e11-2514fcf4e4ff",
						version = 2,
					},
				},
			},
			name = "[NIN] 关闭安全突进",
			uuid = "2cf22f15-f919-b061-8e1e-474e1d06f7b9",
			version = 2,
		},
		inheritedIndex = 23,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--------------------------------------------------------------",
			uuid = "0ee6ddea-16f6-b8ac-a931-318173d01d9a",
			version = 2,
		},
		inheritedIndex = 24,
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
						conditions = 
						{
							
							{
								"78cd3644-d943-4b4e-89b8-bf05d51b2880",
								true,
							},
						},
						name = "Init",
						uuid = "2f5864c4-cf11-8964-861f-cd197613546b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local scale = Shippo.settings.ToggleScale\nif Shippo ~= nil and Shippo.init == true and table.valid(Shippo.settings.Toggles) then\n    if TimeSince(Shippo.lastTick) > 1000 then\n        for k, v in pairs(Shippo.settings.Toggles) do\n            if v.job == Shippo.JobTable[TensorCore.mGetPlayer().job] or v.job == \"global\" then\n                v.active = true\n            else\n                v.active = false\n            end\n        end\n        Shippo.lastTick = Now()\n    end\n    for k, v in pairs(Shippo.settings.Toggles) do\n        if v.group ~= 0 and v.shown and v.active then\n\n\n\n            GUI:SetNextWindowSize(0, 0, GUI.SetCond_Always)\n            local WinFlags\n            if Shippo.settings.LockedToggles == true then\n                WinFlags =\n                    (GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoScrollbar +\n                    GUI.WindowFlags_NoCollapse +\n                    GUI.WindowFlags_NoMove)\n            else\n                WinFlags =\n                    (GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoScrollbar +\n                    GUI.WindowFlags_NoCollapse)\n            end\n            GUI:PushStyleColor(GUI.Col_WindowBg, 0.070, 0.070, 0.070, Shippo.settings.ToggleBGAlpha or 0.45)\n\n            GUI:Begin(\"ShippoToggles\" .. v.group, true, WinFlags)\n            GUI:PopStyleColor()\n\n            GUI:SetWindowFontSize(scale)\n\n            if v.shown == true then\n                local ChildColorTogglesTable = {}\n                if v.bool ~= true then\n                    ChildColorTogglesTable = {\n                        r = Shippo.settings.ToggleColorDisable.r,\n                        g = Shippo.settings.ToggleColorDisable.g,\n                        b = Shippo.settings.ToggleColorDisable.b,\n                        a = Shippo.settings.ToggleColorDisable.a\n                    }\n                else\n                    ChildColorTogglesTable = {\n                        r = Shippo.settings.ToggleColorEnable.r,\n                        g = Shippo.settings.ToggleColorEnable.g,\n                        b = Shippo.settings.ToggleColorEnable.b,\n                        a = Shippo.settings.ToggleColorEnable.a\n                    }\n                end\n                GUI:PushStyleVar(GUI.StyleVar_ChildWindowRounding, 5)\n                GUI:PushStyleVar(GUI.StyleVar_ItemSpacing, 3, 3)\n\n                GUI:PushStyleColor(\n                    GUI.Col_ChildWindowBg,\n                    ChildColorTogglesTable.r,\n                    ChildColorTogglesTable.g,\n                    ChildColorTogglesTable.b,\n                    ChildColorTogglesTable.a\n                )\n\n                local strlenght = GUI:CalcTextSize(k)\n                local btnWidth = Shippo.settings.ToggleWidth\n                local btnHeight = Shippo.settings.ToggleHeight\n                local btnSpacing = GUI:GetTextLineHeightWithSpacing()\n                GUI:BeginChild(k .. \"##extra1\", btnWidth, btnHeight, false, GUI.WindowFlags_AlwaysAutoResize)\n                GUI:SetWindowFontSize(scale)\n                GUI:SetCursorPosX((btnWidth - strlenght) * 0.5)\n                GUI:SetCursorPosY((btnHeight - btnSpacing) * 0.5)\n\n                GUI:Text(k)\n                GUI:EndChild()\n\n                if (GUI:IsItemHovered()) then\n                    if (GUI:IsMouseClicked(0)) then\n                        v.bool = not v.bool\n                        Shippo.SaveSettings()\n                    end\n                    if GUI:IsMouseClicked(1) then\n                        Shippo.GUI.open = not Shippo.GUI.open\n                    --  Shippo.SaveSettings()\n                    end\n                end\n                GUI:PopStyleColor()\n                GUI:PopStyleVar()\n                GUI:PopStyleVar()\n            end\n            GUI:End()\n        end\n    end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"78cd3644-d943-4b4e-89b8-bf05d51b2880",
								false,
							},
						},
						name = "Draw",
						uuid = "4f08b512-47ef-dbef-90dc-2feceffc0eb3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if Shippo.GUI.open then\n    GUI:SetNextWindowSize(280, 0, GUI.SetCond_Appearing)\n    Shippo.GUI.visible, Shippo.GUI.open = GUI:Begin(\"Shippo 菜单\", Shippo.GUI.open)\n    if Shippo.GUI.visible then\n        local changed\n        Shippo.settings.LockedToggles, changed = GUI:Checkbox(GetString(\"Lock Toggles\"), Shippo.settings.LockedToggles)\n        if changed then\n            Shippo.SaveSettings()\n        end\n\n        GUI:Separator()\n\n        local width = GUI:GetContentRegionAvailWidth()\n        GUI:Dummy((width - 114), 0)\n        GUI:SameLine()\n        GUI:Text(\"[Mod]\")\n        GUI:SameLine()\n        GUI:Dummy((7), 0)\n        GUI:SameLine()\n        GUI:Text(\"+\")\n        GUI:SameLine()\n        GUI:Dummy(-10, 0)\n        GUI:SameLine()\n        GUI:Text(\"[Key]\")\n        if table.valid(Shippo.settings.Toggles) then\n            for k, v in pairs(Shippo.settings.Toggles) do\n                if v.job == Shippo.JobTable[TensorCore.mGetPlayer().job] or v.job == \"global\" then\n                    local changed\n                    v.shown, changed = GUI:Checkbox(GetString(\"##\" .. k), v.shown)\n                    if k == \"Shippo\" then\n                        v.shown = true\n                    end\n                    if changed then\n                        Shippo.SaveSettings()\n                    end\n                    GUI:SameLine()\n\n                    if v.bool == true then\n                        GUI:TextColored(1, 1, 1, 1, k)\n                    else\n                        GUI:TextColored(1, 0, 0, 1, k)\n                    end\n\n                    if GUI:IsItemHovered() then\n                        if GUI:IsItemClicked(0) then\n                            v.bool = not v.bool\n                            Shippo.SaveSettings()\n                        end\n                    end\n\n                    GUI:SameLine()\n                    local width = GUI:GetContentRegionAvailWidth()\n                    GUI:Dummy((width - 125), 0)\n                    GUI:SameLine()\n\n                    GUI:SameLine()\n                    local allowedKey\n                    v.modifier, allowedKey = GUI:Keybind(\"##ShippoModifier\" .. k, v.modifier, 60)\n\n                    if (allowedKey == \"SHIFT\" or allowedKey == \"CONTROL\" or allowedKey == \"ALT\") then\n                        v.modifier = Shippo.ModToKey[allowedKey]\n                    else\n                        v.modifier = 0\n                    end\n                    if GUI:IsItemClicked(1) then\n                        v.modifier = nil\n                    end\n                    GUI:SameLine()\n                    local width = GUI:GetContentRegionAvailWidth()\n                    GUI:Text(\"+\")\n                    GUI:SameLine()\n                    v.key = GUI:Keybind(\"##ShippoKey\" .. k, v.key, 35)\n                    if GUI:IsItemClicked(1) then\n                        v.key = nil\n                    end\n                end\n            end\n        end\n        GUI:Button(\"Restore Defaults\")\n        if GUI:IsItemClicked(0) then\n            Shippo.settings.Toggles = {}\n\n            Shippo.SaveSettings()\n            Shippo = nil\n        end\n        GUI:SameLine()\n        GUI:Dummy(width - 245, 0)\n        GUI:SameLine()\n        GUI:Button(\"Save Keybinds\", 110, 19)\n        if GUI:IsItemClicked(0) then\n            Shippo.SaveSettings()\n            GUI:SetWindowSize(280, 0)\n        end\n\n        if GUI:CollapsingHeader(\"零式设置\") then\n            for k, v in pairs(Shippo.settings.Raid) do\n                GUI:Dummy((7), 0)\n                GUI:SameLine()\n                if GUI:CollapsingHeader(GetString(k)) then\n                    for i, j in pairs(v) do\n                        if j.job == \"global\" then\n                            GUI:Dummy((20), 0)\n                            GUI:SameLine()\n                            j.shown, changed = GUI:Checkbox(GetString(i), j.shown)\n                        end\n                        if j.job == Shippo.JobTable[TensorCore.mGetPlayer().job] then\n                            GUI:Separator()\n                            GUI:Dummy((20), 0)\n                            GUI:SameLine()\n                            j.shown, changed = GUI:Checkbox(GetString(i), j.shown)\n                        end\n                    end\n                end\n            end\n            if changed then\n                Shippo.SaveSettings()\n            end\n        end\n\n\n        if GUI:CollapsingHeader(\"优先级设置\") then\n            GUI:ListBoxHeader(\"##Jobs\", 18, 11)\n            local partyMembers = {\n                {info = Shippo.PartyInfo.MT, label = \"MT\"},\n                {info = Shippo.PartyInfo.ST, label = \"ST\"},\n                {info = Shippo.PartyInfo.H1, label = \"H1\"},\n                {info = Shippo.PartyInfo.H2, label = \"H2\"},\n                {info = Shippo.PartyInfo.D1, label = \"D1\"},\n                {info = Shippo.PartyInfo.D2, label = \"D2\"},\n                {info = Shippo.PartyInfo.D3, label = \"D3\"},\n                {info = Shippo.PartyInfo.D4, label = \"D4\"}\n            }\n        \n            for i, member in ipairs(partyMembers) do\n                local currentseletion = function()\n                    if member.label == Shippo.PartyInfo.selected then\n                        return true\n                    end\n                    return false\n                end\n\n                GUI:Button(member.label)\n                GUI:SameLine()\n\n                if member.info ~= nil and member.info.job ~= nil and member.info.name ~= nil then\n                    GUI:Selectable(\" \" .. Shippo.getJobNameById(member.info.job) .. \" \" .. member.info.name, currentseletion()) \n                else\n                    GUI:Selectable(\" \" .. \"暂无数据\" .. \" \" .. \"暂无数据\"..i, currentseletion()) \n                end\n\n                if GUI:IsItemHovered(GUI.HoveredFlags_AllowWhenBlockedByPopup + GUI.HoveredFlags_AllowWhenBlockedByActiveItem + GUI.HoveredFlags_AllowWhenOverlapped) then\n                    if GUI:IsMouseDown(0) then                        \n                        if Shippo.PartyInfo.mousePosition == nil then\n                            if Shippo.PartyInfo.mousePosition ~= member.label then\n                                Shippo.PartyInfo.mousePosition = member.label\n                            end\n                            if Shippo.PartyInfo.selected ~= member.label then\n                                Shippo.PartyInfo.selected = member.label\n                            end\n                            d(Shippo.PartyInfo.mousePosition)\n                            d(Shippo.PartyInfo.selected)\n                        elseif Shippo.PartyInfo.mousePosition ~= member.label then\n                            local temp = Shippo.PartyInfo[Shippo.PartyInfo.mousePosition]\n                            Shippo.PartyInfo[Shippo.PartyInfo.mousePosition] = Shippo.PartyInfo[member.label]\n                            Shippo.PartyInfo[member.label] = temp                  \n                            Shippo.PartyInfo.mousePosition = member.label\n                            if Shippo.PartyInfo.selected ~= member.label then\n                                Shippo.PartyInfo.selected = member.label\n                            end\n\n                        end\n                    end\n                end\n\n                if Shippo.PartyInfo.mousePosition ~= nil and (GUI:IsMouseReleased(0) or not GUI:IsMouseDown(0)) then\n                    Shippo.PartyInfo.mousePosition = nil\n                end\n\n            end\n            GUI:ListBoxFooter()\n            if Shippo.PartyInfo.mousePosition ~= nil and not GUI:IsItemHovered(GUI.HoveredFlags_AllowWhenBlockedByPopup + GUI.HoveredFlags_AllowWhenBlockedByActiveItem + GUI.HoveredFlags_AllowWhenOverlapped) then\n                Shippo.PartyInfo.mousePosition = nil\n            end\n\n        end\n        \n        if GUI:CollapsingHeader(\"Customize##Shippo##\") then\n            Shippo.settings.ToggleScale = GUI:SliderFloat(\"Text Scale##ShippoScale##\", Shippo.settings.ToggleScale, 0.1,  5, \"%.2f\", 1)\n            Shippo.settings.ToggleHeight = GUI:SliderFloat(\"Height##ShippoHeight##\", Shippo.settings.ToggleHeight, 1,  200, \"%.0f\", 1)\n            Shippo.settings.ToggleWidth = GUI:SliderFloat(\"Width##ShippoWidth##\", Shippo.settings.ToggleWidth, 1, 500,\"%.0f\", 1)\n            Shippo.settings.ToggleBGAlpha = GUI:SliderFloat(\"BG Alpha##ShippoBGAlpha##\", Shippo.settings.ToggleBGAlpha,0, 1, \"%.3f\", 1)\n            GUI:PushItemWidth(205)\n            Shippo.settings.ToggleColorEnable.r, Shippo.settings.ToggleColorEnable.g, Shippo.settings.ToggleColorEnable\n                .b, Shippo.settings.ToggleColorEnable.a, changed =\n            GUI:ColorEdit4(\"Enabled##Shippo##\", Shippo.settings.ToggleColorEnable.r,\n                    Shippo.settings.ToggleColorEnable.g, Shippo.settings.ToggleColorEnable.b,\n                    Shippo.settings.ToggleColorEnable.a, GUI.ColorEditMode_RGB)\n\n            Shippo.settings.ToggleColorDisable.r, Shippo.settings.ToggleColorDisable.g, Shippo.settings\n                .ToggleColorDisable.b, Shippo.settings.ToggleColorDisable.a, changed = GUI:ColorEdit4(\n                \"Disabled##Shippo##\", Shippo.settings.ToggleColorDisable.r, Shippo.settings.ToggleColorDisable.g,\n                Shippo.settings.ToggleColorDisable.b, Shippo.settings.ToggleColorDisable.a, GUI.ColorEditMode_RGB)\n            GUI:PopItemWidth()\n            if GUI:Button(\"Reset Customization##ShippoColors\") then\n                Shippo.settings.ToggleColorEnable = {\n                    r = 0.631,\n                    g = 0.186,\n                    b = 0.217,\n                    a = 1.000\n                }\n                Shippo.settings.ToggleColorDisable = {\n                    r = 0.070,\n                    g = 0.070,\n                    b = 0.070,\n                    a = .749\n                }\n                Shippo.settings.ToggleScale = 1\n                Shippo.settings.ToggleHeight = 30\n                Shippo.settings.ToggleWidth = 105\n                Shippo.settings.ToggleBGAlpha = 0.45\n                Shippo.SaveSettings()\n            end\n            GUI:SameLine()\n            GUI:Dummy(0, 0)\n            GUI:SameLine()\n            if GUI:Button(\"Save##ShippoColors\") then\n                Shippo.SaveSettings()\n            end\n        end\n        GUI:SetWindowSize(280, 0)\n    end\n\n    GUI:End()\nend\n",
						conditions = 
						{
							
							{
								"78cd3644-d943-4b4e-89b8-bf05d51b2880",
								false,
							},
						},
						name = "Menu",
						uuid = "b3ca9bb2-c694-4e11-a30c-a6ff8da67b28",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "for k, v in pairs(Shippo.settings.Toggles) do\n    if Shippo.GUI.open then\n        if v.key ~= nil and (v.modifier ~= nil or v.modifier > 0) then\n            v.hasModifier = true\n        end\n        if v.key ~= nil and (v.modifier == nil or v.modifier == 0) then\n            v.hasModifier = false\n        end\n    end\n\n    if v.hasModifier ~= true then\n        if\n            v.active and GUI:IsKeyPressed(v.key, false) and not GUI:IsKeyDown(16) and not GUI:IsKeyDown(17) and\n                not GUI:IsKeyDown(18)\n         then\n            v.bool = not v.bool\n        end\n    end\n    if v.hasModifier == true then\n        if v.active and GUI:IsKeyPressed(v.key, false) and GUI:IsKeyDown(v.modifier) then\n            v.bool = not v.bool\n        end\n    end\nend\n",
						conditions = 
						{
							
							{
								"78cd3644-d943-4b4e-89b8-bf05d51b2880",
								false,
							},
						},
						name = "Keypress",
						uuid = "439dbf0d-d385-86ed-a355-66a04e3c9b7a",
						version = 2,
					},
					inheritedIndex = 3,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Shippo == nil",
						uuid = "78cd3644-d943-4b4e-89b8-bf05d51b2880",
						version = 2,
					},
				},
			},
			eventType = 13,
			name = "init",
			uuid = "9b34f40f-7948-db56-8f02-284c1c0daea8",
			version = 2,
		},
		inheritedIndex = 25,
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
						actionLua = "local Party = TensorCore.getEntityGroupList(\"Party\")\nlocal MyPartyenti = {}\n\nfor _, v in ipairs(Shippo.PartyInfo.defaultJobPriority) do \n    for _, val in pairs(Party) do \n        if val.job == v then \n            table.insert(MyPartyenti,val)\n        end \n    end \nend \n\nShippo.PartyInfo.MT = MyPartyenti[1]\nShippo.PartyInfo.ST = MyPartyenti[2]\nShippo.PartyInfo.H1 = MyPartyenti[3]\nShippo.PartyInfo.H2 = MyPartyenti[4]\nShippo.PartyInfo.D1 = MyPartyenti[5]\nShippo.PartyInfo.D2 = MyPartyenti[6]\nShippo.PartyInfo.D3 = MyPartyenti[7]\nShippo.PartyInfo.D4 = MyPartyenti[8]\n\nSendTextCommand(\"/echo 小队优先级初始化完成\")\n\nself.used = true",
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
						conditionLua = "local Party = TensorCore.getEntityGroupList(\"Party\")\nlocal Partycount = 0\n\nfor v,k in pairs(Party) do\n    Partycount = Partycount + 1\nend\n\nreturn Partycount >= 8 and Shippo ~= nil",
						conditionType = 10,
						uuid = "451c7173-2065-5087-a578-b3afb9853580",
						version = 2,
					},
				},
			},
			eventType = 11,
			name = "优先级",
			uuid = "7c93444d-f4e7-ada5-9c48-e0c0af320911",
			version = 2,
		},
		inheritedIndex = 26,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "--------------------------------------------------------------",
			uuid = "a04a1869-74a8-d475-a618-3db4b680a8cc",
			version = 2,
		},
		inheritedIndex = 27,
	},
	
	{
		data = 
		{
			name = "OnDeath Reaction",
			uuid = "6120d8cb-945d-78de-8e5a-7a7d29f02744",
			version = 2,
		},
		inheritedIndex = 29,
		inheritedObjectUUID = "6231056d-e1d8-b397-a138-b71fd1cba87c",
		inheritedOverwrites = 
		{
		},
	},
	
	{
		data = 
		{
			name = "OnWipe Reaction",
			uuid = "a442a1aa-646d-f9e9-8ffd-85b3bd47dec3",
			version = 2,
		},
		inheritedIndex = 30,
		inheritedObjectUUID = "348813e1-6bc1-b26d-bd33-984e6b516f95",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuNIN2_CD = true\nACR_RikuNIN2_9GCDTrick = true\nACR_RikuNIN2_AOE = true\nACR_RikuNIN2_ClipTA = false -- 穿插攻其不备\nACR_RikuNIN2_Burn = false -- 燃尽爆发\nACR_RikuNIN2_BurnMudra = false\nACR_RikuNIN2_BurnNinki = false\nACR_RikuNIN2_SmartAOE = true\nACR_RikuNIN2_TrueNorth = true\nACR_RikuNIN2_Suiton = true\nACR_RikuNIN2_TrickAttack = true\nACR_RikuNIN2_SafeJump = false\nACR_RikuNIN2_PreTA = true\n-- ACR_RikuNIN2_Potion = true  --爆发药\nACR_RikuNIN2_PhantomKamaitachi = true\nACR_RikuNIN2_Ninjutsu = true\nACR_RikuNIN2_Mug = true\nACR_RikuNIN2_Huton = true\nACR_RikuNIN2_HoldNinki = false\nACR_RikuNIN2_FastTA = false\nACR_RikuNIN2_DotonST = false\nACR_RikuNIN2_Doton = false\nACR_RikuNIN2_BurnPhantom = false\nACR_RikuNIN2_Bunshin = true\nACR_RikuNIN2_ThrowingDagger = true\nSendTextCommand(\"/e /atargetc 0\")\nself.used = true",
							conditions = 
							{
								
								{
									"45b9cb72-93a4-acd3-a7a4-d8c00b9d6bd1",
									true,
								},
							},
							name = "TOP_NIN",
							uuid = "4949b50f-c711-1317-b786-5cdcc046a024",
							version = 2,
						},
					},
				},
			},
			conditions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 1122,
							uuid = "45b9cb72-93a4-acd3-a7a4-d8c00b9d6bd1",
							version = 2,
						},
					},
				},
			},
		},
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
						actionLua = "SendTextCommand(\"/e /imudra 40\")\nShippo.imudra = 40\n\nself.used = true",
						conditions = 
						{
							
							{
								"dfb22281-b9e8-767f-ab11-be03e58d8d27",
								true,
							},
							
							{
								"cb60d71a-8640-9ab4-8858-4fe3b8eefec3",
								true,
							},
						},
						endIfUsed = true,
						uuid = "3eb3eabc-f0c0-d95b-b417-ff5948da11c9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SendTextCommand(\"/e /imudra 0\")\nShippo.imudra = 0\n\nself.used = true",
						conditions = 
						{
							
							{
								"37a65714-80bd-cf13-b7ab-e99a156368e0",
								false,
							},
							
							{
								"cb60d71a-8640-9ab4-8858-4fe3b8eefec3",
								false,
							},
						},
						endIfUsed = true,
						uuid = "f0c5469a-b8b0-5680-a7f5-3d3148a934df",
						version = 2,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 3254,
						name = "target_have_TA",
						uuid = "37a65714-80bd-cf13-b7ab-e99a156368e0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						lastSkillID = 2258,
						name = "lastSkillTA",
						uuid = "dfb22281-b9e8-767f-ab11-be03e58d8d27",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return Shippo ~= nil and Shippo.imudra == 0",
						name = "imudra = 0",
						uuid = "cb60d71a-8640-9ab4-8858-4fe3b8eefec3",
						version = 2,
					},
				},
			},
			enabled = false,
			name = "[Speeder] 被刺后结印加速",
			uuid = "f47faff5-7426-879c-a46c-1081f42e812a",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
		"store\\anyone\\ninja",
	},
}



return tbl