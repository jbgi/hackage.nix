{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clifford"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sophie@traumapony.org";
      author = "Sophie Taylor";
      homepage = "http://github.com/spacekitteh/haskell-clifford";
      url = "";
      synopsis = "A Clifford algebra library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.numeric-prelude)
          (hsPkgs.permutation)
          (hsPkgs.data-ordlist)
          (hsPkgs.converge)
          (hsPkgs.lens)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.stream-fusion)
          (hsPkgs.criterion)
          (hsPkgs.derive)
          (hsPkgs.QuickCheck)
          (hsPkgs.nats)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
          ];
        };
      };
    }