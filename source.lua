local BC = {}

function BC.Create(instlist)
	local Instances = {}

	for _, Entry in pairs(instlist) do
		local ID, ClassName = Entry[1], Entry[2]
		Instances[ID] = Instance.new(ClassName)
	end

	for _, Entry in pairs(instlist) do
		local ID, _, Props = Entry[1], Entry[2], Entry[3]
		local Inst = Instances[ID]
		for Property, Value in pairs(Props or {}) do
			if Property == "Parent" and type(Value) == "table" then
				Value = Instances[Value[1]]
			end
			Inst[Property] = Value
		end
	end

	return Instances
end

return BC
