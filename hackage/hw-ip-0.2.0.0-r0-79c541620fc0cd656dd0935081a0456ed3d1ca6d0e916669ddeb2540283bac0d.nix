{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-ip"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John";
      homepage = "https://github.com/haskell-works/hw-ip#readme";
      url = "";
      synopsis = "Library for manipulating IP addresses and CIDR blocks";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.generic-lens)
          (hsPkgs.hw-bits)
          (hsPkgs.text)
          (hsPkgs.base)
          ];
        };
      tests = {
        "hw-ip-test" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-bits)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-ip)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }