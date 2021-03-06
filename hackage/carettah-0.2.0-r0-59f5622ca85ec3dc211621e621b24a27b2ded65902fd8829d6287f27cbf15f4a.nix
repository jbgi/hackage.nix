{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "carettah"; version = "0.2.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "http://carettah.masterq.net/";
      url = "";
      synopsis = "A presentation tool written with Haskell.";
      description = "A presentation tool written with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "carettah" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.pandoc)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.pango)
            (hsPkgs.hcwiid)
            (hsPkgs.highlighting-kate)
            ];
          };
        };
      };
    }