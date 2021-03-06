{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-nix"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "anelson@narrativescience.com";
      author = "Allen Nelson";
      homepage = "https://github.com/adnelson/simple-nix";
      url = "";
      synopsis = "Simple parsing/pretty printing for Nix expressions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          (hsPkgs.MissingH)
          (hsPkgs.error-list)
          (hsPkgs.text-render)
          (hsPkgs.system-filepath)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.error-list)
            (hsPkgs.text-render)
            (hsPkgs.system-filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            ];
          };
        };
      };
    }