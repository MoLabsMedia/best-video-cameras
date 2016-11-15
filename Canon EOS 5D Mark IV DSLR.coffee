class Camera
  brand: 'Canon'
  name: '5D Mark IV'
  year:  '2016-08-25'

  size: [ 151, 116, 76 ] #( unit: mm )
  weight: 890 #( unit: g )

  body: 'Mid-size SLR'
  lens: 'Canon EF'

  processor: 'Digic 6+'
  sensor: {
    type: 'CMOS'
    size: 'full-frame' #( 36x24 mm )
    crop_factor: 1 #( unit: X )
    effective_pixels: 30 #( megapixels )
    image_ratio: [ 
      '1:1'
      '4:3'
      '3:2'
      '16:9'
    ]
    ISO: [ 50..102400 ]
    focus_points: 61
    shutter_speed: [ 1/8000..30 ]
    continuous_shoot: 7 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'Motion JPEG'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'TFT LCD'
    size: 3.2 # "
    rotate: false
  }
  viewfinder_magnification: 0.71 #( unit: x )

  storage_type: [
    'SD/SDHC/SDXC' #( UHS-I enabled )
    'CompactFlash'
  ]

  battery_life: 900 #( unit: CIPA )
  
  hasRAW: () -> return true
  hasResolutions: ( image_ratio, type ) -> undefined
  hasFrameRate: ( res ) ->
      when '4096x2160'
        return [
          '29.97p'
          '24p'
          '23.98p'
        ]
      when '1920x1080'
        return [
          '59.94p'
          '29.97p'
          '24p'
          '23.98p'
        ]
      when '1280x720'
        return [
          '119.9p'    
        ]
    switch res
      when '1280x1080'
        return [
          '30p'
        ]
      else
        return false

  hasImageStabilizer: () -> return false
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
  hasTimelapseRecording: () -> return undefined
  hasLog: () -> return undefined
  hasExposureMeterings: () -> undefined
  hasND: () -> return false
  
  hasTouchScreen: () -> return true
  hasMic: () -> return true
  hasHeadphone: () -> return true
  hasDualMemorySlots: () -> return undefined

  hasUSB: () -> return 3.0
  hasHDMI: () -> return true

  hasWireless: () -> return '802.11b/g/n'
  hasNFC: () -> return true
  hasRemoteControl: () -> return [
    'wired'
    'wireless'
    'mobile'
  ]
  hasGPS: () -> return true
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  hasPros: () -> return [
    '30.4MP Full-Frame CMOS Sensor'
    'DIGIC 6+ Image Processor'
    '3.2" 1.62m-Dot Touchscreen LCD Monitor'
    'DCI 4K Video at 30 fps; 8.8MP Still Grab'
    '61-Point High Density Reticular AF'
    'Native ISO 32000, Expanded to ISO 102400'
    'Dual Pixel RAW; AF Area Select Button'
    'Dual Pixel CMOS AF and Movie Servo AF'
    '7 fps Shooting; CF & SD Card Slots'
    'Built-In GPS and Wi-Fi with NFC'
  ]
  hasCons: () -> return []
