{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hylogen"; version = "0.1.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylogen";
      url = "";
      synopsis = "an EDSL for live-coding fragment shaders";
      description = "an EDSL for live-coding fragment shaders";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector-space) (hsPkgs.data-reify) ];
        };
      exes = {
        "hylide" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.websockets)
            (hsPkgs.aeson)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }