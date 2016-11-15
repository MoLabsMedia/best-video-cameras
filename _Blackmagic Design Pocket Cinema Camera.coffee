class Camera
  brand: 'Blackmagic'
  name: 'Pocket Cinema Camera'
  year:  '2016-01-01'

  size: [ 0, 0, 0 ] #( unit: mm )
  weight: 0 #( unit: g )

  body: '#'
  lens: '#'

  processor: '#'
  sensor: {
    type: '#'
    size: '#'
    crop_factor: undefined #( unit: X )
    effective_pixels: 0 #( megapixels )
    image_ratio: [ 
      '3:2'
    ]
    ISO: [ 0..1 ]
    focus_points: 0
    shutter_speed: [ 0..1 ]
    continuous_shoot: 0 #( unit: fps )
  }
  codec: [
    '#'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'TFT LCD'
    size: undefined # "
    rotate: '#'
  }
  viewfinder_magnification: 0 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
  ]

  battery_life: 0 #( unit: CIPA )
  
  hasRAW: () -> return undefined
  hasResolutions: ( image_ratio, type ) -> undefined
  hasFrameRate: ( res ) ->
    switch res
      when '1280x1080'
        return [
          '30p'
        ]
      else
        return false

  hasImageStabilizer: () -> return undefined
  hasAutoFocus: () -> return [
    'Multi-area'
    'Center'
    'Selective single-point'
    'Single'
  ]
  hasDigitalZoom: () -> return undefined #( unit: X )
  hasTimelapseRecording: () -> return undefined
  hasLog: () -> return false
  hasExposureMeterings: () -> undefined
  hasND: () -> return false
  
  hasTouchScreen: () -> return undefined
  hasMic: () -> return undefined
  hasHeadphone: () -> return undefined
  hasDualMemorySlots: () -> return undefined

  hasUSB: () -> return undefined
  hasHDMI: () -> return undefined

  hasWireless: () -> return undefined
  hasNFC: () -> return undefined
  hasRemoteControl: () -> return undefined
  hasGPS: () -> return undefined
  
  hasWeatherSeal: () -> return undefined
  hasSensors: () -> return undefined

  hasPros: () -> return [
    'Super 16mm Sized Image Sensor'
    'Active Micro Four Thirds Lens Mount'
    '13 Stops of Dynamic Range'
    'Records Full HD 1920x1080 CinemaDNG RAW'
    'Apple ProRes 422 (HQ) at 220 Mbps'
    'Portable Design (5" Long and 12.5 oz)'
    '3.5" LCD Display with 800x480 Resolution'
    'Uses SDXC and SDHC Memory Cards'
    'EN-EL20 Compatible Rechargeable Battery'
    'HDMI, LANC, 3.5mm Audio Input and Output'
  ]
  hasCons: () -> return []
