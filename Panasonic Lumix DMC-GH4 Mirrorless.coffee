class Camera
  brand: 'Panasonic'
  name: 'Lumix DMC-GH4'
  year:  '2014-02-07'

  size: [ 133, 93, 84 ] #( unit: mm )
  weight: 560 #( unit: g )

  body: 'SLR-style mirrorless'
  lens: 'Micro Four Thirds'

  processor: 'Venus Engine IX'
  sensor: {
    type: 'CMOS'
    size: '3/4' #( 17.3x13mm )
    crop_factor: 2.0 #( unit: X )
    effective_pixels: 16 #( megapixels )
    image_ratio: [ 
      '1:1'
      '4:3'
      '3:2'
      '16:9'
    ]
    ISO: [ 100..25600 ]
    focus_points: 49
    shutter_speed: [ 1/8000..60 ]
    continuous_shoot: 12 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'AVCHD'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'OLED'
    size: 3 # "
    rotate: '360'
  }
  viewfinder_magnification: 0.67 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
  ]

  battery_life: 500 #( unit: CIPA )
  
  hasRAW: () -> return true
  hasResolutions: ( image_ratio, type ) -> return undefined
  hasFrameRate: ( res ) ->
    switch res
      when '4096x2160'
        return [ 
          '24p'
        ]
      when '3840x2160'
        return [ 
          '30p'
          '25p'
          '24p'
        ]
      when '1920x1080'
        return [ 
          '60p' # 200Mbps
          '50p'
          '30p'
          '25p'
          '24p'
        ]
      when '1280x720'
        return [ 
          '30p'
          '25p'
          '24p'
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
  hasDigitalZoom: () -> return [ 2, 4 ] #( unit: X )
  hasTimelapseRecording: () -> return true
  hasLog: () -> return 'V-Log'  #( dynamic range: 12 stops )
  hasExposureMeterings: () -> [
    'peaking'
    'zebra'
    'histogram'
    'magnification'
  ]
  hasND: () -> return false
  
  hasTouchScreen: () -> return true
  hasMic: () -> return true
  hasHeadphone: () -> return true
  hasDualMemorySlots: () -> return false

  hasUSB: () -> return 2.0
  hasHDMI: () -> return 'micro'

  hasWireless: () -> return ' 802.11b/g/n'
  hasNFC: () -> return true
  hasRemoteControl: () -> return [
    'DMW-RSL1 wired remote'
    'mobile'
  ]
  hasGPS: () -> return false
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  hasPros: () -> return [
    '16.05MP Digital Live CMOS Sensor'
    'DCI 4K 4096x2160 at 24p'
    'UHD 4K 3840x2160 at 30p/24p'
    'Full HD up to 60p'
    '3.0" 1,036k-Dot OLED Touchscreen Monitor'
    '2,359K-Dot OLED Live View Finder'
    'Support for 59.94p, 23.98p, 50p, & 24p'
    '4 8-Bit or 10-Bit HDMI Output'
    'High-Speed 49-Point Autofocus'
    'Magnesium Alloy, Weather-Sealed Body'
  ]
  hasCons: () -> return []
