using Pkg
if isfile("Project.toml") && isfile("Manifest.toml")
		Pkg.activate(".")
end
atreplinit() do repl
    try
        @eval using OhMyREPL
    catch e
        @warn "error while importing OhMyREPL" e
    end
    try
        @eval using Revise
    catch e
        @warn "error while importing Revise" e
    end
end
