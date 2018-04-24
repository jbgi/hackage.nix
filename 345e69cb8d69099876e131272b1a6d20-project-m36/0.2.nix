{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      profiler = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "project-m36";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "agentm@themactionfaction.com";
        author = "AgentM";
        homepage = "https://github.com/agentm/project-m36";
        url = "";
        synopsis = "Relational Algebra Engine";
        description = "A relational algebra engine which can be used to persist and query Haskell data types.";
        buildType = "Simple";
      };
      components = {
        project-m36 = {
          depends  = ([
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.haskeline
            hsPkgs.directory
            hsPkgs.MonadRandom
            hsPkgs.random-shuffle
            hsPkgs.uuid
            hsPkgs.cassava
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.vector
            hsPkgs.parallel
            hsPkgs.monad-parallel
            hsPkgs.transformers
            hsPkgs.gnuplot
            hsPkgs.binary
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.vector-binary-instances
            hsPkgs.temporary
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.hashable-time
            hsPkgs.old-locale
            hsPkgs.attoparsec
            hsPkgs.either
            hsPkgs.base64-bytestring
            hsPkgs.data-interval
            hsPkgs.extended-reals
            hsPkgs.network-transport
            hsPkgs.aeson
            hsPkgs.path-pieces
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.http-api-data
            hsPkgs.distributed-process-client-server
            hsPkgs.distributed-process
            hsPkgs.distributed-process-extras
            hsPkgs.distributed-process-async
            hsPkgs.network-transport-tcp
            hsPkgs.network-transport
            hsPkgs.list-t
            hsPkgs.stm-containers
            hsPkgs.optparse-applicative
            hsPkgs.Glob
            hsPkgs.cryptohash-sha256
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8") hsPkgs.ghc-boot;
        };
        exes = {
          tutd = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.hashable
              hsPkgs.transformers
              hsPkgs.semigroups
              hsPkgs.mtl
              hsPkgs.uuid
              hsPkgs.deepseq-generics
              hsPkgs.MonadRandom
              hsPkgs.MonadRandom
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.binary
              hsPkgs.data-interval
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.temporary
              hsPkgs.megaparsec
              hsPkgs.haskeline
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.base64-bytestring
              hsPkgs.optparse-applicative
              hsPkgs.attoparsec
              hsPkgs.stm-containers
              hsPkgs.list-t
            ];
          };
          project-m36-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
              hsPkgs.binary
              hsPkgs.transformers
              hsPkgs.temporary
              hsPkgs.data-interval
              hsPkgs.deepseq
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.parallel
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.hashable-time
              hsPkgs.time
              hsPkgs.vector-binary-instances
              hsPkgs.text
              hsPkgs.deepseq-generics
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.http-api-data
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.base64-bytestring
            ];
          };
          bigrel = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.transformers
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          Example-SimpleClient = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
            ];
          };
          Example-OutOfTheTarpit = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.aeson
              hsPkgs.path-pieces
              hsPkgs.either
              hsPkgs.conduit
              hsPkgs.http-api-data
              hsPkgs.template-haskell
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
            ];
          };
          Example-Blog = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.aeson
              hsPkgs.path-pieces
              hsPkgs.either
              hsPkgs.conduit
              hsPkgs.http-api-data
              hsPkgs.template-haskell
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
            ];
          };
          Example-Hair = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.aeson
              hsPkgs.path-pieces
              hsPkgs.either
              hsPkgs.conduit
              hsPkgs.http-api-data
              hsPkgs.template-haskell
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.project-m36
            ];
          };
          project-m36-websocket-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.path-pieces
              hsPkgs.either
              hsPkgs.conduit
              hsPkgs.http-api-data
              hsPkgs.template-haskell
              hsPkgs.websockets
              hsPkgs.aeson
              hsPkgs.optparse-applicative
              hsPkgs.project-m36
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.uuid
              hsPkgs.megaparsec
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.base64-bytestring
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.time
              hsPkgs.network-transport-tcp
              hsPkgs.semigroups
            ];
          };
        };
        tests = {
          test-tutoriald = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-tutoriald-atomfunctionscript = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.project-m36
              hsPkgs.uuid
              hsPkgs.containers
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
              hsPkgs.time
            ];
          };
          test-tutoriald-databasecontextfunctionscript = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.project-m36
              hsPkgs.uuid
              hsPkgs.containers
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
              hsPkgs.time
            ];
          };
          test-relation = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
              hsPkgs.transformers
            ];
          };
          test-static-optimizer = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
              hsPkgs.transformers
            ];
          };
          test-transactiongraph-persist = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-relation-import-csv = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
            ];
          };
          test-tutoriald-import-tutoriald = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-relation-export-csv = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.stm-containers
              hsPkgs.project-m36
            ];
          };
          test-transactiongraph-merge = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.aeson
              hsPkgs.conduit
              hsPkgs.either
              hsPkgs.path-pieces
              hsPkgs.http-api-data
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.project-m36
            ];
          };
          test-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.network-transport-tcp
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.project-m36
              hsPkgs.network-transport
              hsPkgs.semigroups
            ];
          };
          test-scripts = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.network-transport-tcp
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-websocket-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.network-transport-tcp
              hsPkgs.semigroups
            ];
          };
          test-isomorphic-schemas = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
            ];
          };
          test-atomable = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-multiprocess-access = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
            ];
          };
          test-transactiongraph-automerge = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-tupleable = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
          test-client-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.stm-containers
              hsPkgs.list-t
              hsPkgs.websockets
              hsPkgs.optparse-applicative
              hsPkgs.network
              hsPkgs.aeson
              hsPkgs.project-m36
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.semigroups
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.time
              hsPkgs.hashable-time
              hsPkgs.bytestring
              hsPkgs.uuid
              hsPkgs.stm
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.binary
              hsPkgs.parallel
              hsPkgs.cassava
              hsPkgs.attoparsec
              hsPkgs.gnuplot
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.base64-bytestring
              hsPkgs.data-interval
              hsPkgs.filepath
              hsPkgs.criterion
              hsPkgs.stm-containers
              hsPkgs.project-m36
            ];
          };
        };
      };
    }