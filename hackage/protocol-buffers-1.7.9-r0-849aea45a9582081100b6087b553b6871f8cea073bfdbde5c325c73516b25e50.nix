{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "protocol-buffers"; version = "1.7.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
      url = "http://code.haskell.org/protocol-buffers/";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse proto files and generate Haskell code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.binary)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.haskell-src)
          (hsPkgs.QuickCheck)
          ] ++ (if flags.small_base
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }