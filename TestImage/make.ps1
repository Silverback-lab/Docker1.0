#powerShell
# .\make.ps1 build
[string] $command = $args[0]
if ($command -eq "build") {
	docker build -t test .
}

# .\make.ps1 build-2-9
elseif ($command -eq "build-2-9") {
	docker build -t test . --build-arg ANSIBLE_VER=2.9.3
}