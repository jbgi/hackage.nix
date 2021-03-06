{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "brainfuck"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Jason Dagit <dagit@codersbase.com>";
      homepage = "";
      url = "";
      synopsis = "Brainfuck interpreter";
      description = "This is an interpreter of the brainf*ck language,\nwritten in the pure, lazy, functional language Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.mtl) ]; };
      exes = {
        "bf" = {
          depends = [ (hsPkgs.base) (hsPkgs.unix) (hsPkgs.array) (hsPkgs.mtl) ];
          };
        };
      };
    }