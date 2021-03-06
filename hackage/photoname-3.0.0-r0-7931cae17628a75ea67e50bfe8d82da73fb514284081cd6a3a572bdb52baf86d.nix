{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "photoname"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2007-2011 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/photoname.html";
      url = "";
      synopsis = "Rename JPEG photo files based on shoot date";
      description = "Command-line utility for renaming/moving photo image files based on\nEXIF tags.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "photoname" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.exif)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }