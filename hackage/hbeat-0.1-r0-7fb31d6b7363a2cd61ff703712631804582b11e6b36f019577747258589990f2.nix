{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hbeat"; version = "0.1"; };
      license = "BSD-4-Clause";
      copyright = "Tim Docker, 2007";
      maintainer = "";
      author = "Tim Docker";
      homepage = "";
      url = "";
      synopsis = "A simple step sequencer GUI.";
      description = "A toy step sequencer program written using OpenGL and the SDL libraries. Configuration (including the audio samples used) is controlled via an external file.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hbeat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.OpenGL)
            (hsPkgs.SDL)
            (hsPkgs.SDL-mixer)
            (hsPkgs.mtl)
            ];
          libs = [ (pkgs."SDL") (pkgs."SDL_mixer") ];
          };
        };
      };
    }