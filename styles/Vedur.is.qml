<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.38.0-Grenoble" styleCategories="Symbology|Symbology3D|Labeling">
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedOutResamplingMethod="nearestNeighbour" enabled="false" zoomedInResamplingMethod="nearestNeighbour" maxOversampling="2"/>
    </provider>
    <rasterrenderer opacity="1" classificationMin="0" alphaBand="-1" classificationMax="120" nodataColor="" type="singlebandpseudocolor" band="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="DISCRETE" labelPrecision="4" classificationMode="1" clip="0" maximumValue="120" minimumValue="0">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option value="254,252,131,0,rgb:0.99607843137254903,0.9882352941176471,0.51372549019607838,0" name="color1" type="QString"/>
              <Option value="255,0,0,255,rgb:1,0,0,1" name="color2" type="QString"/>
              <Option value="ccw" name="direction" type="QString"/>
              <Option value="0" name="discrete" type="QString"/>
              <Option value="gradient" name="rampType" type="QString"/>
              <Option value="rgb" name="spec" type="QString"/>
              <Option value="0.000833333;254,252,131,0,rgb:0.99607843137254903,0.9882352941176471,0.51372549019607838,0;rgb;ccw:0.0025;254,252,131,204,rgb:0.99607843137254903,0.9882352941176471,0.51372549019607838,0.80000000000000004;rgb;ccw:0.00416667;202,211,0,204,rgb:0.792156862745098,0.82745098039215681,0,0.80000000000000004;rgb;ccw:0.00833333;170,251,120,204,rgb:0.66666666666666663,0.98431372549019602,0.47058823529411764,0.80000000000000004;rgb;ccw:0.025;2,92,61,204,rgb:0.00784313725490196,0.36078431372549019,0.23921568627450981,0.80000000000000004;rgb;ccw:0.0416667;6,251,236,204,rgb:0.02352941176470588,0.98431372549019602,0.92549019607843142,0.80000000000000004;rgb;ccw:0.0833333;51,102,255,204,rgb:0.20000000000000001,0.40000000000000002,1,0.80000000000000004;rgb;ccw:0.125;0,1,123,204,rgb:0,0.00392156862745098,0.4823529411764706,0.80000000000000004;rgb;ccw:0.166667;119,1,97,204,rgb:0.46666666666666667,0.00392156862745098,0.38039215686274508,0.80000000000000004;rgb;ccw:0.25;255,20,147,204,rgb:1,0.07843137254901961,0.57647058823529407,0.80000000000000004;rgb;ccw:0.5;255,0,0,204,rgb:1,0,0,0.80000000000000004;rgb;ccw" name="stops" type="QString"/>
            </Option>
          </colorramp>
          <item value="0.1" label="0.0000 - 0.2000" color="#fefc83" alpha="0"/>
          <item value="0.3" label="0.1000 - 0.3000" color="#fefc83" alpha="204"/>
          <item value="0.5" label="0.3000 - 0.5000" color="#cad300" alpha="204"/>
          <item value="1" label="0.5000 - 1.0000" color="#aafb78" alpha="204"/>
          <item value="3" label="1.0000 - 3.0000" color="#025c3d" alpha="204"/>
          <item value="5" label="3.0000 - 5.0000" color="#06fbec" alpha="204"/>
          <item value="10" label="5.0000 - 10.0000" color="#3366ff" alpha="204"/>
          <item value="15" label="10.0000 - 15.0000" color="#00017b" alpha="204"/>
          <item value="20" label="15.0000 - 20.0000" color="#770161" alpha="204"/>
          <item value="30" label="20.0000 - 30.0000" color="#ff1493" alpha="204"/>
          <item value="60" label="30.0000 - 60.0000" color="#ff0000" alpha="204"/>
          <item value="120" label="60.0000 - 120.0000" color="#ff0000" alpha="255"/>
          <rampLegendSettings maximumLabel="" suffix="" prefix="" minimumLabel="" direction="0" orientation="2" useContinuousLegend="1">
            <numericFormat id="basic">
              <Option type="Map">
                <Option name="decimal_separator" type="invalid"/>
                <Option value="6" name="decimals" type="int"/>
                <Option value="0" name="rounding_type" type="int"/>
                <Option value="false" name="show_plus" type="bool"/>
                <Option value="true" name="show_thousand_separator" type="bool"/>
                <Option value="false" name="show_trailing_zeros" type="bool"/>
                <Option name="thousand_separator" type="invalid"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation grayscaleMode="0" invertColors="0" saturation="0" colorizeRed="255" colorizeBlue="128" colorizeOn="0" colorizeStrength="100" colorizeGreen="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
