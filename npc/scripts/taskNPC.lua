local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	
	local player = Player(cid)
	
	if msgcontains(msg, "task") or msgcontains(msg, "tasks") or msgcontains(msg, "mision") or msgcontains(msg, "misiones") then
		npcHandler:say("Esas son todas mis tareas disponibles.", cid)
		TaskSystem.getRefresh(player)
		npcHandler:say("Siempre puedes venir por más tareas. Nos vemos pronto.", cid)
		npcHandler:releaseFocus(cid)
		return true
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
