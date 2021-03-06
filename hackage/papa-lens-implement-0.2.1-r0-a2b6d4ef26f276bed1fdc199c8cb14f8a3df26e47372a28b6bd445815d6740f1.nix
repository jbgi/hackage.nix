{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "papa-lens-implement"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/data61/papa-lens-implement";
      url = "";
      synopsis = "useful `lens` functions reimplemented";
      description = "useful `lens` functions reimplemented";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.lens) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }