{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      optimizeadvanced = false;
      buildexamples = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer-alsa"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/synthesizer/alsa/";
      synopsis = "Control synthesizer effects via ALSA/MIDI";
      description = "This package allows to read MIDI events\nand to convert them to control signals\nthat can be used for audio effects.\nAs demonstration there is a keyboard controlled music synthesizer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.synthesizer-dimensional)
          (hsPkgs.synthesizer-core)
          (hsPkgs.sox)
          (hsPkgs.midi-alsa)
          (hsPkgs.alsa-seq)
          (hsPkgs.alsa-pcm)
          (hsPkgs.alsa-core)
          (hsPkgs.midi)
          (hsPkgs.storablevector)
          (hsPkgs.deepseq)
          (hsPkgs.numeric-prelude)
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.data-accessor)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          ] ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.random) (hsPkgs.old-time) ]
          else [ (hsPkgs.base) ]);
        };
      exes = { "realtimesynth" = {}; "synthicate" = {}; "test" = {}; };
      };
    }