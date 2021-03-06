{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      integration-tests = false;
      disable-git-info = false;
      static = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "stack"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "manny@fpcomplete.com";
      author = "Commercial Haskell SIG";
      homepage = "http://haskellstack.org";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "Please see the README.md for usage information, and\nthe wiki on Github for more details.  Also, note that\nthe API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.binary-tagged)
          (hsPkgs.blaze-builder)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.either)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.fast-logger)
          (hsPkgs.filelock)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.hashable)
          (hsPkgs.hpc)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.retry)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.void)
          (hsPkgs.yaml)
          (hsPkgs.zlib)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.word8)
          (hsPkgs.hastache)
          (hsPkgs.project-template)
          (hsPkgs.uuid)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        };
      exes = {
        "stack" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.filelock)
            (hsPkgs.http-conduit)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.stack)
            (hsPkgs.text)
            (hsPkgs.either)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.conduit)
            (hsPkgs.transformers)
            (hsPkgs.http-client)
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32)) ++ (pkgs.lib).optionals (!flags.disable-git-info) [
            (hsPkgs.gitrev)
            (hsPkgs.optparse-simple)
            ];
          };
        };
      tests = {
        "stack-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.path)
            (hsPkgs.temporary)
            (hsPkgs.stack)
            (hsPkgs.monad-logger)
            (hsPkgs.http-conduit)
            (hsPkgs.cryptohash)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.Cabal)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.retry)
            ];
          };
        "stack-integration-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.unix-compat)
            (hsPkgs.containers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.async)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }