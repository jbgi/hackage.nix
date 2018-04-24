{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "OpenCL";
          version = "1.0.1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2011 Luis Cabellos";
        maintainer = "Luis Cabellos";
        author = "Luis Cabellos";
        homepage = "https://github.com/zhensydow/opencl";
        url = "";
        synopsis = "Haskell high-level wrapper for OpenCL";
        description = "Haskell FFI binding to OpenCL library. It includes high-level wrappers to help development. Based on OpenCLRaw package.";
        buildType = "Simple";
      };
      components = {
        OpenCL = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }