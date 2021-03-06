{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "audacity"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/audacity";
      url = "";
      synopsis = "Interchange with the Audacity sound signal editor";
      description = "This package provides functions\nfor interchange with the Audacity sound signal editor.\nCurrently we support import and export of label tracks,\nexport of Audacity projects and\nlimited import of tracks from Audacity projects.\n\nWe provide some examples that are useful on its own:\n\n* @sox-split@:\nSplit an audio file according to a label track.\nAudacity provides this function by itself.\nYou can use placeholders like @%s@ and @%02d@\nin order to compose the names of the parts from the labels and positions.\n\n* @sox-concat@:\nConcatenate a sequence of sound files with matching\nsampling rates and numbers of channels using SoX\nand generate an Audacity label track file\nthat shows the origins of the parts.\n\n* @audacity-concat@:\nCreate an Audacity project file\ncontaining a virtual concatenation of the input sound files\nand a label track showing the origins of the sound files.\n\n* @audacity-combine@:\nPut several audio and label files into tracks of a new Audacity project.\nOpening one or even multiple such projects is much easier\nthan loading individual tracks into Audacity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.storablevector)
          (hsPkgs.storable-record)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.tagchup)
          (hsPkgs.xml-basic)
          (hsPkgs.non-empty)
          (hsPkgs.utility-ht)
          (hsPkgs.explicit-exception)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.base)
          ];
        };
      exes = {
        "sox-split" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.audacity)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "sox-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.audacity)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "audacity-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.audacity)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "audacity-combine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.audacity)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      };
    }