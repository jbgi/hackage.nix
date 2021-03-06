{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tests = false; maxcount = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "filestore"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Gwern Branwen, Sebastiaan Visser";
      homepage = "http://johnmacfarlane.net/repos/filestore";
      url = "";
      synopsis = "Interface for versioning file stores.";
      description = "The filestore library provides an abstract interface for a versioning\nfile store, and modules that instantiate this interface.  Currently\nGit, Darcs, and Mercurial modules are provided, and other VCSs\nor databases could be added.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.split)
          (hsPkgs.Diff)
          (hsPkgs.old-locale)
          ];
        };
      exes = {
        "test-filestore" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.Diff)
            ];
          };
        };
      };
    }