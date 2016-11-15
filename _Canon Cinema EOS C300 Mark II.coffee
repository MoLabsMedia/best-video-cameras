class Camera
  brand: 'Canon'
  name: '#'
  year:  '2016-01-01'

  size: [ 0, 0, 0 ] #( unit: mm )
  weight: 0 #( unit: g )

  body: 'Camcorder'
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
  dynamic_range: 15 #( unit: stops )
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
  
  hasRAW: () -> return true
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
  hasND: () -> return [
    # 16
  ]
  
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
    'GREAT low motion performance' # 60p @4K, 120p @2K, 180p @Full HD, 240p @Full HD ( with external recorder )
    'good low light performance'

    'Super 35mm CMOS Sensor'
    '4K,1920x1080 60/50i, 23.98/25p True 24p'
    'Canon XF AVC H.264 Codec'
    'EF Lens Mount'
    'Dual Pixel CMOS AF Technology'
    'Rotating 4" LCD Monitor'
    '2 x 3G-SDI Output, 2x XLR Inputs'
    '2 x CFast Card Slots'
    'Timecode I/O, Genlock In & Sync Out'
    'Canon Log 3 Gamma'
  ]
  hasCons: () -> return []
