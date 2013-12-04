Rasta
=====

This module contains the main routines for MFCC and PLP extraction.  Even though it is called Rasta, rasta processing hasn't been implemented yet. 

Most of this is re-coded from Dan Ellis's rastamat package.  We like Dan Ellis's work.  

Spectra
 - `powspec(x::Vector, sr=8000.0; wintime=0.025, steptime=0.01, dither=true)`
 - `audspec(x::Array, sr=16000.0; nfilts=iceil(hz2bark(sr/2)), fbtype="bark", 
                 minfreq=0, maxfreq=sr/2, sumpower=true, bwidth=1.0)`

Filterbank
 - `fft2barkmx(nfft::Int, nfilts::Int; sr=8000.0, width=1.0, minfreq=0, maxfreq=sr/2)`
 - `hz2bark(f)`
 - `fft2melmx(nfft::Int, nfilts::Int; sr=8000.0, width=1.0, minfreq=0.0, maxfreq=sr/2, htkmel=false, constamp=false)`
 - `hz2mel(f::Vector, htk=false)`
 - `mel2hz(z, htk=false)`

PLP
 - `postaud(x::Array, fmax::Number, fbtype="bark", broaden=false)`
 - `dolpc(x::Array, modelorder=8)`
 - `lpc2cep(a::Array, ncep=0)`
 - `spec2cep(spec::Array, ncep::Int=13, dcttype::Int=2)`

Postprocessing
 - `lifter(x::Array, lift::Number=0.6, invs=false)`
 - `deltas(x, w::Int=9)`

