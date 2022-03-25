# Pin version of nixpkgs to ensure build reproduceability
import ((import <nixpkgs> {}).fetchFromGitHub {
 owner = "reflex-frp";
 repo = "reflex-platform";
 rev = "3ed2bcfd5e8221eeafce02a2541db3ced9433538";
 sha256  = "sha256-N2gN0UeByABRWaVOX05ov/mmCC43vn66M2S3EWQSe4M=";
})
# import ../reflex-platform
