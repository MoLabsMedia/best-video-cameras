class Camera
  brand: 'Blackmagic'
  name: 'URSA Mini 4.6K'
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
    'Super-35mm CMOS Sensor'
    '4608 x 2592 Video up to 60p'
    'Compressed Raw Recording'
    'Ready-to-Edit ProRes 444 + 422 Recording'
    'Dual CFast 2.0 Memory Card Slots'
    '12G-SDI Output, Timecode and REF Input'
    '1080p Flip-Out Screen'
    'Touchscreen Interface'
    '2x XLR Audio Inputs with Phantom Power'
    'Magnesium Alloy Body'
  ]
  hasCons: () -> return []
