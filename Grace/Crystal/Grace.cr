macro code
"macro code%s%s%s%s%send%smacro grace%sfile = File.new(%sGrace_kid.cr%s, %sw%s)%sfile.printf(code,)%sfile.close()%send%smacro launch%sgrace%send%slaunch"
end
macro grace
file = File.new("Grace_kid.cr", "w")
file.printf(code, 10, 34, code, 34, 10, 10, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10, 10)	
file.close()
end
macro launch
grace
end
launch
