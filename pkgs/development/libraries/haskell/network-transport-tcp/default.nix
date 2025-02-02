{ cabal, dataAccessor, network, networkTransport
, networkTransportTests
}:

cabal.mkDerivation (self: {
  pname = "network-transport-tcp";
  version = "0.4.0";
  sha256 = "1jjf1dj67a7l3jg3qgbg0hrjfnx1kr9n7hfvqssq7kr8sq1sc49v";
  buildDepends = [ dataAccessor network networkTransport ];
  testDepends = [ network networkTransport networkTransportTests ];
  doCheck = false;
  jailbreak = true;
  meta = {
    homepage = "http://haskell-distributed.github.com";
    description = "TCP instantiation of Network.Transport";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
