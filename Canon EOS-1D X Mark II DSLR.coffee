class Camera
  brand: 'Canon'
  name: 'EOS-1D X Mark II'
  year:  '2016-02-02'

  size: [ 158, 168, 83 ] #( unit: mm )
  weight: 1530 #( unit: g )

  body: 'Large SLR'
  lens: 'Canon Ef'

  processor: 'Dual DIGIC 6+'
  sensor: {
    type: 'CMOS'
    size: 'full-frame' #( 36x24 mm )
    crop_factor: 1 #( unit: X )
    effective_pixels: 20 #( megapixels )
    image_ratio: [ 
      '3:2'
    ]
    ISO: [ 50..409600 ]
    focus_points: 61
    shutter_speed: [ 1/8000..30 ]
    continuous_shoot: 16 #( unit: fps )
  }
  codec: [
    'MPEG-4'
    'H.264'
    'Motion JPEG'
  ]
  dynamic_range: undefined #( unit: stops )
  color_depth: 8 #( unit: bit, 4:2:0 )

  LCD: {
    type: 'TFT LCD'
    size: 3.2 # "
    rotate: false
  }
  viewfinder_magnification: 0.76 #( unit: x )

  storage_type: [
    'CompactFlash'
    'CFast 2.0'
  ]

  battery_life: 1210 #( unit: CIPA )
  
  hasRAW: () -> return true
  hasResolutions: ( image_ratio, type ) -> undefined
  hasFrameRate: ( res ) ->
    switch res
      when '4096x2160' 
        return [
        '60p'
        '30p'
        '25p'
        '24p'
        '23.98p'
      ]
      when '1920x1080' 
        return [
        '120p'
        '60p'
        '50p'
        '25p'
        '24p'
        '23.98p'
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
  hasLog: () -> return undefined
  hasExposureMeterings: () -> undefined
  hasND: () -> return false
  
  hasTouchScreen: () -> return false
  hasMic: () -> return true
  hasHeadphone: () -> return true
  hasDualMemorySlots: () -> return true

  hasUSB: () -> return 3.0
  hasHDMI: () -> return true

  hasWireless: () -> return 'with Transmitter'
  hasNFC: () -> return undefined
  hasRemoteControl: () -> return true
  hasGPS: () -> return true
  
  hasWeatherSeal: () -> return true
  hasSensors: () -> return [
    'orientation sensor'
  ]

  hasPros: () -> return [
    '20.2MP Full-Frame CMOS Sensor'
    'Dual DIGIC 6+ Image Processors'
    '3.2" 1.62m-Dot Touchscreen LCD Monitor'
    'DCI 4K Video at 60 fps, 8.8MP Still Grab'
    '61-Point High Density Reticular AF II'
    'Native ISO 51200, Expanded to ISO 409600'
    '14 fps Shooting, 16 fps in Live View'
    'Dual Pixel CMOS AF and Movie Servo AF'
    'Built-In GPS, CFast & CF Card Slots'
    'Includes 64GB CFast 2.0 Card and Reader'
  ]
  hasCons: () -> return []
