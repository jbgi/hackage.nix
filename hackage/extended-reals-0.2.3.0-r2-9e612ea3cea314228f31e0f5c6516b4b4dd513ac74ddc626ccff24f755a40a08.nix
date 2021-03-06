{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "extended-reals"; version = "0.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/extended-reals/";
      url = "";
      synopsis = "Extension of real numbers with positive/negative infinities";
      description = "Extension of real numbers with positive/negative infinities (±∞).\nIt is useful for describing various limiting behaviors in mathematics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.hashable) ];
        };
      tests = {
        "TestExtendedReal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.extended-reals)
            ];
          };
        };
      };
    }