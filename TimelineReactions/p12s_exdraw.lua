local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.P12SJobOrder == nil then\n    data.P12SJobOrder = {}\nend\ndata.P12SJobOrder[JobPriority.PartyInfo.MT.job] = 1\ndata.P12SJobOrder[JobPriority.PartyInfo.ST.job] = 2\ndata.P12SJobOrder[JobPriority.PartyInfo.H1.job] = 3\ndata.P12SJobOrder[JobPriority.PartyInfo.H2.job] = 4\ndata.P12SJobOrder[JobPriority.PartyInfo.D1.job] = 5\ndata.P12SJobOrder[JobPriority.PartyInfo.D2.job] = 6\ndata.P12SJobOrder[JobPriority.PartyInfo.D3.job] = 7\ndata.P12SJobOrder[JobPriority.PartyInfo.D4.job] = 8\n\ndata.GuidePosition = function(x, z, time)\n    Drawer(x, z, time, 1, 0)\nend\n\ndata.GuidePositionWithSetSize = function(x, z, time, size)\n    Drawer(x, z, time, size, 0)\nend\n\ndata.GuidePositionWithSetDelay = function(x, z, time, size, delay)\n    Drawer(x, z, time, size, delay)\nend\n\nfunction Drawer(x, z, time, size, delay)\n    local newdraw = Argus2.ShapeDrawer:new(\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n        1)\n    newdraw:addTimedCircle(\n        time,\n        x,\n        0,\n        z,\n        size,\n        delay,\n        true\n    )\n\n    Argus2.addTimedRectFilled(\n        time,\n        x,\n        0,\n        z,\n        0.7,\n        0.1,\n        math.pi,\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        nil,\n        delay,\n        nil,\n        TensorCore.mGetPlayer().id,\n        false,\n        nil,\n        3.0,\n        nil,\n        nil,\n        true\n    )\nend\nself.used = true\n",
							gVar = "ACR_RikuMNK2_CD",
							name = "Lua",
							uuid = "961cd884-e35f-d84f-9f9d-96e5299c79ca",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 11.1,
				name = "初始化",
				timelineIndex = 2,
				uuid = "2b00efa6-611d-8110-8196-d6c0e672acdd",
				version = 2,
			},
		},
	},
	[5] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 9000\nlocal oldDraw = true\nfor _, ent in pairs(TensorCore.entityList(\"contentid=12378\")) do\n    if Argus.isEntityVisible(ent) then\n        local targetPos = { x = 100, z = 110 }\n        if ent.pos.z > 100 then\n            targetPos = { x = 100, z = 90 }\n        end\n        local newdraw = Argus2.ShapeDrawer:new(\n            (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n            (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n            (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n            (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n            1.5)\n        newdraw:addTimedCircle(\n            drawTime,\n            targetPos.x,\n            0,\n            targetPos.z,\n            1,\n            0,\n            oldDraw\n        )\n\n        Argus2.addTimedRectFilled(\n            drawTime,\n            targetPos.x,\n            0,\n            targetPos.z,\n            1,\n            0.1,\n            math.pi,\n            (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n            (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n            nil,\n            0,\n            nil,\n            TensorCore.mGetPlayer().id,\n            false,\n            nil,\n            3.0,\n            nil,\n            nil,\n            oldDraw\n        )\n\n        break\n    end\nend\nself.used = true\n",
							uuid = "a133da61-de0e-8928-ac32-f7e3c073e9c6",
							version = 2,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 36.7,
				name = "开场AC位置指路",
				timelineIndex = 5,
				timerOffset = -9,
				uuid = "a7698767-f759-c126-892d-3723e146077c",
				version = 2,
			},
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 10000\nlocal player = TensorCore.mGetPlayer()\nlocal buffType\nif TensorCore.hasBuff(player, 3579) then --白BUFF\n    buffType = 1\nelseif TensorCore.hasBuff(player, 3580) then\n    buffType = 2\nelse\n    self.used = true\n    return\nend\n\n-- tn的职业号\nlocal tankAndHeal = { 24, 33, 21, 32, 37, 19, 40, 28 }\nlocal targetPos = {}\ntargetPos[1] = { x = 90, z = 90, 1 }\ntargetPos[2] = { x = 110, z = 90, 2 }\ntargetPos[3] = { x = 110, z = 110, 3 }\ntargetPos[4] = { x = 90, z = 110, 4 }\nlocal isDps = true\nif table.contains(tankAndHeal, player.job) then\n    isDps = false\nend\n\nlocal playerPos = {}\n-- 1.获取所有的线 以及小怪的位置\nfor _, ent in pairs(TensorCore.entityList(\"contentid=12378\")) do\n    local tethers = Argus.getTethersOnEnt(ent.id)\n    local isLightMonster = 0\n\n    -- 获取当前小怪颜色\n    for _, tether in pairs(tethers) do\n        if tether.type == 234 or tether.type == 251 then -- 暗线\n            isLightMonster = 1\n            break\n        elseif tether.type == 233 or tether.type == 250 then --光\n            isLightMonster = 2\n            break\n        end\n        break\n    end\n    if isLightMonster > 0 then\n        -- 计算当前小怪投影位置\n        if ent.pos.z < 90 then       -- A点小怪\n            playerPos[1] = { pos = ent.pos.x, type = isLightMonster }\n        elseif ent.pos.x > 110 then  -- B点小怪\n            playerPos[2] = { pos = ent.pos.z, type = isLightMonster }\n        elseif ent.pos.z > 110 then  -- C点小怪\n            playerPos[3] = { pos = ent.pos.x, type = isLightMonster }\n        elseif ent.pos.x < 90 then   -- D点小怪\n            playerPos[4] = { pos = ent.pos.z, type = isLightMonster }\n        end\n    end\nend\n\nlocal gotoPos\nif isDps then\n    -- DCBA 顺序判断\n    if playerPos[4].type == buffType then\n        -- 从23中找到合适的点\n        if math.abs(targetPos[2].z - playerPos[4].pos) < math.abs(targetPos[3].z - playerPos[4].pos) then\n            gotoPos = targetPos[2]\n        else\n            gotoPos = targetPos[3]\n        end\n    elseif playerPos[3].type == buffType then\n        -- 从12中找到合适的点\n        if math.abs(targetPos[1].x - playerPos[3].pos) < math.abs(targetPos[2].x - playerPos[3].pos) then\n            gotoPos = targetPos[1]\n        else\n            gotoPos = targetPos[2]\n        end\n    elseif playerPos[2].type == buffType then\n        -- 从14中找到合适的点\n        if math.abs(targetPos[1].z - playerPos[2].pos) < math.abs(targetPos[4].z - playerPos[2].pos) then\n            gotoPos = targetPos[1]\n        else\n            gotoPos = targetPos[4]\n        end\n    elseif playerPos[1].type == buffType then\n        -- 从23中找到合适的点\n        if math.abs(targetPos[3].x - playerPos[1].pos) < math.abs(targetPos[4].x - playerPos[1].pos) then\n            gotoPos = targetPos[3]\n        else\n            gotoPos = targetPos[4]\n        end\n    end\nelse\n    -- ABCD顺序判断\n     if playerPos[1].type == buffType then\n        -- 从34中找到合适的点\n        if math.abs(targetPos[3].x - playerPos[1].pos) < math.abs(targetPos[4].x - playerPos[1].pos) then\n            gotoPos = targetPos[3]\n        else\n            gotoPos = targetPos[4]\n        end\n    elseif playerPos[2].type == buffType then\n        -- 从12中找到合适的点\n        if math.abs(targetPos[1].z - playerPos[2].pos) < math.abs(targetPos[3].z - playerPos[2].pos) then\n            gotoPos = targetPos[1]\n        else\n            gotoPos = targetPos[4]\n        end\n    elseif playerPos[3].type == buffType then\n        -- 从14中找到合适的点\n        if math.abs(targetPos[1].x - playerPos[3].pos) < math.abs(targetPos[2].x - playerPos[3].pos) then\n            gotoPos = targetPos[1]\n        else\n            gotoPos = targetPos[2]\n        end\n    elseif playerPos[4].type == buffType then\n        -- 从23中找到合适的点\n        if math.abs(targetPos[2].z - playerPos[4].pos) < math.abs(targetPos[3].z - playerPos[4].pos) then\n            gotoPos = targetPos[2]\n        else\n            gotoPos = targetPos[3]\n        end\n    end\nend\n\n\nlocal newdraw = Argus2.ShapeDrawer:new(\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n    1.5)\nnewdraw:addTimedCircle(\n    drawTime,\n    gotoPos.x,\n    0,\n    gotoPos.z,\n    1,\n    0,\n    true\n)\n\nArgus2.addTimedRectFilled(\n    drawTime,\n    gotoPos.x,\n    0,\n    gotoPos.z,\n    1,\n    0.1,\n    math.pi,\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    nil,\n    0,\n    nil,\n    TensorCore.mGetPlayer().id,\n    false,\n    nil,\n    3.0,\n    nil,\n    nil,\n    true\n)\nself.used = true\n",
							uuid = "db1cc700-40d4-3bb9-80b4-ae9a84945f49",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 75.8,
				name = "2范放塔指路",
				timelineIndex = 13,
				timerOffset = -9,
				uuid = "ec1e6bc4-ff05-5f57-b780-dc13b97ef842",
				version = 2,
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
							actionLua = "local drawTime = 9000\nlocal player = TensorCore.mGetPlayer()\n-- 有BUFF直接 退出\nif TensorCore.hasBuff(player, 3579) or TensorCore.hasBuff(player, 3580) then\n    self.used = true\n    return\nend\nlocal tethers = Argus.getTethersOnEnt(player.id)\nlocal selfLink\nfor _, tether in pairs(tethers) do\n    local partner = TensorCore.mGetEntity(tether.partnerid)\n    selfLink = partner.pos\n    break\nend\nif selfLink == nil then\n    self.used = true\n    return\nend\n\nlocal targetPos = TensorCore.getPosInDirection(selfLink, selfLink.h, 38)\nlocal newdraw = Argus2.ShapeDrawer:new(\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n    1.5)\nnewdraw:addTimedCircle(\n    drawTime,\n    targetPos.x,\n    0,\n    targetPos.z,\n    0.7,\n    0,\n    true\n)\n\nArgus2.addTimedRectFilled(\n    drawTime,\n    targetPos.x,\n    0,\n    targetPos.z,\n    1,\n    0.1,\n    math.pi,\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    nil,\n    0,\n    nil,\n    TensorCore.mGetPlayer().id,\n    false,\n    nil,\n    3.0,\n    nil,\n    nil,\n    true\n)\n\nlocal endPos = {}\nendPos[1] = { x = 90, z = 90, 1 }\nendPos[2] = { x = 110, z = 90, 2 }\nendPos[3] = { x = 110, z = 110, 3 }\nendPos[4] = { x = 90, z = 110, 4 }\nlocal distance = 10000\nlocal index = 1\nfor i = 1, 4, 1 do\n    local disSqr = (endPos[i].x - targetPos.x) ^ 2 + (endPos[i].z - targetPos.z) ^ 2\n    if disSqr < distance then\n        distance = disSqr\n        index = i\n    end\nend\n\nnewdraw:addTimedCircle(\n    3000,\n    endPos[index].x,\n    0,\n    endPos[index].z,\n    0.7,\n    drawTime,\n    true\n)\n\nArgus2.addTimedRectFilled(\n    3000,\n    endPos[index].x,\n    0,\n    endPos[index].z,\n    1,\n    0.1,\n    math.pi,\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n    nil,\n    drawTime,\n    nil,\n    TensorCore.mGetPlayer().id,\n    false,\n    nil,\n    3.0,\n    nil,\n    nil,\n    true\n)\n\nself.used = true",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "3760a68c-6311-6f91-bbc6-aefcf23c34b4",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 75.8,
				name = "2范拉线指路",
				timelineIndex = 13,
				timerOffset = -9,
				uuid = "7b844192-2928-1549-b905-8ca55d16b7f4",
				version = 2,
			},
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "--[[\n    P12S 门神范式3 DPS指路\n    212 放电\n]]\n--\n\n-- 拉线指路时间\nlocal linkDrawTime = 7000\n-- 引导激光指路时间\nlocal guideBimTime = 8000\n\nlocal player = TensorCore.mGetPlayer()\n\nlocal cantUseJob = { 24, 33, 21, 32, 37, 19, 40, 28 }\nfunction Call3DrawPos(x, z, time, size, delay)\n    local newdraw = Argus2.ShapeDrawer:new(\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n        1.5)\n    newdraw:addTimedCircle(\n        time,\n        x,\n        0,\n        z,\n        size,\n        delay,\n        true\n    )\n\n    Argus2.addTimedRectFilled(\n        time,\n        x,\n        0,\n        z,\n        1,\n        0.1,\n        math.pi,\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        nil,\n        delay,\n        nil,\n        TensorCore.mGetPlayer().id,\n        false,\n        nil,\n        3.0,\n        nil,\n        nil,\n        true\n    )\nend\n\n-- 找到最北边的108\nlocal norset108\nfor _, ent in pairs(TensorCore.entityList(\"contentid=108\")) do\n    if Argus.isEntityVisible(ent) then\n        if norset108 == nil then\n            norset108 = ent.pos\n        elseif norset108.z > ent.pos.z then\n            norset108 = ent.pos\n        end\n    end\nend\n\n-- 判断 场地左上角是否存在\nlocal goundLeft = false;\nif norset108.x > 100 then\n    goundLeft = true;\nend\ndata.P12SCallGroudLeft = goundLeft\n\n-- 职业判断是TN\nif table.contains(cantUseJob, player.job) then\n    if goundLeft then\n        if TensorCore.hasBuff(player.id, 3583) then  -- 十字\n            Call3DrawPos(84, 85, linkDrawTime, 1, 0)\n        elseif TensorCore.hasBuff(player.id, 3584) then -- X字\n            Call3DrawPos(116, 115, linkDrawTime, 1, 0)\n        elseif TensorCore.hasBuff(player.id, 3579) or TensorCore.hasBuff(player.id, 3580) then\n            for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n                if TensorCore.hasBuff(player.id, 3579) or TensorCore.hasBuff(player.id, 3580)\n                    and player.id ~= ent.id\n                then\n                    if data.P12SJobOrder[player.job] < data.P12SJobOrder[ent.job] then\n                        Call3DrawPos(84, 105, linkDrawTime, 1, 0)\n                    else\n                        Call3DrawPos(116, 95, linkDrawTime, 1, 0)\n                    end\n                    break\n                end\n            end\n        end\n    else\n        if TensorCore.hasBuff(player.id, 3583) then -- 十字\n            Call3DrawPos(116, 85, linkDrawTime, 1, 0)\n        elseif TensorCore.hasBuff(player.id, 3584) then -- X字\n            Call3DrawPos(84, 115, linkDrawTime, 1, 0)\n        elseif TensorCore.hasBuff(player.id, 3579) or TensorCore.hasBuff(player.id, 3580) then\n            for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n                if TensorCore.hasBuff(player.id, 3579) or TensorCore.hasBuff(player.id, 3580)\n                    and player.id ~= ent.id\n                then\n                    if data.P12SJobOrder[player.job] < data.P12SJobOrder[ent.job] then\n                        Call3DrawPos(116, 105, linkDrawTime, 1, 0)\n                    else\n                        Call3DrawPos(84, 95, linkDrawTime, 1, 0)\n                    end\n                    break\n                end\n            end\n        end\n    end\nelse\n    -- 根据自身连线找到小怪位置 判断是否为水平，并判断线颜色\n    local tethers = Argus.getTethersOnEnt(player.id)\n    local selfLink\n    -- 自己是否为光连线， 并记录连线目标位置\n    --  未拉直光 233  拉直 250\n    --  未拉直暗 234  拉直 251\n    local isLight = false\n    for _, tether in pairs(tethers) do\n        local partner = TensorCore.mGetEntity(tether.partnerid)\n        if tether.type == 234 or tether.type == 251 then\n            isLight = false\n        elseif tether.type == 233 or tether.type == 250 then\n            isLight = true\n        end\n        selfLink = partner.pos\n        break\n    end\n\n    -- 自己连线是否为直的, 并绘制指路\n    local playerEndPos = { x = 0, z = 0 }\n    local straight = false\n    if goundLeft then                -- 如果左场地\n        if selfLink.x < 100 then     -- 左\n            if selfLink.z > 100 then --  左下\n                Call3DrawPos(109, 91, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 109, z = 91 }\n                straight = false\n            else --  左上\n                Call3DrawPos(112, selfLink.z, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 112, z = selfLink.z }\n                straight = true\n            end\n        else                         -- 右\n            if selfLink.z > 100 then --  右下\n                Call3DrawPos(88, selfLink.z, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 88, z = selfLink.z }\n                straight = true\n            else --  右上\n                Call3DrawPos(91, 109, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 91, z = 109 }\n                straight = false\n            end\n        end\n    else\n        -- 如果是右场地\n        if selfLink.x < 100 then     -- 左\n            if selfLink.z > 100 then --  左下\n                Call3DrawPos(112, selfLink.z, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 112, z = selfLink.z }\n                straight = true\n            else --  左上\n                Call3DrawPos(109, 109, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 109, z = 109 }\n                straight = false\n            end\n        else\n            -- 右\n            if selfLink.z > 100 then --  右下\n                Call3DrawPos(91, 91, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 91, z = 91 }\n                straight = false\n            else --  右上\n                Call3DrawPos(88, selfLink.z, linkDrawTime, 0.7, 0)\n                playerEndPos = { x = 88, z = selfLink.z }\n                straight = true\n            end\n        end\n    end\n    -- 3.遍历小队列表，找到塔的颜色 //光BUFFID = 3579\n    -- 是否是光塔\n    data.P12SHasBuffPlayers = {}\n    local isLightTower = false\n    for _, ent in pairs(TensorCore.entityList(\"friendly=true\")) do\n        if TensorCore.hasBuff(ent, 3579) then\n            isLightTower = true\n            table.insert(data.P12SHasBuffPlayers, ent)\n        elseif TensorCore.hasBuff(ent, 3580) then\n            table.insert(data.P12SHasBuffPlayers, ent)\n            isLightTower = false\n        end\n    end\n    -- 记录是否需要踩塔\n    data.P12SCall3NeedTakeTower = isLight and (not isLightTower) or (not isLight) and isLightTower\n    data.P12SMyTetherType = straight\n\n    if not data.P12SCall3NeedTakeTower then\n        if straight then                 --如果是水平\n            if playerEndPos.x > 100 then --右边\n                Call3DrawPos(110, 100, guideBimTime, 1, linkDrawTime)\n            else                         -- 左边\n                Call3DrawPos(90, 100, guideBimTime, 1, linkDrawTime)\n            end\n        else\n            if playerEndPos.z > 100 then\n                Call3DrawPos(100, 110, guideBimTime, 1, linkDrawTime)\n            else\n                Call3DrawPos(100, 90, guideBimTime, 1, linkDrawTime)\n            end\n        end\n    end\nend\nself.used = true\n",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "124099d7-6caf-6ff8-9c67-267e3980eec1",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 212.5,
				name = "绘制DPS拉线引导TN踩塔",
				timelineIndex = 39,
				timerOffset = -7,
				uuid = "3d3ec831-ee55-e4e2-a800-97c96f4b2d26",
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
							actionLua = "-- //光BUFFID = 3579\nlocal player = TensorCore.mGetPlayer()\nlocal drawTime = 6500\nfor _, val in pairs(TensorCore.entityList(\"Party\")) do\n    if val.job == 21 then\n        player = val\n        break\n    end\nend\nif TensorCore.hasBuff(player.id, 3579) or TensorCore.hasBuff(player.id, 3580) then\n    local targetBuff\n    if TensorCore.hasBuff(player.id, 3579) then --如果光BUFF\n        targetBuff = 3577\n    elseif TensorCore.hasBuff(player.id, 3580) then\n        targetBuff = 3576\n    end\n\n    -- 找到距离自己最近的一个人，看看他有木有buff\n    local distance = 100000000\n    local nearest\n    for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n        if data.P12SJobOrder[ent.job] ~= nil then\n            local disSqr = (player.pos.z - ent.pos.x) ^ 2 + (player.pos.z - ent.pos.z) ^ 2\n            if disSqr < distance then\n                distance = disSqr\n                nearest = ent\n            end\n        end\n    end\n    -- 找到暗buff 当前平台放塔\n    if TensorCore.hasBuff(nearest.id, targetBuff) then\n        if data.P12SCallGroudLeft then\n            if player.pos.z > 100 then\n                data.GuidePosition(90, 105, drawTime)\n            else\n                data.GuidePosition(110, 95, drawTime)\n            end\n        else\n            if player.pos.z > 100 then\n                data.GuidePosition(110, 105, drawTime)\n            else\n                data.GuidePosition(90, 95, drawTime)\n            end\n        end\n    else\n        --最近的人木用BUFF，去中间\n        data.GuidePosition(100, 100, drawTime)\n    end\nelse\n    if TensorCore.hasBuff(player.id, 3583) then -- 十字\n        if data.P12SCallGroudLeft then\n            data.GuidePosition(80, 80, drawTime)\n        else\n            data.GuidePosition(120, 80, drawTime)\n        end\n    elseif TensorCore.hasBuff(player.id, 3584) then\n        data.GuidePosition(100, 120, drawTime)\n    end\nend\nself.used = true\n",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "aab93d49-4345-c121-88a7-32af4a175043",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 212.5,
				name = "TN放塔指路",
				timelineIndex = 39,
				timerOffset = 1,
				uuid = "943ac967-23e2-a5d2-839c-796b6aec7f02",
				version = 2,
			},
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawerTime = 3000\n-- 职业检查，防止报错\nlocal player = TensorCore.mGetPlayer()\nlocal cantUseJob = { 24, 33, 21, 32, 37, 19, 40, 28 }\nif table.contains(cantUseJob, player.job) or data.P12SHasBuffPlayers == nil or (not data.P12SCall3NeedTakeTower) then\n    self.used = true;\n    return\nend\n\nfunction Call3DrawTowerPos(x, z, time, size)\n    local newdraw = Argus2.ShapeDrawer:new(\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n        1.5)\n    newdraw:addTimedCircle(\n        time,\n        x,\n        0,\n        z,\n        1,\n        0,\n        false\n    )\n\n    Argus2.addTimedRectFilled(\n        time,\n        x,\n        0,\n        z,\n        1,\n        0.1,\n        math.pi,\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        nil,\n        0,\n        nil,\n        TensorCore.mGetPlayer().id,\n        false,\n        nil,\n        3.0,\n        nil,\n        nil,\n        true\n    )\nend\n\nlocal MiddleOne\nlocal OutOne\nif math.abs(data.P12SHasBuffPlayers[1].pos.x - 100) < math.abs(data.P12SHasBuffPlayers[2].pos.x - 100) then\n    MiddleOne = data.P12SHasBuffPlayers[1]\n    OutOne = data.P12SHasBuffPlayers[2]\nelse\n    MiddleOne = data.P12SHasBuffPlayers[2]\n    OutOne = data.P12SHasBuffPlayers[1]\nend\n\nif data.P12SMyTetherType then --水平\n    Call3DrawTowerPos(MiddleOne.pos.x, MiddleOne.pos.z, drawerTime)\nelse\n    Call3DrawTowerPos(OutOne.pos.x, OutOne.pos.z, drawerTime)\nend\n\nself.used = true",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "bb7b40df-b3e7-ecef-9fb9-8264c06ab7bc",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 220.8,
				name = "绘制DPS踩塔",
				timelineIndex = 44,
				uuid = "4c612022-33c4-726a-b73e-a9e1e3eb9075",
				version = 2,
			},
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n100,\n0,\n85,\n1,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n10000, \n100,\n0,\n85,\n1, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							uuid = "621ed2b0-00d6-785d-80f5-7d4538a1919d",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 312.4,
				name = "[huatu]safe A",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 15,
				uuid = "7afc7e71-020e-31a0-a771-012c30cda5b8",
				version = 2,
			},
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.P12SJobOrder = {}\n\ndata.P12SJobOrder[JobPriority.PartyInfo.MT.job] = 1\ndata.P12SJobOrder[JobPriority.PartyInfo.ST.job] = 2\ndata.P12SJobOrder[JobPriority.PartyInfo.H1.job] = 3\ndata.P12SJobOrder[JobPriority.PartyInfo.H2.job] = 4\ndata.P12SJobOrder[JobPriority.PartyInfo.D1.job] = 5\ndata.P12SJobOrder[JobPriority.PartyInfo.D2.job] = 6\ndata.P12SJobOrder[JobPriority.PartyInfo.D3.job] = 7\ndata.P12SJobOrder[JobPriority.PartyInfo.D4.job] = 8\n\ndata.TankJobs = { 19, 21, 32, 37 }\ndata.HealerJobs = { 24, 28, 33, 40 }\ndata.MeleeJob = { 20, 22, 30, 34, 39 }\ndata.RangeJob = { 31, 23, 28 }\ndata.MagicJob = { 25, 27, 35 }\ndata.IsTank = function(job)\n    return table.contains(data.TankJobs, job)\nend\n\ndata.IsHealer = function(job)\n    return table.contains(data.HealerJobs, job)\nend\n\ndata.IsDps = function(job)\n    return table.contains(data.MeleeJob, job) or table.contains(data.RangeJob, job) or table.contains(data.MagicJob, job)\nend\n\ndata.GuidePositionFull = Drawer\n\ndata.GuidePosition = function(x, z, time)\n    Drawer(x, z, time, 1, 0)\nend\n\ndata.GuidePositionWithSetSize = function(x, z, time, size)\n    Drawer(x, z, time, size, 0)\nend\n\ndata.GuidePositionWithSetDelay = function(x, z, time, size, delay)\n    Drawer(x, z, time, size, delay)\nend\n\nfunction Drawer(x, z, time, size, delay)\n    local newdraw = Argus2.ShapeDrawer:new(\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n        (GUI:ColorConvertFloat4ToU32(255 / 255, 225 / 255, 225 / 255, 0.85)),\n        1)\n    newdraw:addTimedCircle(\n        time,\n        x,\n        0,\n        z,\n        size,\n        delay,\n        true\n    )\n\n    Argus2.addTimedRectFilled(\n        time,\n        x,\n        0,\n        z,\n        0.7,\n        0.1,\n        math.pi,\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        (GUI:ColorConvertFloat4ToU32(25 / 255, 215 / 255, 25 / 255, .35)),\n        nil,\n        delay,\n        nil,\n        TensorCore.mGetPlayer().id,\n        false,\n        nil,\n        3.0,\n        nil,\n        nil,\n        true\n    )\nend\n\n-- 计算自己的位置\nlocal player = TensorCore.mGetPlayer()\nlocal teamPlayerJobs = {}\ntable.insert(teamPlayerJobs, player.job)\nfor _, ent in pairs(TensorCore.entityList(\"Party\")) do\n    if data.P12SJobOrder[ent.job] ~= nil\n        and ent.id ~= player.id\n    then\n        table.insert(teamPlayerJobs, ent.job)\n    end\nend\n\nlocal function CompareJob(a, b)\n    return data.P12SJobOrder[a] < data.P12SJobOrder[b]\nend\ntable.sort(teamPlayerJobs, CompareJob)\n\nfor i = 1, 8, 1 do\n    if player.job == teamPlayerJobs[i] then\n        data.P12SSelfJobPos = i\n    end\nend\n\ndata.GetJobPos = function(job)\n    for i = 1, 8, 1 do\n        if teamPlayerJobs[i] == job then\n            return i\n        end\n    end\nend\nself.used = true\n",
							gVar = "ACR_RikuMNK2_CD",
							name = "Lua",
							uuid = "eeec2493-02cd-3567-b4df-4adba58cd9e3",
							version = 2,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1012.1,
				name = "初始化",
				timelineIndex = 88,
				uuid = "179354ea-e163-8786-b04a-2f3d3497fcbc",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji = \"yuan\"\nend",
							conditions = 
							{
								
								{
									"398eee71-3eff-7ea3-8736-6b93a6af1666",
									true,
								},
							},
							name = "yuan",
							uuid = "126f557a-3c1f-e3b9-92ed-4b392c048ccd",
							version = 2,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji = \"sanjiao\"\nend",
							conditions = 
							{
								
								{
									"bda7102b-0f0e-7695-8197-f8c997a3d377",
									true,
								},
							},
							name = "sanjiao",
							uuid = "c9fe3c64-37df-f321-8ae7-d03302764eb1",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji = \"fangkuai\"\nend",
							conditions = 
							{
								
								{
									"e85701ef-ce0d-450b-8840-293e3b873604",
									true,
								},
							},
							name = "fangkuai",
							uuid = "2eef77d0-516d-9bc4-b6f2-4cf0f809d1a8",
							version = 2,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji = \"cha\"\nend",
							conditions = 
							{
								
								{
									"2c5d596c-001f-6942-8490-6dd4919a52d1",
									true,
								},
							},
							name = "cha",
							uuid = "6417688f-e982-771c-8960-72ae5249f868",
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
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 367,
							name = "〇",
							uuid = "398eee71-3eff-7ea3-8736-6b93a6af1666",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 368,
							name = "三角",
							uuid = "bda7102b-0f0e-7695-8197-f8c997a3d377",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 369,
							name = "口",
							uuid = "e85701ef-ce0d-450b-8840-293e3b873604",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 370,
							name = "×",
							uuid = "2c5d596c-001f-6942-8490-6dd4919a52d1",
							version = 2,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji",
							uuid = "76da6281-9ff6-9fba-a7db-3dbf4525d125",
							version = 2,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 1108.6,
				name = "[huatu]概念1",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 20,
				timerOffset = -12,
				timerStartOffset = -15,
				uuid = "87894cbb-83a8-5a7f-9006-01ffaef050b9",
				version = 2,
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
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n84,\n0,\n87,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n84,\n0,\n87,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"aa5b281d-d831-735d-8b85-3e3627e6f486",
									true,
								},
							},
							name = "〇A",
							uuid = "7152358b-4412-782c-9180-ade89654f501",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n92,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n92,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"464942d0-2f91-b22e-8540-b5ef05f9c1a5",
									true,
								},
							},
							name = "×A",
							uuid = "7c03f369-e4a7-56c5-b521-0b1365e1fce0",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n108,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n108,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
									true,
								},
							},
							name = "三角A",
							uuid = "7f41f675-b132-780f-81de-5fe90864b680",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n116,\n0,\n87,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n116,\n0,\n87,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"152e9ac9-d4cf-7bb6-96da-efec44754c1b",
									true,
								},
							},
							name = "口A",
							uuid = "83eff739-50a2-e0b9-98e6-a0365bd225d0",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n84,\n0,\n94,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n84,\n0,\n94,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"aa5b281d-d831-735d-8b85-3e3627e6f486",
									true,
								},
							},
							name = "〇B",
							uuid = "5e384615-1246-a791-a71a-fbd8b041144e",
							version = 2,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n92,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n92,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"464942d0-2f91-b22e-8540-b5ef05f9c1a5",
									true,
								},
							},
							name = "×B",
							uuid = "9c157d02-e6d6-b4a8-a7a9-6391e8d3cffa",
							version = 2,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n108,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n108,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
									true,
								},
							},
							name = "三角B",
							uuid = "5a68c340-7d99-a723-8f45-9f4415fe9419",
							version = 2,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n116,\n0,\n94,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n8000, \n116,\n0,\n94,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"152e9ac9-d4cf-7bb6-96da-efec44754c1b",
									true,
								},
							},
							name = "口B",
							uuid = "498e3d39-205b-7509-adc8-557d2b7bc433",
							version = 2,
						},
						inheritedIndex = 5,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 3560,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "A",
							uuid = "875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
							version = 2,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffID = 3561,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "B",
							uuid = "7724b635-2d59-b107-b740-76e7b9914965",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji == \"sanjiao\"\n\n",
							dequeueIfLuaFalse = true,
							name = "sanjiao",
							uuid = "dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
							version = 2,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji == \"fangkuai\"\n",
							dequeueIfLuaFalse = true,
							name = "fangkuai",
							uuid = "152e9ac9-d4cf-7bb6-96da-efec44754c1b",
							version = 2,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji == \"yuan\"",
							dequeueIfLuaFalse = true,
							name = "yuan",
							uuid = "aa5b281d-d831-735d-8b85-3e3627e6f486",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji == \"cha\"",
							dequeueIfLuaFalse = true,
							name = "cha",
							uuid = "464942d0-2f91-b22e-8540-b5ef05f9c1a5",
							version = 2,
						},
						inheritedIndex = 6,
					},
				},
				mechanicTime = 1108.6,
				name = "[huatu]魔方1分散站位",
				timelineIndex = 99,
				timerOffset = 15,
				timerStartOffset = -10,
				uuid = "cf25b9b4-8037-a8e6-b577-ceb8c6c61387",
				version = 2,
			},
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new(\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.55)),\n    (GUI:ColorConvertFloat4ToU32(1 / 255, 225 / 255, 1 / 255, 0.85)),\n    1.5)\nnewdraw:addTimedCircle(\n    8000,\n    100,\n    0,\n    97,\n    0.3,\n    0,\ntrue\n)\n\nself.used = true\n",
							uuid = "22fb15ff-8317-9355-81df-ab4ca5262c13",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1173.2,
				name = "绘制人群位置",
				timelineIndex = 109,
				timerOffset = -8,
				uuid = "ec22b79b-17b9-b858-bc10-120331952f49",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif player.id == eventArgs.entityID then\n    if data.IsDps(player.job) then -- dps 位置\n        data.GuidePositionWithSetSize(101.5, 89, 8000, 0.3)\n    else --TN 位\n        data.GuidePositionWithSetSize(98.5, 89, 8000, 0.3)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"398eee71-3eff-7ea3-8736-6b93a6af1666",
									true,
								},
							},
							gVar = "ACR_RikuMNK2_CD",
							name = "绘制",
							uuid = "c9fe3c64-37df-f321-8ae7-d03302764eb1",
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
							eventArgType = 2,
							eventMarkerID = 303,
							name = "火标记Event",
							uuid = "398eee71-3eff-7ea3-8736-6b93a6af1666",
							version = 2,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 1173.2,
				name = "绘制火标记",
				timeRange = true,
				timelineIndex = 109,
				timerOffset = -12,
				timerStartOffset = -12,
				uuid = "2187e5ec-c209-4b06-9cb6-58a557d1cc32",
				version = 2,
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
							actionLua = "--[[\n热质说时生效时候，记录下点名人的位置\n因为站位比较标准，所以这里直接根据位置判断\n]]\n\nif data.P12SBeaconPlayer == nil then\n    data.P12SBeaconPlayer = {}\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player.pos.z < 93 then\n    table.insert(data.P12SBeaconPlayer, player.job)\nend\n-- 这里采用直接算坐标方式来计算\nfor _, ent in pairs(TensorCore.entityList(\"Party\")) do\n    if data.P12SJobOrder[ent.job] ~= nil then\n        if ent.pos.z < 93 and not table.contains(data.P12SBeaconPlayer, ent.job) then\n            table.insert(data.P12SBeaconPlayer, ent.job)\n        end\n    end\nend\nself.used = true",
							uuid = "e60f0a29-397b-fb8f-a9b4-c44e2ee562f3",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1173.2,
				name = "记录点名人的职业编号",
				timelineIndex = 109,
				uuid = "da8928b9-6025-51c7-b3e3-65454c4de3a5",
				version = 2,
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
							actionLua = "local party = TensorCore.getEntityGroupList(\"Party\")\nif data.countDraws == nil then data.countDraws = {} end\n\nfor id, ent in pairs(party) do\n    local buff = TensorCore.getBuff(ent, 3590)\n    if buff ~= nil and not data.countDraws[id] then\n        data.countDraws[id] = true\n        Argus2.addTimedCircleFilled(\n            12000,\n            ent.pos.x,\n            ent.pos.y,\n            ent.pos.z,\n            4,\n            50,\n            (GUI:ColorConvertFloat4ToU32(55 / 255, 255 / 255, 55 / 255, 0.05)),\n            (GUI:ColorConvertFloat4ToU32(255 / 255, 0 / 255, 0 / 255, 0.05)),\n            (GUI:ColorConvertFloat4ToU32(255 / 255, 236 / 255, 0 / 255, 0.05)),\n            0,\n            ent.id,\n            (GUI:ColorConvertFloat4ToU32(255 / 255, 255 / 255, 255 / 255, 1)),\n            1\n        )\n    end\nend\n\nif table.size(data.countDraws) >= 7 then\n    data.countDraws = nil\n    self.used = true\nend",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "c135de34-1f41-e896-93d8-f26809d3a917",
							version = 2,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1173.2,
				name = "绘制火分摊1范围",
				timeRange = true,
				timelineIndex = 109,
				timerEndOffset = 5,
				uuid = "18d40f5d-f528-4343-820b-b2fefba32037",
				version = 2,
			},
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "--[[\n1次分摊结束时候，将没有风点名的人记录下来，\n当然如果自己是风BUFF就不需要记录了\n]]\n--\n\nif data.P12S1FireAndWindSelfPos == nil then\n    self.used = true\n    return\nend\nlocal firePos = {}\nfirePos[1] = { x = 98, z = 91.5, type = 1 }  -- A点\nfirePos[2] = { x = 102, z = 91.5, type = 2 } -- B点\nfirePos[3] = { x = 102, z = 97, type = 3 }   -- C点\nfirePos[4] = { x = 98, z = 97, type = 4 }    -- D点\nlocal player = TensorCore.mGetPlayer()\nif data.P12S1WindAndFireNoWinds == nil then\n    data.P12S1WindAndFireNoWinds = {}\nend\nfor _, ent in pairs(TensorCore.entityList(\"Party\")) do\n    if data.P12SJobOrder[ent.job] ~= nil\n        and ent.id ~= player.id\n        and not TensorCore.hasBuff(ent.id, 3591)\n    then\n        local distanceSqr = 10000000\n        local curPos = 1 --计算同火BUFF人位置\n        for i = 1, 4, 1 do\n            local curDisSqr = (firePos[i].x - ent.pos.x) ^ 2 + (firePos[i].z - ent.pos.z) ^ 2\n            if curDisSqr < distanceSqr then\n                distanceSqr = curDisSqr\n                curPos = i\n            end\n        end\n        data.P12S1WindAndFireNoWinds[ent.job] = curPos\n    end\nend\n\nself.used = true",
							uuid = "e60f0a29-397b-fb8f-a9b4-c44e2ee562f3",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1185.9,
				name = "记录非风当前近似位置",
				timelineIndex = 110,
				uuid = "3cd2c25a-4294-8ed9-8e55-2c03ea987efe",
				version = 2,
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
							actionLua = "--[[\n判断是根据风火点名以及优先级，指路分摊位置\n]]\nlocal drawTime = 11000\nlocal player = TensorCore.mGetPlayer()\n-- 1. 如果是风 3591\nif TensorCore.hasBuff(player.id, 3591) then\n    --  1.1 看看是否包含在第一波中，如果是，则水平移动到点水平方向\n    if table.contains(data.P12SBeaconPlayer, player.job) then\n        if data.IsDps(player.job) then\n            data.GuidePositionWithSetSize(102, 89, drawTime, 0.3)\n        else\n            data.GuidePositionWithSetSize(98, 89, drawTime, 0.3)\n        end\n    else\n        --  1.2 如果不包含，那么查找另外一个不包含在第一波的中的人，进行优先级比较，小的C, 大的D\n        for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n            if data.P12SJobOrder[ent.job] ~= nil\n                and ent.id ~= player.id\n                and TensorCore.hasBuff(ent.id, 3591)\n                and not table.contains(data.P12SBeaconPlayer, ent.job)\n            then\n                local selfOrder = data.P12SJobOrder[player.job]\n                local otherOrder = data.P12SJobOrder[ent.job]\n                -- 如果自己的优先级权值大于别人表示优先级较低\n                if selfOrder > otherOrder then\n                    -- 去D\n                    data.GuidePositionWithSetSize(98, 97, drawTime, 0.3)\n                else\n                    -- 去C\n                    data.GuidePositionWithSetSize(102, 97, drawTime, 0.3)\n                end\n                break\n            end\n        end\n    end\n    data.P12S1FireAndWindSelfPos = nil\n    -- 2. 如果是火 3590\nelseif TensorCore.hasBuff(player.id, 3590) then\n    local TargetPos = {}\n    TargetPos[1] = { x = 98, z = 91.5, type = 1 }  -- A点\n    TargetPos[2] = { x = 102, z = 91.5, type = 2 } -- B点\n    TargetPos[3] = { x = 102, z = 97, type = 3 }   -- C点\n    TargetPos[4] = { x = 98, z = 97, type = 4 }    -- D点\n    -- 假设在A\n    local selfPos = 1\n    local selfOrder = data.P12SJobOrder[player.job]\n    -- 查找同队玩家拥有火buff的，根据优先级值从小到大指路ABCD，\n    for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n        if data.P12SJobOrder[ent.job] ~= nil\n            and ent.id ~= player.id\n            and TensorCore.hasBuff(ent.id, 3590)\n        then\n            local otherOrder = data.P12SJobOrder[ent.job]\n            if selfOrder > otherOrder then\n                selfPos = selfPos + 1\n            end\n        end\n    end\n    if selfPos <= 4 then\n        data.GuidePositionWithSetSize(TargetPos[selfPos].x, TargetPos[selfPos].z, drawTime, 0.3)\n        data.P12S1FireAndWindSelfPos = selfPos\n    else\n        SendTextCommand(\"/e 没有找到自己的优先级!!!\")\n        data.P12S1FireAndWindSelfPos = nil\n    end\nend\nself.used = true\n",
							gVar = "ACR_RikuMNK2_CD",
							uuid = "15173db7-4d6b-70a8-8ba3-5a866c4d02ed",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1185.9,
				name = "火分摊1指路",
				timelineIndex = 110,
				timerOffset = -11,
				uuid = "02ef32b7-e000-4434-afca-9a44308f6e66",
				version = 2,
			},
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "Player:SetSpeed(1,0.0001,6,6)\nself.used = true",
							conditions = 
							{
								
								{
									"e9ab54de-0c28-9bf7-9dfd-c5def3c3af52",
									true,
								},
							},
							uuid = "5002dc61-d2c4-c692-a899-25f60bd902b8",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "Player:SetSpeed(1,6.6,6,6)\nself.used = true",
							conditions = 
							{
								
								{
									"a3c4172f-a86e-cae1-bfe0-c64f795ef0f5",
									true,
								},
							},
							uuid = "91c42667-9f09-ab37-87fe-ff9b21f8d30f",
							version = 2,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 2,
							buffID = 3589,
							category = "Self",
							comparator = 2,
							uuid = "e9ab54de-0c28-9bf7-9dfd-c5def3c3af52",
							version = 2,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 3589,
							category = "Self",
							uuid = "a3c4172f-a86e-cae1-bfe0-c64f795ef0f5",
							version = 2,
						},
					},
				},
				mechanicTime = 1197.3,
				name = "防止多动症",
				timeRange = true,
				timelineIndex = 111,
				timerEndOffset = 5,
				timerStartOffset = -2,
				uuid = "6fa910f5-7642-98c5-a00b-a996722ef4cb",
				version = 2,
			},
			inheritedIndex = 5,
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
							actionLua = "--[[\n火分摊2以及风分散指路\n]]\nlocal drawTime = 10000\nlocal player = TensorCore.mGetPlayer()\n-- 1. 判断自己是否还有风buff，如果有，那么请去就近的点\nif TensorCore.hasBuff(player.id, 3591) then\n    local windPos = {}\n    windPos[1] = { x = 107, z = 85 }\n    windPos[2] = { x = 93, z = 85 }\n    windPos[3] = { x = 107, z = 101 }\n    windPos[4] = { x = 93, z = 101 }\n    local distanceSqr = 10000000\n    local targetPos = 1\n    for i = 1, 4, 1 do\n        local curDisSqr = (windPos[i].x - player.pos.x) ^ 2 + (windPos[i].z - player.pos.z) ^ 2\n        if curDisSqr < distanceSqr then\n            distanceSqr = curDisSqr\n            targetPos = i\n        end\n    end\n    data.GuidePositionWithSetSize(windPos[targetPos].x, windPos[targetPos].z, drawTime, 0.3)\nelse\n    if data.P12S1FireAndWindSelfPos == nil then\n        SendTextCommand(\"/e 没找到前面站哪了，自己看吧！\")\n        self.used = true\n        return\n    end\n    local leftPos = { x = 98, z = 93, type = 1 }   -- A点\n    local rightPos = { x = 102, z = 93, type = 2 } -- B点\n    local targetPos = 0\n    if data.P12S1FireAndWindSelfPos == 1 or data.P12S1FireAndWindSelfPos == 2 then\n        --      如果自己在A或B ,不动\n        targetPos = data.P12S1FireAndWindSelfPos\n    else\n        if TensorCore.hasBuff(player.id, 3590) then\n            -- 2. 判断自己是否有火\n            --  2.1 如果有，找到同有火人的位置\n            local partnerPos = 0\n            for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n                if data.P12SJobOrder[ent.job] ~= nil\n                    and ent.id ~= player.id\n                    and TensorCore.hasBuff(ent.id, 3590)\n                then\n                    partnerPos = data.P12S1WindAndFireNoWinds[ent.job]\n                    d(ent.name)\n                    break\n                end\n            end\n            --      2.2 如果自己在C, 另外一个人在B去A否则去B\n            if data.P12S1FireAndWindSelfPos == 3 then\n                if partnerPos == 2 then\n                    targetPos = 1\n                else\n                    targetPos = 2\n                end\n                --  2.2 如果自己在D, 另外一个人在A去B否则去A\n            elseif data.P12S1FireAndWindSelfPos == 4 then\n                if partnerPos == 1 then\n                    targetPos = 2\n                else\n                    targetPos = 1\n                end\n            end\n        else\n            -- 3 如果没有任何BUFF，遍历全体成员，找到另外一个没火也没风BUFF的人\n            local partnerPos = 0\n            for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n                if data.P12SJobOrder[ent.job] ~= nil and ent.job <= 40\n                    and ent.id ~= player.id\n                    and not TensorCore.hasBuff(ent.id, 3590)\n                    and not TensorCore.hasBuff(ent.id, 3591)\n                then\n                    partnerPos = data.P12S1WindAndFireNoWinds[ent.job]\n                    d(ent.name)\n                    break\n                end\n            end\n            --      3.1 如果自己在C, 另外一个在B去A否则去B\n            if data.P12S1FireAndWindSelfPos == 3 then\n                if partnerPos == 2 then\n                    targetPos = 1\n                else\n                    targetPos = 2\n                end\n                --  3.2 如果自己在D, 另外一个在A去B否则去A\n            elseif data.P12S1FireAndWindSelfPos == 4 then\n                if partnerPos == 1 then\n                    targetPos = 2\n                else\n                    targetPos = 1\n                end\n            end\n        end\n        \n        if targetPos == 1 then\n            data.GuidePositionWithSetSize(leftPos.x, leftPos.z, drawTime, 0.3)\n        elseif targetPos == 2 then\n            data.GuidePositionWithSetSize(rightPos.x, rightPos.z, drawTime, 0.3)\n        end\n    end\nend\nself.used = true",
							uuid = "d69ed868-064b-3ff9-b2ce-5f30752d7371",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1197.3,
				name = "火分摊2以及风分散指路",
				timelineIndex = 111,
				timerOffset = -10,
				uuid = "8ee8a2a1-55fa-b6b9-951d-f38cd46ed216",
				version = 2,
			},
		},
	},
	[114] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 7000\nlocal group1safePos1\nlocal group1safePos2\nlocal type = 0\nif TensorCore.isAnyEntityCasting(33567) then\n    for _, ent in pairs(TensorCore.entityList(\"contentid=12382\")) do\n        if math.sqrt((ent.pos.x - 84.57) ^ 2 + (ent.pos.z - 82.74) ^ 2) < 0.01 and math.abs(ent.pos.h - 0.69811582565308) < 0.1 then\n            group1safePos1 = { x = 99, z = 80 }\n            group1safePos2 = { x = 101, z = 110 }\n            type = 2\n            break\n        elseif math.sqrt((ent.pos.x - 115.43) ^ 2 + (ent.pos.z - 82.74) ^ 2) < 0.01 and math.abs(ent.pos.h - -0.69821166992188) < 0.1 then\n            group1safePos1 = { x = 101, z = 80 }\n            group1safePos2 = { x = 99, z = 110 }\n            type = 2\n        elseif math.sqrt((ent.pos.x - 84) ^ 2 + (ent.pos.z - 83.75) ^ 2) < 0.01 and math.abs(ent.pos.h - 1.5707724094391) < 0.1 then\n            type = 1\n            group1safePos1 = { x = 80, z = 93 }\n            group1safePos2 = { x = 120, z = 97 }\n            break\n        elseif math.sqrt((ent.pos.x - 116) ^ 2 + (ent.pos.z - 83.75) ^ 2) < 0.01 and math.abs(ent.pos.h - -1.5708682537079) < 0.1 then\n            type = 1\n            group1safePos1 = { x = 80, z = 97 }\n            group1safePos2 = { x = 120, z = 93 }\n            break\n        end\n    end\nend\n\nif type == 0 then\n    SendTextCommand(\"/e 没抓到地火位置，自己看吧！<se.1>\")\nelse\n    local player = TensorCore.mGetPlayer()\n    local jobPos = data.GetJobPos(player.job)\n    if type == 1 then -- 水平火，MT ST分组\n        if jobPos % 2 == 1 then\n            data.GuidePosition(group1safePos1.x, group1safePos1.z, drawTime)\n        elseif jobPos % 2 == 0 then\n            data.GuidePosition(group1safePos2.x, group1safePos2.z, drawTime)\n        end\n        if jobPos == 1 then\n            data.GuidePositionWithSetDelay(80, 80, 3000, 1, drawTime)\n        elseif jobPos == 2 then\n            data.GuidePositionWithSetDelay(120, 80, 3000, 1, drawTime)\n        elseif jobPos == 3 then\n            data.GuidePositionWithSetDelay(80, 100, 3000, 1, drawTime)\n        elseif jobPos == 4 then\n            data.GuidePositionWithSetDelay(120, 100, 3000, 1, drawTime)\n        elseif jobPos == 5 then\n            data.GuidePositionWithSetDelay(80, 90, 3000, 1, drawTime)\n        elseif jobPos == 6 then\n            data.GuidePositionWithSetDelay(120, 90, 3000, 1, drawTime)\n        elseif jobPos == 7 then\n            data.GuidePositionWithSetDelay(80, 110, 3000, 1, drawTime)\n        elseif jobPos == 8 then\n            data.GuidePositionWithSetDelay(120, 110, 3000, 1, drawTime)\n        end\n    elseif type == 2 then --斜火，近远分组\n        local meele = { 1, 2, 5, 6 }\n        local range = { 3, 4, 7, 8 }\n        if table.contains(meele, jobPos) then\n            data.GuidePosition(group1safePos1.x, group1safePos1.z, drawTime)\n        elseif table.contains(range, jobPos) then\n            data.GuidePosition(group1safePos2.x, group1safePos2.z, drawTime)\n        end\n        if jobPos == 1 then\n            data.GuidePositionWithSetDelay(80, 80, 3000, 1, drawTime)\n        elseif jobPos == 2 then\n            data.GuidePositionWithSetDelay(120, 80, 3000, 1, drawTime)\n        elseif jobPos == 3 then\n            data.GuidePositionWithSetDelay(93, 110, 3000, 1, drawTime)\n        elseif jobPos == 4 then\n            data.GuidePositionWithSetDelay(107, 110, 3000, 1, drawTime)\n        elseif jobPos == 5 then\n            data.GuidePositionWithSetDelay(93, 80, 3000, 1, drawTime)\n        elseif jobPos == 6 then\n            data.GuidePositionWithSetDelay(107, 80, 3000, 1, drawTime)\n        elseif jobPos == 7 then\n            data.GuidePositionWithSetDelay(80, 110, 3000, 1, drawTime)\n        elseif jobPos == 8 then\n            data.GuidePositionWithSetDelay(120, 110, 3000, 1, drawTime)\n        end\n    end\nend\nself.used = true\n",
							uuid = "c1455118-b010-bb31-8b13-f06e273bdd07",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1215.4,
				name = "地火指路",
				timelineIndex = 114,
				timerOffset = -7,
				uuid = "66ef7723-83f0-e4c5-950d-a0cf7a8f05d3",
				version = 2,
			},
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 12000\n-- 只处理没有黑白BUFF的人\nlocal player = TensorCore.mGetPlayer()\nif (not TensorCore.hasBuff(player.id, 3576))\n    and (not TensorCore.hasBuff(player.id, 3577))\nthen\n    -- 找到另外一个闲人，指路到1塔\n    if (not TensorCore.hasBuff(player.id, 3593)) then\n        for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n            if data.P12SJobOrder[ent.job] ~= nil and ent.job <= 40\n                and ent.id ~= player.id\n                and (not TensorCore.hasBuff(ent.id, 3593))\n            then\n                -- 对方优先\n                if data.P12SJobOrder[ent.job] < data.P12SJobOrder[player.job] then\n                    data.GuidePosition(110, 88, drawTime + 5000)\n                else\n                    data.GuidePosition(90, 88, drawTime + 5000)\n                end\n                break\n            end\n        end\n    else\n        for _, ent in pairs(TensorCore.entityList(\"Party\")) do\n            if data.P12SJobOrder[ent.job] ~= nil and ent.job <= 40\n                and ent.id ~= player.id\n                and TensorCore.hasBuff(ent.id, 3593)\n                and (not TensorCore.hasBuff(ent.id, 3576))\n                and (not TensorCore.hasBuff(ent.id, 3577))\n            then\n                d(ent.name)\n                -- 对方优先\n                if data.P12SJobOrder[ent.job] < data.P12SJobOrder[player.job] then\n                    data.GuidePosition(115, 91, drawTime)\n                else\n                    data.GuidePosition(85, 91, drawTime)\n                end\n                break\n            end\n        end\n    end\nend\nself.used = true",
							uuid = "1d79e779-0e3b-b754-8520-9c6c650ba293",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1254.9,
				name = "优先级区分黑白塔左右",
				timelineIndex = 118,
				timerOffset = -12,
				uuid = "82518c62-d6e4-741a-b7b8-696173e8717f",
				version = 2,
			},
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n119.5,\n0,\n90,\n0.7,\n0,\ntrue\n)\n\nnewdraw:addTimedCircle (\n10000,\n99.5,\n0,\n80.5,\n0.7,\n0,\ntrue\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"36003d4b-3084-5296-baf0-cbe6ab05912c",
									true,
								},
							},
							name = "接线点",
							uuid = "b65ea4e3-4263-bc65-a4bc-3081996acaca",
							version = 2,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 3594,
							category = "Self",
							name = "合成buff",
							uuid = "36003d4b-3084-5296-baf0-cbe6ab05912c",
							version = 2,
						},
					},
				},
				mechanicTime = 1280.4,
				name = "接线点",
				timelineIndex = 122,
				timerOffset = -10,
				uuid = "504b92c8-7d99-2b90-9a05-49a12b01e6e5",
				version = 2,
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
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n10000,\n101,\n0,\n105.5,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n10000, \n101,\n0,\n105.5,\n1, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"36003d4b-3084-5296-baf0-cbe6ab05912c",
									true,
								},
							},
							name = "人群位置",
							uuid = "b65ea4e3-4263-bc65-a4bc-3081996acaca",
							version = 2,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 3594,
							category = "Self",
							name = "合成buff",
							uuid = "36003d4b-3084-5296-baf0-cbe6ab05912c",
							version = 2,
						},
					},
				},
				mechanicTime = 1280.4,
				name = "人群位置",
				timelineIndex = 122,
				timerOffset = -15,
				uuid = "591026fa-4a1b-0098-9296-7145e9f57a65",
				version = 2,
			},
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji2=\"sanjiao2\"\nend",
							conditions = 
							{
								
								{
									"bda7102b-0f0e-7695-8197-f8c997a3d377",
									true,
								},
							},
							name = "sanjiao",
							uuid = "c9fe3c64-37df-f321-8ae7-d03302764eb1",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji2=\"fangkuai2\"\nend",
							conditions = 
							{
								
								{
									"e85701ef-ce0d-450b-8840-293e3b873604",
									true,
								},
							},
							name = "fangkuai",
							uuid = "2eef77d0-516d-9bc4-b6f2-4cf0f809d1a8",
							version = 2,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji2=\"yuan2\"\nend",
							conditions = 
							{
								
								{
									"398eee71-3eff-7ea3-8736-6b93a6af1666",
									true,
								},
							},
							name = "yuan",
							uuid = "126f557a-3c1f-e3b9-92ed-4b392c048ccd",
							version = 2,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs.entityID == TensorCore.mGetPlayer().id then\ndata.biaoji2=\"cha2\"\nend",
							conditions = 
							{
								
								{
									"2c5d596c-001f-6942-8490-6dd4919a52d1",
									true,
								},
							},
							name = "cha",
							uuid = "6417688f-e982-771c-8960-72ae5249f868",
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
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 367,
							name = "〇",
							uuid = "398eee71-3eff-7ea3-8736-6b93a6af1666",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 368,
							name = "三角",
							uuid = "bda7102b-0f0e-7695-8197-f8c997a3d377",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 369,
							name = "口",
							uuid = "e85701ef-ce0d-450b-8840-293e3b873604",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 370,
							name = "×",
							uuid = "2c5d596c-001f-6942-8490-6dd4919a52d1",
							version = 2,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji2",
							uuid = "76da6281-9ff6-9fba-a7db-3dbf4525d125",
							version = 2,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 1296.8,
				name = "概念2",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 20,
				timerOffset = -12,
				timerStartOffset = -15,
				uuid = "7beeb665-085f-42a5-a943-1b970766154a",
				version = 2,
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
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n88,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n88,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"152e9ac9-d4cf-7bb6-96da-efec44754c1b",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "〇A=口A",
							uuid = "7152358b-4412-782c-9180-ade89654f501",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n96,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n96,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "×A=三角A",
							uuid = "7c03f369-e4a7-56c5-b521-0b1365e1fce0",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n104,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n104,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"464942d0-2f91-b22e-8540-b5ef05f9c1a5",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "三角A=×A",
							uuid = "7f41f675-b132-780f-81de-5fe90864b680",
							version = 2,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n112,\n0,\n88,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n112,\n0,\n88,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
									true,
								},
								
								{
									"aa5b281d-d831-735d-8b85-3e3627e6f486",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "口A=〇A",
							uuid = "83eff739-50a2-e0b9-98e6-a0365bd225d0",
							version = 2,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n88,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n88,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"152e9ac9-d4cf-7bb6-96da-efec44754c1b",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "〇B=口B",
							uuid = "5e384615-1246-a791-a71a-fbd8b041144e",
							version = 2,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n96,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n96,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "×B=三角B",
							uuid = "9c157d02-e6d6-b4a8-a7a9-6391e8d3cffa",
							version = 2,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n104,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n104,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"464942d0-2f91-b22e-8540-b5ef05f9c1a5",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "三角B=×B",
							uuid = "5a68c340-7d99-a723-8f45-9f4415fe9419",
							version = 2,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local newdraw = Argus2.ShapeDrawer:new (\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(55/255, 255/255, 55/255, 0.55)),\n(GUI:ColorConvertFloat4ToU32(255/255, 225/255, 225/255, 0.85)),\n1.5)\n\nnewdraw:addTimedCircle (\n6000,\n112,\n0,\n95,\n0.5,\n0,\ntrue\n)\n\nArgus2.addTimedRectFilled (\n6000, \n112,\n0,\n95,\n0.7, \n0.1, \nmath.pi, \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \n(GUI:ColorConvertFloat4ToU32(25/255, 215/255, 25/255, .35)), \nnil, \n0, \nnil,\nTensorCore.mGetPlayer().id,\nfalse,\nnil,\n3.0,\nnil,\nnil,\ntrue\n)\nself.used = true",
							conditions = 
							{
								
								{
									"7724b635-2d59-b107-b740-76e7b9914965",
									true,
								},
								
								{
									"aa5b281d-d831-735d-8b85-3e3627e6f486",
									true,
								},
								
								{
									"f5d26660-277e-a2c4-9434-a07dc5a1fffa",
									true,
								},
							},
							endIfUsed = true,
							name = "口B=〇B",
							uuid = "498e3d39-205b-7509-adc8-557d2b7bc433",
							version = 2,
						},
						inheritedIndex = 5,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffDuration = 0.5,
							buffID = 3560,
							category = "Self",
							comparator = 2,
							dequeueIfLuaFalse = true,
							name = "A",
							uuid = "875157c8-4b6a-bdfa-bfc3-6c0a47a38fda",
							version = 2,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffDuration = 0.5,
							buffID = 3561,
							category = "Self",
							comparator = 2,
							dequeueIfLuaFalse = true,
							name = "B",
							uuid = "7724b635-2d59-b107-b740-76e7b9914965",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji2 == \"sanjiao2\"\n\n",
							dequeueIfLuaFalse = true,
							name = "sanjiao",
							uuid = "dacf235c-57f4-5aaf-9c1f-5d247372b7b9",
							version = 2,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji2 == \"fangkuai2\"\n",
							dequeueIfLuaFalse = true,
							name = "fangkuai",
							uuid = "152e9ac9-d4cf-7bb6-96da-efec44754c1b",
							version = 2,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji2 == \"yuan2\"",
							dequeueIfLuaFalse = true,
							name = "yuan",
							uuid = "aa5b281d-d831-735d-8b85-3e3627e6f486",
							version = 2,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.biaoji2 == \"cha2\"",
							dequeueIfLuaFalse = true,
							name = "cha",
							uuid = "464942d0-2f91-b22e-8540-b5ef05f9c1a5",
							version = 2,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 0.5,
							buffID = 3588,
							category = "Self",
							comparator = 2,
							name = "狗链消失",
							uuid = "f5d26660-277e-a2c4-9434-a07dc5a1fffa",
							version = 2,
						},
					},
				},
				mechanicTime = 1296.8,
				name = "魔方2分散站位",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 22,
				timerOffset = 19,
				timerStartOffset = 15,
				uuid = "d308d911-1c66-546a-b3ce-195fb4c1b3f1",
				version = 2,
			},
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "--[[\n    2风火预站位\n]]\nlocal drawTime = 10000\nif data.P12S2FireWindStartPos == nil then\n    data.P12S2FireWindStartPos = {}\n    data.P12S2FireWindStartPos[1] = { x = 100, z = 93 }\n    data.P12S2FireWindStartPos[2] = { x = 93, z = 97 }\n    data.P12S2FireWindStartPos[3] = { x = 100, z = 101 }\n    data.P12S2FireWindStartPos[4] = { x = 100, z = 85 }\n    data.P12S2FireWindStartPos[5] = { x = 93, z = 89 }\n    data.P12S2FireWindStartPos[6] = { x = 107, z = 97 }\n    data.P12S2FireWindStartPos[7] = { x = 107, z = 105 }\n    data.P12S2FireWindStartPos[8] = { x = 107, z = 89 }\nend\nif data.P12S2FireWindEndPos == nil then\n    data.P12S2FireWindEndPos = {}\n    data.P12S2FireWindEndPos[1] = { x = 100, z = 93 }\n    data.P12S2FireWindEndPos[2] = { x = 86, z = 93 }\n    data.P12S2FireWindEndPos[3] = { x = 93, z = 105 }\n    data.P12S2FireWindEndPos[4] = { x = 93, z = 81 }\n    data.P12S2FireWindEndPos[5] = { x = 86, z = 85 }\n    data.P12S2FireWindEndPos[6] = { x = 114, z = 93 }\n    data.P12S2FireWindEndPos[7] = { x = 114, z = 101 }\n    data.P12S2FireWindEndPos[8] = { x = 114, z = 85 }\nend\n\ndata.GuidePositionWithSetSize(\n    data.P12S2FireWindStartPos[data.P12SSelfJobPos].x,\n    data.P12S2FireWindStartPos[data.P12SSelfJobPos].z,\n    drawTime,\n    0.3\n)\nself.used = true\n",
							uuid = "594d9167-6186-b09f-91c9-f3326f066451",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1343,
				name = "2风火预站位",
				timelineIndex = 130,
				uuid = "5eba252d-80a9-800f-bdd6-b0aea353ae91",
				version = 2,
			},
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "--[[\n    火点名 去MT初始位置\n]]\n\nlocal drawTime = 7000\nif TensorCore.mGetPlayer().id == eventArgs.entityID then\n    data.GuidePositionWithSetSize(\n        data.P12S2FireAndWindPoses[1].x,\n        data.P12S2FireAndWindPoses[1].z,\n        drawTime,\n        0.3\n    )\nend\nself.used = true",
							conditions = 
							{
								
								{
									"398eee71-3eff-7ea3-8736-6b93a6af1666",
									true,
								},
							},
							endIfUsed = true,
							name = "回场中",
							uuid = "c9fe3c64-37df-f321-8ae7-d03302764eb1",
							version = 2,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventMarkerID = 466,
							name = "火点名",
							uuid = "398eee71-3eff-7ea3-8736-6b93a6af1666",
							version = 2,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 1362.5,
				name = "火点名",
				timeRange = true,
				timelineIndex = 135,
				timerOffset = -12,
				timerStartOffset = -10,
				uuid = "e2497315-dcd8-a09a-af0d-51cf2c4d3b9a",
				version = 2,
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
							actionLua = "--[[\n        被传火了就走向下一个地点\n    ]]\nlocal player = TensorCore.mGetPlayer()\nlocal selfPos = data.GetJobPos(player.job)\nlocal runOrder = { 2, 3, 7, 6, 8, 4, 5 } -- ST=>D1 逆时针\nlocal jobPos\nif selfPos == 1 then                     --MT\n    -- MT 因为和别人换位了，那么需要获取一下自己当前的位置\n    local mtCurPos = 1\n    local distance = 100000000\n    for i = 1, 8, 1 do\n        local p = data.P12S2FireWindStartPos[i]\n        local disSqr = (p.x - player.pos.x) ^ 2 + (p.z - player.pos.z) ^ 2\n        if disSqr < distance then\n            distance = disSqr\n            mtCurPos = i\n        end\n    end\n    jobPos = mtCurPos\nelse\n    jobPos = selfPos\nend\n-- 获取当前职业站位在哪个点\nlocal targetPosidx = 0 \nfor i = 1, 7, 1 do\n    if runOrder[i] == jobPos then\n        targetPosidx = i + 1\n        break\n    end\nend\n\nif (targetPosidx > 7) then\n    targetPosidx = 1\nend\n\nlocal posIndex = runOrder[targetPosidx]\nlocal targetPos = data.P12S2FireWindStartPos[posIndex]\nlocal isFirst = true\n-- 这里需要判断一下是不是第一个人，如果是第一个人绘制应延迟3秒\nfor _, ent in pairs(TensorCore.entityList(\"Party\")) do\n    if data.P12SJobOrder[ent.job] ~= nil\n        and ent.id ~= player.id\n        and TensorCore.hasBuff(ent.id, 3617)\n    then\n        isFirst = false\n        break\n    end\nend\nif isFirst then\n    data.GuidePositionWithSetDelay(targetPos.x, targetPos.z, 3000, 0.3, 3000)\nelse\n    data.GuidePositionWithSetSize(targetPos.x, targetPos.z, 3000, 0.3)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"e3eb3383-b6c5-ed12-bb8c-1bdd9288fb36",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuMNK2_CD",
							name = "Lua",
							uuid = "9629d433-bde1-d746-ba78-d6b70add86d7",
							version = 2,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 3592,
							category = "Self",
							name = "被传火",
							uuid = "e3eb3383-b6c5-ed12-bb8c-1bdd9288fb36",
							version = 2,
						},
					},
				},
				mechanicTime = 1362.5,
				name = "被传火",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 28,
				timerStartOffset = -1,
				uuid = "bfaaf59f-204c-c3d0-9f5c-02d0afaca00c",
				version = 2,
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
							actionLua = "--[[\n        传火后散开\n    ]]\nlocal player = TensorCore.mGetPlayer()\nlocal mtCurPos = 1\nlocal distance = 100000000\n-- 获取距离自己最近的分散点\nfor i = 1, 8, 1 do\n    local p = data.P12S2FireWindStartPos[i]\n    local disSqr = (p.x - player.pos.x) ^ 2 + (p.z - player.pos.z) ^ 2\n    if disSqr < distance then\n        distance = disSqr\n        mtCurPos = i\n    end\nend\nlocal targetPos = data.P12S2FireWindEndPos[mtCurPos]\ndata.GuidePositionWithSetSize(targetPos.x, targetPos.z, 3000, 0.3)\nself.used = true",
							conditions = 
							{
								
								{
									"522b9cf3-4c04-9b80-83d8-fa82692d1597",
									true,
								},
							},
							uuid = "8e5cf8ba-4ed3-f1ea-9e8e-ff8586bd854b",
							version = 2,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 3617,
							category = "Self",
							name = "火耐性",
							uuid = "522b9cf3-4c04-9b80-83d8-fa82692d1597",
							version = 2,
						},
					},
				},
				mechanicTime = 1362.5,
				name = "传火后",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 28,
				timerStartOffset = -1,
				uuid = "f2a10855-4cf3-453a-958e-e7545042f481",
				version = 2,
			},
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 7000\nlocal group1safePos1\nlocal group1safePos2\nlocal type = 0\nif TensorCore.isAnyEntityCasting(33567) then\n    for _, ent in pairs(TensorCore.entityList(\"contentid=12382\")) do\n        if math.sqrt((ent.pos.x - 84.57) ^ 2 + (ent.pos.z - 82.74) ^ 2) < 0.01 and math.abs(ent.pos.h - 0.69811582565308) < 0.1 then\n            group1safePos1 = { x = 99, z = 80 }\n            group1safePos2 = { x = 101, z = 110 }\n            type = 2\n            break\n        elseif math.sqrt((ent.pos.x - 115.43) ^ 2 + (ent.pos.z - 82.74) ^ 2) < 0.01 and math.abs(ent.pos.h - -0.69821166992188) < 0.1 then\n            group1safePos1 = { x = 101, z = 80 }\n            group1safePos2 = { x = 99, z = 110 }\n            type = 2\n        elseif math.sqrt((ent.pos.x - 84) ^ 2 + (ent.pos.z - 83.75) ^ 2) < 0.01 and math.abs(ent.pos.h - 1.5707724094391) < 0.1 then\n            type = 1\n            group1safePos1 = { x = 80, z = 93 }\n            group1safePos2 = { x = 120, z = 97 }\n            break\n        elseif math.sqrt((ent.pos.x - 116) ^ 2 + (ent.pos.z - 83.75) ^ 2) < 0.01 and math.abs(ent.pos.h - -1.5708682537079) < 0.1 then\n            type = 1\n            group1safePos1 = { x = 80, z = 97 }\n            group1safePos2 = { x = 120, z = 93 }\n            break\n        end\n    end\nend\n\nif type == 0 then\n    SendTextCommand(\"/e 没抓到地火位置，自己看吧！<se.1>\")\nelse\n    local player = TensorCore.mGetPlayer()\n    local jobPos = data.GetJobPos(player.job)\n    if type == 1 then -- 水平火，MT ST分组\n        if jobPos % 2 == 1 then\n            data.GuidePosition(group1safePos1.x, group1safePos1.z, drawTime)\n        elseif jobPos % 2 == 0 then\n            data.GuidePosition(group1safePos2.x, group1safePos2.z, drawTime)\n        end\n        if jobPos == 1 then\n            data.GuidePositionWithSetDelay(80, 80, 3000, 1, drawTime)\n        elseif jobPos == 2 then\n            data.GuidePositionWithSetDelay(120, 80, 3000, 1, drawTime)\n        elseif jobPos == 3 then\n            data.GuidePositionWithSetDelay(80, 100, 3000, 1, drawTime)\n        elseif jobPos == 4 then\n            data.GuidePositionWithSetDelay(120, 100, 3000, 1, drawTime)\n        elseif jobPos == 5 then\n            data.GuidePositionWithSetDelay(80, 90, 3000, 1, drawTime)\n        elseif jobPos == 6 then\n            data.GuidePositionWithSetDelay(120, 90, 3000, 1, drawTime)\n        elseif jobPos == 7 then\n            data.GuidePositionWithSetDelay(80, 110, 3000, 1, drawTime)\n        elseif jobPos == 8 then\n            data.GuidePositionWithSetDelay(120, 110, 3000, 1, drawTime)\n        end\n    elseif type == 2 then --斜火，近远分组\n        local meele = { 1, 2, 5, 6 }\n        local range = { 3, 4, 7, 8 }\n        if table.contains(meele, jobPos) then\n            data.GuidePosition(group1safePos1.x, group1safePos1.z, drawTime)\n        elseif table.contains(range, jobPos) then\n            data.GuidePosition(group1safePos2.x, group1safePos2.z, drawTime)\n        end\n        if jobPos == 1 then\n            data.GuidePositionWithSetDelay(80, 80, 3000, 1, drawTime)\n        elseif jobPos == 2 then\n            data.GuidePositionWithSetDelay(120, 80, 3000, 1, drawTime)\n        elseif jobPos == 3 then\n            data.GuidePositionWithSetDelay(93, 110, 3000, 1, drawTime)\n        elseif jobPos == 4 then\n            data.GuidePositionWithSetDelay(107, 110, 3000, 1, drawTime)\n        elseif jobPos == 5 then\n            data.GuidePositionWithSetDelay(93, 80, 3000, 1, drawTime)\n        elseif jobPos == 6 then\n            data.GuidePositionWithSetDelay(107, 80, 3000, 1, drawTime)\n        elseif jobPos == 7 then\n            data.GuidePositionWithSetDelay(80, 110, 3000, 1, drawTime)\n        elseif jobPos == 8 then\n            data.GuidePositionWithSetDelay(120, 110, 3000, 1, drawTime)\n        end\n    end\nend\nself.used = true\n",
							uuid = "c1455118-b010-bb31-8b13-f06e273bdd07",
							version = 2,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1400.4,
				name = "地火指路",
				timelineIndex = 146,
				timerOffset = -7,
				uuid = "2916088a-0093-a1bd-bb4e-3bbaa463d6e7",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	mapID = 1154,
	version = 3,
}



return tbl