{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tidal-midi"; version = "0.9.9"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and other contributors, 2015";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidal.lurk.org/";
      url = "";
      synopsis = "MIDI support for tidal";
      description = "MIDI support for Tidal. Supports Volca Keys, Bass and Beats and other synths. Interface is likely to change significantly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tidal)
          (hsPkgs.PortMidi)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          ];
        };
      };
    }