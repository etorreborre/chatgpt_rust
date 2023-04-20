{ self, fetchurl, stdenv, unzip }:

stdenv.mkDerivation {
  pname = "chatgpt-rust";
  version = "0.3.2";
  src = fetchurl {
    url = "https://github.com/zhulg/ChatGPT_CLI_Rust/releases/download/v0.3.2/x86_64-apple-darwin.zip";
    sha256 = "sha256-mwpdB3CBbLxfd29XOvfXBjlpbNqUomc0YyJgtPcgxKI=";
  };

  nativeBuildInputs = [ unzip ];
  buildInputs = [ unzip ];
  unpackPhase = ''
    unzip $src
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp chatgpt_rust $out/bin/
  '';
    meta.description = "chatgpt command line executable";
}
