{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lenses"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jvranish@gmail.com";
      author = "Job Vranish";
      homepage = "http://github.com/jvranish/Lenses/tree/master";
      url = "";
      synopsis = "Simple Functional Lenses";
      description = "A simple but powerful implementation of function lenses (aka functional\nreferences, accessors, etc..).\nThey allow an easy way to manipulate fields of records";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs.template-haskell);
        };
      };
    }