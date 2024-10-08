ButtonActive = false

function onLoad(save_state)
	self.addContextMenuItem("Apply Settings", apply, false)
	apply()
end

function apply()
	local outputs = {}
	for i, line in ipairs(splitLines(self.getGMNotes())) do
		local st, en, cap = string.find(line, ": (.+)$")
		outputs[i] = cap
	end
	outputs[1] = tonumber(outputs[1])
	outputs[2] = tonumber(outputs[2])
	outputs[3] = tonumber(outputs[3])
	if outputs[4] == "true" then
		outputs[4] = true
	else
		outputs[4] = false
	end
	if outputs[1] then
		self.getChildren()[1].getChildren()[2].getComponents()[2].set("range", outputs[1])
	end
	if outputs[2] then
		self.getChildren()[1].getChildren()[2].getComponents()[2].set("spotAngle", outputs[2])
	end
	self.getChildren()[1].getChildren()[2].getComponents()[2].set("color", self.getColorTint())
	if outputs[3] then
		self.getChildren()[1].getChildren()[2].getComponents()[2].set("intensity", outputs[3])
	end
	self.getChildren()[1].getChildren()[2].getComponents()[2].set("enabled", outputs[4])
end


function splitLines(input)
    local outputs = {}
    for output in input:gmatch("[^\n]+") do
        table.insert(outputs, output)
    end
    return outputs
end

function addButton()
	if ButtonActive then return end
	ButtonActive = true
	local obj = getObjectsWithTag('SearchableRules')
    if obj == nil or obj == {} then
        return
    end
    local rules = obj[1]
    if rules then
			self.createButton({
				click_function = 'NextButtonPressed',
				function_owner = rules,
				label          = 'Next',
				position       = {1.2, 1, 0},
				width          = 750,
				height         = 250,
				font_size      = 200,
			})
    end
end

function removeButton()
	self.clearButtons()
	ButtonActive = false
end