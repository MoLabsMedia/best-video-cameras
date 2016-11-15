class Camera
  brand: 'Canon'
  name: 'C700'
  year:  '2016-01-01'

  size: [ 0, 0, 0 ] #( unit: mm )
  weight: 0 #( unit: g )

  body: 'Camcorder'
  lens: [
    'EF'
    'PL'
  ]

  processor: '#'
  sensor: {
    type: 'CMOS'
    size: 'super 35 mm'
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
  color_depth: 12 #( unit: bit, 4:4:4, Apple ProRes )

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
  hasLog: () -> return [
  hasExposureMeterings: () -> undefined
    # 'log'
    # 'log-2'
    # 'log-3'
  ]
  hasND: () -> return 5 #( unit: stops )
  
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
    'shoots up to 4.5K'

    'Super 35mm CMOS Sensor'
    'EF Cinema Lock Type Mount'
    'Up to 15 Stops of Dynamic Range'
    'Dual Pixel CMOS AF'
    '4K up to 60 fps, 2K/HD up to 240 fps'
    'Proxy Recording to SD Cards'
    'Selectable Gamma and Log Curves'
    'XF-AVC and ProRes Recording to CFast 2.0'
    'Intuitive User Interface'
    'Raw Recording Option'
  ]
  hasCons: () -> return []
