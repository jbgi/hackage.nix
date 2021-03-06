{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "colorful-monoids"; version = "0.2.1.2"; };
      license = "MIT";
      copyright = "2017-2018 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/colorful-monoids#readme";
      url = "";
      synopsis = "Styled console text output using ANSI escape sequences.";
      description = "This library provides styled text output using ANSI escape sequences. The colored text is modeled as nested Colored values, which form a Monoid. As a result the colored code has a relatively concise form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.colorful-monoids)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }