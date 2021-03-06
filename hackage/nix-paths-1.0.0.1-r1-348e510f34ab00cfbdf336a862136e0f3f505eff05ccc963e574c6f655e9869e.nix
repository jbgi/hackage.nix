{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { allow-relative-paths = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nix-paths"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/nix-paths";
      url = "";
      synopsis = "Knowledge of Nix's installation directories.";
      description = "This module provides full paths to various Nix\nutilities, like @nix-store@, @nix-instantiate@, and\n@nix-env@.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.process) ]; };
      };
    }