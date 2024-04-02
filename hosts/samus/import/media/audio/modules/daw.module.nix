{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    audacity
    ardour
    traverso
    renoise
    ecasound
   # ocenaudio

    pavucontrol

    helvum

    supercollider
    gnaural
    fluidsynth
    qsynth
    vcv-rack
    cardinal
    zynaddsubfx
    yoshimi
    zynaddsubfx-fltk
    zynaddsubfx-ntk
    helm
    yoshimi
    freqtweak
    sunvox

    easyeffects
    ladspaPlugins
    plugin-torture
    
    AMB-plugins
    ladspa-sdk
    ladspaH
    caps
    calf
    dssi

    lv2
    metersLv2
    distrho


    bristol
    timidity
    wildmidi

    sox
    rPackages.sweep
    # haskellPackages.wavesurfer
    milkytracker

    muse
    musescore


    frescobaldi
    lilypond-with-fonts
    tuxguitar
    denemo

    mixxx

    rosegarden

    hydrogen
    lmms
    qtractor


    libsForQt5.soundkonverter

    qjackctl
    qpwgraph
    carla
    patchage
    rPackages.CaDENCE
    open-music-kontrollers.patchmatrix
        

  ];
}
