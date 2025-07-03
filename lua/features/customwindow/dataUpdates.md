# Custom Window (Static Data Updates)

### Updating Single component (Static Data)

> Important! It is best to design your static data and update via state changes (Hide/Show data) 

```lua
---@param pPlayer CPlayer
---@param dwWindowID integer
---@param dwComponentIndex integer
---@param byType integer
local function example_updateData(pPlayer, dwWindowID, dwComponentIndex, byType)
	local w = SirinScript_CustomWindows[dwWindowID]

	if not w then
		return
	end

	if byType > 1 and (not w.data or #w.data == 0) then
		return
	end

	local buf = Sirin.mainThread.CLuaSendBuffer.Instance()
	buf:Init()
	buf:PushUInt32(dwWindowID)
	buf:PushUInt8(byType)

	if byType == 0 then -- Update layout
		buf:PushUInt8(4) -- num of columns
		buf:PushUInt32(0) -- col 1 is icon
		buf:PushUInt32(0) -- col 2 is icon
		buf:PushUInt32(0) -- col 3 is icon
		buf:PushUInt32(1) -- col 4 is text
	elseif byType == 1 then -- update overlay icon list
		local ln = 8
		buf:PushUInt8(ln) -- num of overlay icons

		for i = 1, ln do
			buf:PushUInt8(0) -- sprite id
			buf:PushUInt8(0) -- group id
			buf:PushUInt8(0) -- frame id
			buf:PushUInt16(0) -- grid index
		end
	elseif byType == 2 then -- update icon or text of particular component
		buf:PushUInt32(dwComponentIndex) -- component index to update

		if true then -- if component is icon
			buf:PushUInt8(0) -- sprite id
			buf:PushUInt8(0) -- group id
			buf:PushUInt8(0) -- frame id
			buf:PushUInt16(0) -- grid index
			local str = "on hover text"
			buf:PushString(str, str:len() + 1)
		else
			local str = "Text with tags"
			buf:PushString(str, str:len() + 1)
		end
	elseif byType == 3 then -- update state and delay of particular component
		buf:PushUInt32(dwComponentIndex) -- component index to update
		buf:PushUInt32(0x11111b) -- state flags: bit 0 is visible, bit 1 is active, bit 3 is clickable, bit 4 is need server report, bits 5-31 overlay icon apply
		buf:PushUInt32(0) -- delay remain in seconds
		buf:PushUInt32(0) -- delay total in seconds
		buf:PushUInt32(0) -- counter on icon
		buf:PushUInt32(0) -- counter 2 on icon
	else
		return
	end

	buf:SendBuffer(pPlayer, 80, 14)
end
```