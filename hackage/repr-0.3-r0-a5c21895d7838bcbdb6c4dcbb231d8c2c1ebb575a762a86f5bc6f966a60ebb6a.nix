{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repr"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Bas van Dijk";
      maintainer = "v.dijk.bas@gmail.com";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Render overloaded expressions to their textual representation.";
      description = "This library allows you to render overloaded expressions to their\ntextual representation. For example:\n\n@\n*Repr> let rd = 1.5 + 2 + (3 + (-4) * (5 - pi / sqrt 6)) :: Repr Double\n*Repr> show rd\n\\\"fromRational (3 % 2) + fromInteger 2 + (fromInteger 3 + negate (fromInteger 4) * (fromInteger 5 - pi / sqrt (fromInteger 6)))\\\"\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.string-combinators)
          (hsPkgs.to-string-class)
          (hsPkgs.dstring)
          ];
        };
      };
    }