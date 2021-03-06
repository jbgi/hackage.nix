{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "skell"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/skell";
      url = "";
      synopsis = "An overly complex Haskell web framework.";
      description = "Skell is a Haskell web framework. Much like an actual skeleton, Skell is both\ncomplex and inflexible. Skell is inspired by Happstack, but looks more like\nYesod on the back-end.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
          ];
        };
      };
    }