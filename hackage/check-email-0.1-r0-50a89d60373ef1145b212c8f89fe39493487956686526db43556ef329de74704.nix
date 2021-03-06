{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "check-email"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Confirm whether an email is valid and probably existant.";
      description = "Confirm whether an email is valid and probably existant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.email-validate) ];
        libs = [
          (pkgs."gd")
          (pkgs."png")
          (pkgs."z")
          (pkgs."jpeg")
          (pkgs."m")
          (pkgs."fontconfig")
          (pkgs."freetype")
          (pkgs."expat")
          (pkgs."resolv")
          ];
        };
      };
    }