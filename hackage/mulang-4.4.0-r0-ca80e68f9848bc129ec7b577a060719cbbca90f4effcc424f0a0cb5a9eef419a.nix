{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mulang"; version = "4.4.0"; };
      license = "LicenseRef-GPL-3.0";
      copyright = "";
      maintainer = "franco@mumuki.org";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "An intermediate language designed to perform advanced code analysis";
      description = "Mulang is an intermediate language, a combinators library for static code analysis and a multilanguage comand line tool";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.haskell-src)
          (hsPkgs.language-java)
          (hsPkgs.language-javascript)
          (hsPkgs.language-python)
          (hsPkgs.aeson)
          (hsPkgs.inflections)
          (hsPkgs.parsec)
          (hsPkgs.ParsecTools)
          (hsPkgs.split)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.process)
          ];
        build-tools = [
          ((hsPkgs.buildPackages).happy)
          ((hsPkgs.buildPackages).alex)
          ];
        };
      exes = {
        "mulang" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.process)
            (hsPkgs.neat-interpolation)
            (hsPkgs.mulang)
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
          build-tools = [
            ((hsPkgs.buildPackages).happy)
            ((hsPkgs.buildPackages).alex)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.mulang)
            (hsPkgs.containers)
            ];
          build-tools = [
            ((hsPkgs.buildPackages).happy)
            ((hsPkgs.buildPackages).alex)
            ];
          };
        };
      };
    }