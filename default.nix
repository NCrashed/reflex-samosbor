let
   reflex-platform = (import ./nix/reflex-platform.nix) {};
in reflex-platform.project ({ pkgs, ... }: {
    packages = {
        samosbor-runner = ./runner;
    };
    shells = {
        ghc = [
            "samosbor-runner"
        ];
    };
})