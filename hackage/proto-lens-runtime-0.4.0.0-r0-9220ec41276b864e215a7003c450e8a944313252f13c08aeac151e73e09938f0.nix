{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "proto-lens-runtime"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "";
      description = "Modules that are needed by the Haskell files generated by proto-lens-protoc. For forwards compatibility, we reexport them as new module names so that other packages don't accidentally write non-generated code that relies on these modules being reexported by this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.lens-family)
          (hsPkgs.lens-labels)
          (hsPkgs.proto-lens)
          (hsPkgs.text)
          ];
        };
      };
    }