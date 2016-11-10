class Camera
  brand: 'Olympus'
  name: 'OM-D E-M1 Mark II'
  year:  '2016-09-16'

  size: [ 134, 91, 67 ] #( unit: mm )
  weight: 574 #( unit: g )

  body: 'SLR-style mirrorless'
  lens: 'Micro Four Thirds'

  processor: 'TruePic VIII'
  sensor: {
    type: 'CMOS'
    size: '3/4'
    effective_pixels: 20 #( megapixels )
    image_ratio: [ 
      '4:3'
    ]
    ISO: [ 64..25600 ]
    focus_points: 121
    shutter_speed: [ 1/32000..60 ]
    continuous_shoot: 60 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'H.264'
  ]

  LCD: {
    type: 'TFT LCD'
    size: 3 # "
    rotate: '#'
  }
  viewfinder_magnification: 0.74 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
  ]

  battery_life: undefined #( unit: CIPA )
  
  hasRAW: () -> return true
  getResolution: ( image_ratio, type ) -> return undefined
  hasFrameRate: ( res ) ->
    switch res
      when '4096x2060'
        return [ 
          '24p' # 237Mbps, MOV, H.264, Linear PCM
        ]
      when '3840x2160'
        return [
          '30p' # 102Mbps, MOV, H.264, Linear PCM
          '25p' # 102Mbps, MOV, H.264, Linear PCM
          '24p' # 102Mbps, MOV, H.264, Linear PCM
        ]
      when '1920x1080' 
        return [
          '60p' # 52Mbps, MOV, H.264, Linear PCM
          '50p' # 52Mbps, MOV, H.264, Linear PCM
          '30p' # 202Mbps, MOV, H.264, Linear PCM
          '25p' # 202Mbps, MOV, H.264, Linear PCM
          '24p' # 202Mbps, MOV, H.264, Linear PCM
        ]
      else
        return false
  hasImageStabilizer: () -> return '5.5 stops of shake reduction' #( Sensor-shift )
  hasAutoFocus: () -> return [
    'Contrast Detect (sensor)'
    'Phase Detect'
    'Multi-area'
    'Center'
    'Selective single-point'
    'Tracking'
    'Single'
    'Continuous'
    'Touch'
    'Face Detection'
    'Live View'
  ]
  hasDigitalZoom: () -> return undefined #( unit: X )
  hasTimelapseRecording: () -> return true
  
  hasTouchScreen: () -> return true
  hasMic: () -> return true
  hasHeadphone: () -> return true
  hasDualMemorySlots: () -> return undefined

  hasUSB: () -> return 3.0 #( 5GBit/sec )
  hasHDMI: () -> return 'micro'

  hasWireless: () -> return true
  hasNFC: () -> return undefined
  hasRemoteControl: () -> return [
    'wired'
    'mobile'
  ]
  hasGPS: () -> return false
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  getPros: () -> return []
  getCons: () -> return []
