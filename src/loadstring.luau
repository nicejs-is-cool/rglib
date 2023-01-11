local compile = require("yueliang")
local createExecutable = require("fione")

return function(source, env, name)
	local executable
	local env = env or getfenv(2)
	local name = name or "CPU0.lua"
	local ran, failureReason = pcall(function()
		local compiledBytecode = compile(source, name)
		executable = createExecutable(compiledBytecode, env)
	end)
	
	if ran then
		return setfenv(executable, env)
	end
	return nil, failureReason
end