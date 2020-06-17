void GUIinit() {
  cp5 = new ControlP5(this);  

  // ======== EDITOR ========

  cp5.addButton("load_image").setCaptionLabel("OPEN  IMAGE").setPosition(10, 10).setSize(100, 25);

  cp5.addButton("save_image").setCaptionLabel("SAVE  IMAGE").setPosition(120, 10).setSize(100, 25);

  sizeSlider = cp5.addSlider("img_width").setCaptionLabel("IMG  SIZE").setPosition(10, 40).setSize(210, 25).setRange(2, 1000).setValue(100).setNumberOfTickMarks(998-1).showTickMarks(false);
  cp5.getController("img_width").getCaptionLabel().setPaddingX(-40);

  sizeSlider = cp5.addSlider("img_rotate").setCaptionLabel("ROTATE").setPosition(10, 70).setSize(210, 25).setRange(0, 360).setValue(0);
  cp5.getController("img_rotate").getCaptionLabel().setPaddingX(-35);

  sliderXY = cp5.addSlider2D("image_pos").setPosition(10, 100).setSize(100, 100).setMinMax(-100, -100, 100, 100).setValue(0, 0);

  sliderBC = cp5.addSlider2D("br_contr").setPosition(120, 100).setSize(100, 100).setMinMax(-128, 0.0, 128, 5.0).setValue(0, 1);  

  cp5.addToggle("grayscale").setPosition(10, 240).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addToggle("invert").setPosition(65, 240).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addToggle("dither").setPosition(120, 240).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addToggle("frame").setPosition(175, 240).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(false);

  cp5.addToggle("threshold").setPosition(10, 290).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addSlider("t_value").setCaptionLabel("VALUE").setPosition(65, 290).setSize(155, 25).setRange(0.0, 1.0).setValue(0.5);
  cp5.getController("t_value").getCaptionLabel().setPaddingX(-30);

  cp5.addToggle("posterize").setPosition(10, 340).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addSlider("p_value").setCaptionLabel("VALUE").setPosition(65, 340).setSize(155, 25).setRange(2, 10).setValue(10).setNumberOfTickMarks(9);
  cp5.getController("p_value").getCaptionLabel().setPaddingX(-30);

  cp5.addToggle("brush").setPosition(10, 390).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(true);

  cp5.addSlider("brush_size").setCaptionLabel("BRUSH  SIZE").setPosition(65, 390).setSize(155, 25).setRange(1, 10).setValue(1).setNumberOfTickMarks(9);
  cp5.getController("brush_size").getCaptionLabel().setPaddingX(-55);

  cp5.addSlider("result_width").setCaptionLabel("RESULT  WIDTH").setPosition(10, 460).setSize(210, 25).setRange(1, maxWidth).setValue(128).setNumberOfTickMarks(maxWidth-1).showTickMarks(false);
  cp5.getController("result_width").getCaptionLabel().setPaddingX(-65);

  cp5.addSlider("result_height").setCaptionLabel("RESULT  HEIGHT").setPosition(10, 490).setSize(210, 25).setRange(1, maxHeight).setValue(64).setNumberOfTickMarks(maxHeight-1).showTickMarks(false);
  cp5.getController("result_height").getCaptionLabel().setPaddingX(-65);

  cp5.addButtonBar("bar").setPosition(10, 520).setSize(155, 25).addItem("mono", "mono").addItem("rgb16", "rgb16").addItem("rgb32", "rgb32").addItem("oled", "oled"); 

  cp5.addToggle("progmem").setPosition(175, 520).setSize(45, 25).setMode(ControlP5.SWITCH).setValue(false);

  cp5.addButton("save_bitmap").setCaptionLabel("SAVE  BITMAP").setPosition(10, 570).setSize(100, 25);
  cp5.addButton("copy_clipboard").setCaptionLabel("COPY  BITMAP").setPosition(120, 570).setSize(100, 25);

  // ======== BOTTOM ========

  cp5.addButton("help_ru").setPosition(10, height-30).setSize(45, 25);  
  cp5.addButton("help_en").setPosition(65, height-30).setSize(45, 25); 
  cp5.addButton("about").setPosition(120, height-30).setSize(100, 25);
}
// 10,65,120,175
