class Camera
  brand: 'Sony'
  name: 'Alpha 7R II'
  year:  '2015-06-10'

  size: [ 127, 96, 60 ] #( unit: mm )
  weight: 625 #( unit: g )

  body: 'SLR-style mirrorless'
  lens: 'Sony E'

  processor: 'Bionz X'
  sensor: {
    type: 'BSI-CMOS'
    size: 'full-frame' #( 35.9x24mm )
    crop_factor: undefined #( unit: X )
    effective_pixels: 42 #( megapixels )
    image_ratio: [ 
      '3:2'
      '16:9' 
    ]
    ISO: [ 50..102400 ]
    focus_points: 399
    shutter_speed: [ 1/8000..30 ]
    continuous_shoot: 5 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'AVCHD'
    'XAVC S'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'TFT LCD'
    size: 3 # "
    rotate: 'tilt'
  }
  viewfinder_magnification: 0.78 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC'
    'Memory Stick Duo/Pro Duo/Pro-HG Duo'
  ]

  battery_life: 290 #( unit: CIPA )
  
  hasRAW: () -> return true
  hasResolutions: ( image_ratio, type ) ->
    switch image_ratio
      when '3:2'
        switch type
          when 'full-frame' 
            return [ '5168x3448', '3984x2656' ]
          when 'APS-C' 
            return [ '5168x3448', '3984x2656', '2592x1728' ]
          else return false
      when '16:9'
        switch type
          when '35mm' 
            return [ '7952x4472', '5168x2912', '3984x2240' ]
          when 'APS-C' 
            return [ '5168x2912', '3984x2240', '2592x1456' ]
          else return false
      else return false
  hasFrameRate: ( res ) ->
    switch res
      when '3840x2160' # UHD
        return [
          '30p'
          '25p'
          '24p'
        ]
      when '1920x1080' # Full HD
        return [
          '60p'
          '60i'
          '24p'
        ]
      when '1440x1080'
        return [
          '30p'
        ]
      when '640x480'
        return [
          '30p'
        ]
      else
        return false

  hasImageStabilizer: () -> return '5-axis' #( Sensor-shift ) 4.5 stops per CIPA standard
  hasAutoFocus: () -> return [
    'Contrast Detect (sensor)'
    'Phase Detect'
    'Multi-area'
    'Center'
    'Selective single-point'
    'Single'
    'Continuous'
    'Face Detection'
    'Live View'
  ]
  hasDigitalZoom: () -> return 4 #( unit: X )
  hasTimelapseRecording: () -> return true
  hasLog: () -> return false
  hasExposureMeterings: () -> undefined
  hasND: () -> return false
  
  hasTouchScreen: () -> return false
  hasMic: () -> return true
  hasHeadphone: () -> return true
  hasDualMemorySlots: () -> return false

  hasUSB: () -> return 2.0 # ( 480Mbit/sec )
  hasHDMI: () -> return true

  hasWireless: () -> return '802.11b/g/n'
  hasNFC: () -> return true
  hasRemoteControl: () -> return [
    'wire'
    'mobile'
  ]
  hasGPS: () -> return false
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  hasPros: () -> return [
    'OUTSTANDING low light performance'
    'GREAT autofocus speed'

    '42MP Full-Frame Exmor R BSI CMOS Sensor'
    'BIONZ X Image Processor'
    'Internal UHD 4K Video & S-Log2 Gamma'
    '5-Axis SteadyShot INSIDE Stabilization'
    '399 Phase-Detect AF Points & 5 fps Burst'
    '0.5" 2.36M-Dot XGA OLED Tru-Finder EVF'
    '3.0" 1,228.8k-Dot Tilting LCD Monitor'
    'ISO 102,400 and Silent Shutter Mode'
    'Durable Reduced-Vibration Shutter Design'    
  ]
  hasCons: () -> return [
    'roller effect'
    'OVERHEATING'
  ]
