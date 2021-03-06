{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "classyplate"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Nemeth Boldizsar";
      homepage = "";
      url = "";
      synopsis = "Fuseable type-class based generics";
      description = "Defining generics that can be used efficiently on heterogenous data structures\nlike syntax trees. Can access elements of multiple types at a single traversal. Non-invasive method\ndon't have to change the representation to use. All boilerplate code can be generated by the supplied\nTemplate Haskell functions.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      benchmarks = {
        "measure" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.classyplate)
            (hsPkgs.parallel)
            (hsPkgs.uniplate)
            ];
          };
        };
      };
    }