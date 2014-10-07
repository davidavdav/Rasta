## Rasta.jl
## (c) 2013 David van Leeuwen
## recoded from Dan Ellis's rastamat package, which is (c) 2005--2012 Dan Ellis (see file LICENSE)

## Julia re-coding efforts by David van Leeuwen are licensed under the GPL v2. 

module Rasta

export powspec, audspec, fft2barkmx, fft2melmx, hz2bark, hz2mel, mel2hz, postaud, dolpc, lpc2cep, spec2cep, lifter

using SignalProcessing
using DSP

include("rasta.jl")

end
