{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "resourcet"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Deterministic allocation and freeing of scarce resources.";
      description = "This package was originally included with the conduit package, and has since been split off. For more information, please see <http://www.yesodweb.com/book/conduits>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          ];
        };
      };
    }