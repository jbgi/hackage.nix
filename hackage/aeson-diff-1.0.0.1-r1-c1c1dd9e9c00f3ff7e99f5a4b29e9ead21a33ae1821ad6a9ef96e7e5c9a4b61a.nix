{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-diff"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Thomas Sutton and others.";
      maintainer = "me@thomas-sutton.id.au";
      author = "Thomas Sutton";
      homepage = "https://github.com/thsutton/aeson-diff";
      url = "";
      synopsis = "Extract and apply patches to JSON documents.";
      description = "\nThis is a small library for working with changes to JSON documents. It\nincludes a library and two command-line executables in the style of the\ndiff(1) and patch(1) commands available on many systems.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.edit-distance-vector)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "json-diff" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-diff)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        "json-patch" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-diff)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-diff)
            (hsPkgs.bytestring)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-diff)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "hlint-check" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }