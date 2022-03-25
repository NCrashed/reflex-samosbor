let
   reflex-platform = (import ./nix/reflex-platform.nix) {};
in reflex-platform.project ({ pkgs, ... }: {
    packages = {
        reflex-samosbor = ./library;
        reflex-samosbor-runner = ./runner;
    };
    shells = {
        ghc = [
            "reflex-samosbor"
            "reflex-samosbor-runner"
        ];
    };
    overrides = self: super: {
        clay = self.callPackage ./nix/deps/clay.nix {};
    };
})