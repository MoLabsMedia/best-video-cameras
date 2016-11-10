class Camera
  brand: 'Sony'
  name: 'Alpha a6500'
  year:  '2016-10-24'

  size: [ 120, 67, 53 ] #( unit: mm )
  weight: 453 #( unit: g )

  body: 'Rangefinder-style mirrorless'
  lens: 'E'

  processor: 'Bionz X'
  sensor: {
    type: 'CMOS'
    size: 'APS-C' #( 23.5x15.6mm )
    crop_factor: 1.5 #( unit: X )
    effective_pixels: 24 #( megapixels )
    image_ratio: [ 
      '3:2'
      '16:9'
    ]
    ISO: [ 100..51200 ]
    focus_points: 425
    shutter_speed: [ 1/32000..30 ]
    continuous_shoot: 11 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'AVCHD'
    'XAVC S'
  ]

  LCD: {
    type: 'TFT LCD'
    size: 3 # "
    rotate: 'tilt'
  }
  viewfinder_magnification: 0.7 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
    'Memory Stick Pro Duo'
  ]

  battery_life: 350 #( unit: CIPA )
  
  hasRAW: () -> return true
  getResolution: ( image_ratio, type ) -> return undefined
  hasFrameRate: ( res ) ->
    switch res
      when '3840x2160'
        return [
          '30p' # 100Mbps/60Mbps, XAVC S, MP4, H.264, Linear PCM
          '25p' # 100Mbps/60Mbps, XAVC S, MP4, H.264, Linear PCM
          '24p' # 100Mbps/60Mbps, XAVC S, MP4, H.264, Linear PCM
        ]
      when '1920x1080'
        return [
          '120p' # 100Mbps/60Mbps, XAVC S, MP4, H.264, Linear PCM
          '100p' # 100Mbps/60Mbps, XAVC S, MP4, H.264, Linear PCM
          '60p' # 50Mbps, XAVC S, MP4, H.264, Linear PCM / 28Mbps, AVCHD, MTS, H.264, Dolby Digital / 28Mbps, MP4, H.264, AAC
          '60i' # 24Mbps, AVCHD, MTS, H.264, Dolby Digital / 17Mbps, AVCHD, MTS, H.264, Dolby Digital
          '50p' # 50Mbps, XAVC S, MP4, H.264, Linear PCM / 28Mbps, AVCHD, MTS, H.264, Dolby Digital / 28Mbps, MP4, H.264, AAC
          '50i' # 24Mbps, AVCHD, MTS, H.264, Dolby Digital / 17Mbps, AVCHD, MTS, H.264, Dolby Digital
          '30p' # 50Mbps, XAVC S, MP4, H.264, Linear PCM / 16Mbps, MP4, H.264, AAC / 6Mbps, MP4, H.264, AAC
          '25p' # 24Mbps, AVCHD, MTS, H.264, Dolby Digital / 17Mbps, AVCHD, MTS, H.264, Dolby Digital / 16Mbps, MP4, H.264, AAC
          '24p' # 50Mbps, XAVC S, MP4, H.264, Linear PCM / 24Mbps, AVCHD, MTS, H.264, Dolby Digital / 17Mbps, AVCHD, MTS, H.264, Dolby Digital
        ]
      when '1280x720'
        return [
          '25p' # 6Mbps, MP4, H.264, AAC
        ]
      else
        return false

  hasImageStabilizer: () -> return '5-axis' #( Sensor-shift )
  hasAutoFocus: () -> return [
    'Contrast Detect (sensor)'
    'Phase Detect'
    'Multi-area'
    'Center'
    'Selective single-point'
    'Tracking'
    'Single'
    'Continuous'
    'Face Detection'
    'Live View'
  ]
  hasDigitalZoom: () -> return undefined #( unit: X )
  hasTimelapseRecording: () -> return undefined
  
  hasTouchScreen: () -> return true
  hasMic: () -> return 'stereo'
  hasHeadphone: () -> return 'mono'
  hasDualMemorySlots: () -> return false

  hasUSB: () -> return 2.0
  hasHDMI: () -> return 'micro'

  hasWireless: () -> return true
  hasNFC: () -> return true
  hasRemoteControl: () -> return [
    'mobile'
  ]
  hasGPS: () -> return false
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  getPros: () -> return [
    'GREAT low light performance'
    'GREAT autofocus speed'
  ]
  getCons: () -> return []
