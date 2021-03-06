{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix-glpk"; version = "0.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://perception.inf.um.es/hmatrix";
      url = "";
      synopsis = "Linear Programming based on GLPK";
      description = "Simple interface to linear programming functions provided by GLPK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hmatrix) ];
        libs = [ (pkgs."glpk") ];
        };
      };
    }