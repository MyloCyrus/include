{ pkgs }: {
	deps = [
   pkgs.st
		pkgs.clang_12
		pkgs.ccls
		pkgs.gdb
		pkgs.gnumake
	];
}