class Camera
  brand: 'Panasonic'
  name: 'Lumix DMC-GH5'
  year:  '2017-01-01'

  size: [ 0, 0, 0 ] #( unit: mm )
  weight: 0 #( unit: g )

  body: '#'
  lens: '#'

  processor: '#'
  sensor: {
    type: '#'
    size: '#'
    crop_factor: 2.0 #( unit: X )
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
  color_depth: 10 #( unit: bit, 4:2:2 )

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
    'DCI 4K Video Recording at up to 60 fps'
    '4 10-bit Internal Recording'
    '6K PHOTO & 4K PHOTO Modes'
  ]
  hasCons: () -> return []
