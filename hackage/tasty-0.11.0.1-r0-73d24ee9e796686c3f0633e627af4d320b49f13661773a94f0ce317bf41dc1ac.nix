{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty"; version = "0.11.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "http://documentup.com/feuerbach/tasty";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "Tasty is a modern testing framework for Haskell.\nIt lets you combine your unit tests, golden\ntests, QuickCheck/SmallCheck properties, and any\nother types of tests into a single test suite.\nSee <http://documentup.com/feuerbach/tasty>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.regex-tdfa-rc)
          (hsPkgs.optparse-applicative)
          (hsPkgs.deepseq)
          (hsPkgs.unbounded-delays)
          (hsPkgs.async)
          (hsPkgs.ansi-terminal)
          (hsPkgs.clock)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        };
      };
    }