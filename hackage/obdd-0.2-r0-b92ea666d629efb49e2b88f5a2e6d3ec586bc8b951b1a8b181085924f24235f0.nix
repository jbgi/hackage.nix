{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "obdd"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann <waldmann@imn.htwk-leipzig.de>";
      author = "Johannes Waldmann";
      homepage = "";
      url = "";
      synopsis = "Ordered Reduced Binary Decision Diagrams";
      description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          ];
        };
      };
    }