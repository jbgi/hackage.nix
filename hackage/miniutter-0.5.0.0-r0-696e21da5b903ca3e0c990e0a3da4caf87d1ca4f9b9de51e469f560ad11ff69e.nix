{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "miniutter"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Mikolaj Konarski";
      homepage = "https://github.com/Mikolaj/miniutter";
      url = "";
      synopsis = "Simple English clause creation from arbitrary words";
      description = "This library helps in generating simple present tense\nEnglish sentences from short, parametrized descriptions.\nIn a typical use, the structure of a clause is fixed,\nbut the particular words to be used vary in arbitrary ways.\nThe main goal of the library is to minimize the API\ncomplexity and the code size of programs that use it.\nThe library doesn't attempt to ban incorrect English sentences,\nbut just make the creation of the simple correct ones easy\nand predictable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.minimorph)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "test-miniutter" = {
          depends = [
            (hsPkgs.miniutter)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
          };
        };
      };
    }