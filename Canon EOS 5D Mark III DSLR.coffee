class Camera
  brand: 'Canon'
  name: '5D Mark III'
  year:  '2012-03-02'

  size: [ 152, 116, 76 ] #( unit: mm )
  weight: 950 #( unit: g )

  body: 'Mid-size SLR'
  lens: 'Canon EF'

  processor: 'Digic 5+'
  sensor: {
    type: 'CMOS'
    size: 'full-frame' #( 36x24 mm )
    crop_factor: 1 #( unit: X )
    effective_pixels: 22 #( megapixels )
    image_ratio: [ 
      '3:2'
    ]
    ISO: [ 50..102400 ]
    focus_points: 61
    shutter_speed: [ 1/8000..30 ]
    continuous_shoot: 6 #( unit: fps )
  }
  codec: [
    'H.264'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'Clear View II TFT LCD'
    size: 3.2 # "
    rotate: false
  }
  viewfinder_magnification: 0.71 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
    'Compact Flash Type I (UDMA compatible)'
  ]

  battery_life: 950 #( unit: CIPA )
  
  hasRAW: () -> return true
  hasResolutions: ( image_ratio, type ) -> undefined
  hasFrameRate: ( res ) ->
    switch res
      when '1920x1080' 
        return [ 
          '29.97p'
          '25p'
          '23.976p'
        ]
      when '1280x720' 
        return [ 
          '59.94p'
          '50p'
        ]
      when '640x480' 
        return [ 
          '30p'
          '25p'
        ]
      else
        return false

  hasImageStabilizer: () -> return false
  hasAutoFocus: () -> return [
    'Contrast Detect (sensor)'
    'Phase Detect'
    'Multi-area'
    'Selective single-point'
    'Single'
    'Continuous'
    'Face Detection'
    'Live View'
  ]
  hasDigitalZoom: () -> return false #( unit: X )
  hasTimelapseRecording: () -> return true
  hasLog: () -> return undefined
  hasExposureMeterings: () -> undefined
  hasND: () -> return false
  
  hasTouchScreen: () -> return false
  hasMic: () -> return undefined
  hasHeadphone: () -> return undefined
  hasDualMemorySlots: () -> return undefined

  hasUSB: () -> return 2.0
  hasHDMI: () -> return true

  hasWireless: () -> return 'with Transmitter'
  hasNFC: () -> return undefined
  hasRemoteControl: () -> return [
    'N3 type contact'
    'Wireless Controller LC-5'
    'Remote Controller RC-6'    
  ]
  hasGPS: () -> return 'with GP-E2 unit'
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return undefined

  hasPros: () -> return [
    '22.3MP Full-Frame CMOS Sensor'
    'DIGIC 5+ Image Processor'
    '3.2" 1.04m-Dot ClearView II LCD Monitor'
    'Full HD 1080p Video Recording at 30 fps'
    '61-Point High Density Reticular AF'
    'Native ISO 25600, Extended to ISO 102400'
    '6 fps Shooting in RAW+JPEG'
    '63-Zone Dual Layer Metering Sensor'
    '14-Bit RAW Files and S-RAW Format'
    'Magnesium Alloy Body, SD/CF Card Slots'
  ]
  hasCons: () -> return []
