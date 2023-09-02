--//=============================================================================
--// Skin

local skin = {
  info = {
    name    = "Evolved",
    version = "0.3", -- "0.33" by MaDDoX (HiDPI version)
    author  = "jK",
  }
}

--//=============================================================================
--//

skin.general = {
  focusColor  = {0.94, 0.50, 0.23, 1},
  borderColor = {1.0, 1.0, 1.0, 1.0},

  font = {
	font    = SKINDIR .. "fonts/GeogrotesqueCompMedium.otf", --n019003l.pfb",
    color        = {1,1,1,1},
    outlineColor = {0.05,0.05,0.05,0.9},
    outline = false,
    shadow  = true,
    size    = 16, --13
  },

  --padding         = {5, 5, 5, 5}, --// padding: left, top, right, bottom
}


skin.icons = {
  imageplaceholder = ":cl:placeholder.png",
}

skin.button = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.20, 0.38, 0.46, 0.95},
  focusColor  = {0.20, 0.42, 0.50, 0.9},
  borderColor = {0.20, 0.42, 0.50, 0.15},
  pressBackgroundColor = {0.14, 0.365, 0.42, 0.85},

  DrawControl = DrawButton,
}

skin.button_tiny = {
  TileImageBK = ":cl:tech_button_bright_tiny_bk.png",
  TileImageFG = ":cl:tech_button_bright_tiny_fg.png",
  tiles = {6, 6, 6, 6}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.20, 0.38, 0.46, 0.95},
  focusColor  = {0.20, 0.42, 0.50, 0.9},
  borderColor = {0.20, 0.42, 0.50, 0.15},
  pressBackgroundColor = {0.14, 0.365, 0.42, 0.85},

  DrawControl = DrawButton,
}

skin.overlay_button = {
  TileImageBK = ":cl:tech_button_small_bk.png",
  TileImageFG = ":cl:tech_button_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0, 0, 0, 0.7},
  focusColor  = {0.94, 0.50, 0.23, 0.7},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.overlay_button_tiny = {
  TileImageBK = ":cl:tech_button_tiny_bk.png",
  TileImageFG = ":cl:tech_button_tiny_fg.png",
  tiles = {6, 6, 6, 6}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0, 0, 0, 0.7},
  focusColor  = {0.94, 0.50, 0.23, 0.7},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.button_square = {
  TileImageBK = ":cl:tech_button_action_bk.png",
  TileImageFG = ":cl:tech_button_action_fg.png",
  tiles = {11, 11, 11, 11}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0, 0, 0, 0.7},
  focusColor  = {0.94, 0.50, 0.23, 0.4},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.button_tab = {
  -- yes these are reverted, but also a lie (see images), only one is used
  TileImageFG = ":cl:tech_tabbaritem_fg.png",
  TileImageBK = ":cl:tech_tabbaritem_bk.png",
  tiles = {5, 5, 5, 0}, --// tile widths: left,top,right,bottom
  padding = {1, 1, 1, 2},
  -- since it's color multiplication, it's easier to control white color (1, 1, 1) than black color (0, 0, 0) to get desired results
  backgroundColor = {0, 0, 0, 1.0},
  -- actually kill this anyway
  borderColor     = {0.46, 0.54, 0.68, 0.4},
  focusColor      = {0.46, 0.54, 0.68, 1.0},

  DrawControl = DrawButton,
}

skin.button_large = {
  TileImageBK = ":cl:tech_button_bk.png",
  TileImageFG = ":cl:tech_button_fg.png",
  tiles = {60, 30, 60, 30}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0, 0, 0, 0.7},
  focusColor  = {0.94, 0.50, 0.23, 0.7},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.button_highlight = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.2, 0.25, 0.35, 0.7},
  focusColor  = {0.3, 0.375, 0.525, 0.5},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.button_square = {
  TileImageBK = ":cl:tech_button_action_bk.png",
  TileImageFG = ":cl:tech_button_action_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0, 0, 0, 0.7},
  focusColor  = {0.94, 0.50, 0.23, 0.4},
  borderColor = {1,1,1,0},

  DrawControl = DrawButton,
}

skin.action_button = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.98, 0.48, 0.26, 0.65},
  focusColor  = {0.98, 0.48, 0.26, 0.9},
  borderColor = {0.98, 0.48, 0.26, 0.15},

  DrawControl = DrawButton,
}

skin.option_button = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.21, 0.53, 0.60, 0.65},
  focusColor  = {0.21, 0.53, 0.60, 0.9},
  borderColor = {0.21, 0.53, 0.60, 0.15},

  DrawControl = DrawButton,
}

skin.negative_button = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.85, 0.05, 0.25, 0.65},
  focusColor  = {0.85, 0.05, 0.25, 0.9},
  borderColor = {0.85, 0.05, 0.25, 0.15},

  DrawControl = DrawButton,
}

skin.button_disabled = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.2, 0.2, 0.2, 0.65},
  focusColor  = {0, 0, 0, 0},
  borderColor = {0.2, 0.2, 0.2, 0.15},

  DrawControl = DrawButton,
}

skin.combobox = {
	TileImageBK = ":cl:combobox_ctrl.png",
	TileImageFG = ":cl:combobox_ctrl_fg.png",
	TileImageArrow = ":cl:combobox_ctrl_arrow.png",
	tiles   = {11, 11, 24, 11},
	padding = {5, 5, 12, 5},

	backgroundColor = {1, 1, 1, 0.7},
	borderColor = {1,1,1,0},

	DrawControl = DrawComboBox,
}


skin.combobox_window = {
	clone     = "window";
	TileImage = ":cl:combobox_wnd.png";
	tiles     = {1, 1, 1, 1};
	padding   = {1, 1.5, 1.5, 2};
}


skin.combobox_scrollpanel = {
	clone       = "scrollpanel";
	borderColor = {1, 1, 1, 0};
	padding     = {0, 0, 0, 0};
}


skin.combobox_item = {
	clone       = "button";
	borderColor = {1, 1, 1, 0};
}


skin.checkbox = {
  TileImageFG = ":cl:checkbox_arrow.png",
  TileImageBK = ":cl:checkbox.png",
  TileImageFG_round = ":cl:radiobutton_checked.png",
  TileImageBK_round = ":cl:radiobutton.png",
  tiles       = {1.5,1.5,1.5,1.5},
  boxsize     = 13,

  DrawControl = DrawCheckbox,
}


skin.editbox = {
  hintFont = table.merge({color = {1,1,1,0.7}}, skin.general.font),

  backgroundColor = {0.1, 0.1, 0.1, 0},
  cursorColor     = {1.0, 0.7, 0.1, 0.8},

  focusColor  = {1, 1, 1, 1},
  borderColor = {1, 1, 1, 0.6},

  TileImageBK = ":cl:panel2_bg.png",
  TileImageFG = ":cl:editbox_border.png",
  tiles       = {1, 1, 1, 1},
  cursorFramerate = 1, -- Per second

  DrawControl = DrawEditBox,
}

skin.textbox = {
  hintFont = table.merge({color = {1,1,1,0.7}}, skin.general.font),

  TileImageBK = ":cl:panel2_bg.png",
  bkgndtiles = {14,14,14,14},

  TileImageFG = ":cl:panel2_border.png",
  tiles       = {1, 1, 1, 1},

  borderColor     = {0.0, 0.0, 0.0, 0.0},
  focusColor      = {0.0, 0.0, 0.0, 0.0},

  DrawControl = DrawEditBox,
}

skin.imagelistview = {
  imageFolder      = "folder.png",
  imageFolderUp    = "folder_up.png",

  --DrawControl = DrawBackground,

  colorBK          = {1,1,1,0.3},
  colorBK_selected = {1,0.7,0.1,0.8},

  colorFG          = {0, 0, 0, 0},
  colorFG_selected = {1,1,1,1},

  imageBK  = ":cl:node_selected_bw.png",
  imageFG  = ":cl:node_selected.png",
  tiles    = {4.5, 4.5, 4.5, 4.5},

  DrawItemBackground = DrawItemBkGnd,
}
--[[
skin.imagelistviewitem = {
  imageFG = ":cl:glassFG.png",
  imageBK = ":cl:glassBK.png",
  tiles = {17,15,17,20},

  padding = {12, 12, 12, 12},

  DrawSelectionItemBkGnd = DrawSelectionItemBkGnd,
}
--]]

skin.panel = {
  TileImageBK = ":c:tech_overlaywindow.png",
  TileImageFG = ":cl:empty.png",
  tiles = {1, 1, 1, 1},
  backgroundColor = {1, 1, 1, 0.7},

  DrawControl = DrawPanel,
}

skin.panel_internal = {
  TileImageBK = ":c:tech_overlaywindow.png",
  TileImageFG = ":cl:empty.png",
  tiles = {1, 1, 1, 1},

  backgroundColor = {1, 1, 1, 0.6},

  DrawControl = DrawPanel,
}

skin.panel_button = {
  TileImageBK = ":cl:tech_button_bright_small_bk.png",
  TileImageFG = ":cl:tech_button_bright_small_fg.png",
  tiles = {10, 7, 10, 7}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {0.2, 0.25, 0.35, 0.7},
  focusColor  = {0.3, 0.375, 0.525, 0.5},
  borderColor = {1,1,1,0},

  DrawControl = DrawPanel,
}

skin.panel_button_rounded = {
  TileImageBK = ":cl:tech_button_rounded.png",
  TileImageFG = ":cl:tech_buttonbk_rounded.png",
  tiles = {16, 16, 16, 16}, --// tile widths: left,top,right,bottom
  padding = {5, 5, 5, 5},

  backgroundColor = {1, 1, 1, 1.0},
  focusColor  = {0.3, 0.375, 0.525, 0.5},
  borderColor = {1,1,1,0},

  DrawControl = DrawPanel,
}

skin.panelSmall = {
  TileImageBK = ":cl:tech_button.png",
  TileImageFG = ":cl:empty.png",
  tiles = {1, 1, 1, 1},

  DrawControl = DrawPanel,
}

skin.overlay_panel = {
  TileImageBK = ":c:tech_overlaywindow.png",
  TileImageFG = ":cl:empty.png",
  tiles = {1, 1, 1, 1}, --// tile widths: left,top,right,bottom
  backgroundColor = {1, 1, 1, 0.7},

  DrawControl = DrawPanel,
}

local fancyBase = {
  TileImageFG = ":cl:empty.png",
  tiles = {16, 16, 16, 16}, --// tile widths: left,top,right,bottom
  DrawControl = DrawPanel,
  backgroundColor = {1,1,1,1},
}

local fancySmallBase = {
  TileImageFG = ":cl:empty.png",
  tiles = {8, 8, 8, 8},
  DrawControl = DrawPanel,
  backgroundColor = {1,1,1,1},
}

local fancyPanels = {
	{"0100", {15, 4, 15, 1}, {0, 4, 0, 0}},	-- TileImageBK, tiles, padding
	{"0110", {78, 18, 1, 1}, {0, 10, 0, 0}},
	{"1100", {1, 18, 78, 1}, {0, 10, 0, 0}},
	{"0120", {106, 18, 106, 1}, {6, 16, 0, 0}},
	{"2100", {106, 18, 106, 1}, {0, 16, 6, 0}},
	{"1011", {86, 1, 86, 18}, {8, 0, 8, 4}},
	{"2011", {106, 1, 4, 18}, {4, 0, 8, 4}},
	{"1021", {4, 1, 106, 18}, {8, 0, 4, 4}},
	--
	-- Original: LoDPI, Small margins version:
	--{"0100", {30, 8, 30, 1}, {0, 4, 0, 0}},	-- TileImageBK, tiles, padding
	--{"0110", {156, 36, 1, 1}, {0, 10, 0, 0}},
	--{"1100", {1, 36, 156, 1}, {0, 10, 0, 0}},
	--{"0120", {212, 36, 212, 1}, {6, 16, 0, 0}},
	--{"2100", {212, 36, 212, 1}, {0, 16, 6, 0}},
	--{"1011", {172, 1, 172, 37}, {8, 0, 8, 4}},
	--{"2011", {172, 1, 8, 37}, {4, 0, 8, 4}},
	--{"1021", {8, 1, 172, 37}, {8, 0, 4, 4}},
	--
	-- LoDPI, Large margins version:
	--{"0100", {30, 8, 30, 1}, {10, 14, 10, 10}},	-- TileImageBK, tiles, padding
	--{"0110", {156, 36, 1, 1}, {10, 20, 10, 10}},
	--{"1100", {1, 36, 156, 1}, {10, 20, 10, 10}},
	--{"0120", {212, 36, 212, 1}, {16, 26, 10, 10}},
	--{"2100", {212, 36, 212, 1}, {10, 26, 16, 10}},
	--{"1011", {172, 1, 172, 37}, {18, 10, 18, 14}},
	--{"2011", {172, 1, 8, 37}, {14, 10, 18, 14}},
	--{"1021", {8, 1, 172, 37}, {18, 10, 14, 14}},
}

local fancyPanelsSmall = {
	{"0011_small", {87, 1, 51, 5}, {12, 0, 0, 6}},
	{"1001_small", {51, 1, 87, 5}, {0, 0, 12, 6}},
	{"0110_small", {29, 18, 1, 1}, {12, 4, 0, 0}},
	{"1100_small", {1, 18, 29, 1}, {0, 4, 12, 0}},
	{"0120_small", {40, 18, 40, 1}, {0, 10, 0, 0}},
	{"2100_small", {40, 18, 40, 1}, {0, 10, 0, 0}},
	{"0001_small", {46, 1, 46, 10}, {0, 0, 0, 6}},
}

local fancyPanelsLarge = {
	{"0110_large", {78, 18, 1, 1}, {11, 7, 0, 0}},
	{"1100_large", {1, 18, 78, 1}, {0, 7, 11, 0}},
}

local function LoadPanels(panelList)
	for i = 1, #panelList do
		if type(fancyPanels[i]) == "string" then
			local name = "panel_" .. panelList[i]
			skin[name] = Spring.Utilities.CopyTable(fancyBase)
			skin[name].TileImageBK = ":cl:" .. name .. ".png"
		else
			local name = "panel_" .. panelList[i][1]
			skin[name] = Spring.Utilities.CopyTable(fancyBase)		-- init Values, set on fancyBase
			skin[name].tiles = panelList[i][2]
			skin[name].padding = panelList[i][3]
			skin[name].TileImageBK = ":cl:" .. name .. ".png"
		end
	end
end

LoadPanels(fancyPanels)
LoadPanels(fancyPanelsSmall)
LoadPanels(fancyPanelsLarge)

for i = 1, #fancyPanelsSmall do
	if type(fancyPanelsSmall[i]) == "string" then
		local name = "panel_" .. fancyPanelsSmall[i]
		skin[name] = Spring.Utilities.CopyTable(fancySmallBase)
		skin[name].TileImageBK = ":cl:" .. name .. ".png"
	else
		local name = "panel_" .. fancyPanelsSmall[i][1]
		skin[name] = Spring.Utilities.CopyTable(fancySmallBase)
		skin[name].tiles = fancyPanelsSmall[i][2]
		skin[name].padding = fancyPanelsSmall[i][3]
		skin[name].TileImageBK = ":cl:" .. name .. ".png"
	end
end

skin.progressbar = {
  TileImageFG = ":cl:tech_progressbar_full.png",
  TileImageBK = ":cl:tech_progressbar_empty.png",
  tiles       = {14, 8, 14, 8},
  fillPadding     = {4, 3, 4, 3},

  font = {
    shadow = true,
  },

  DrawControl = DrawProgressbar,
}

skin.multiprogressbar = {
  fillPadding     = {4, 3, 4, 3},
}

skin.scrollpanel = {
  BorderTileImage = ":cl:panel2_border.png",
  bordertiles = {2,2,2,2},

  BackgroundTileImage = ":cl:panel2_bg.png",
  bkgndtiles = {14,14,14,14},

  TileImage = ":cl:tech_scrollbar.png",
  tiles     = {7,7,7,7},
  KnobTileImage = ":cl:tech_scrollbar_knob.png",
  KnobTiles     = {6,8,6,8},

  HTileImage = ":cl:tech_scrollbar.png",
  htiles     = {7,7,7,7},
  HKnobTileImage = ":cl:tech_scrollbar_knob.png",
  HKnobTiles     = {6,8,6,8},

  KnobColorSelected = {1,0.7,0.1,0.8},

  padding = {5, 5, 5, 0},

  scrollbarSize = 11,
  DrawControl = DrawScrollPanel,
  DrawControlPostChildren = DrawScrollPanelBorder,
}

skin.trackbar = {
  TileImage = ":cl:trackbar.png",
  tiles     = {16, 16, 16, 16}, --// tile widths: left,top,right,bottom

  ThumbImage = ":cl:trackbar_thumb.png",
  StepImage  = ":cl:trackbar_step.png",

  hitpadding  = {4, 4, 5, 4},

  DrawControl = DrawTrackbar,
}

skin.treeview = {
  --ImageNode         = ":cl:node.png",
  ImageNodeSelected = ":cl:node_selected.png",
  tiles = {9, 9, 9, 9},

  ImageExpanded  = ":cl:treeview_node_expanded.png",
  ImageCollapsed = ":cl:treeview_node_collapsed.png",
  treeColor = {1,1,1,0.1},

  DrawNode = DrawTreeviewNode,
  DrawNodeTree = DrawTreeviewNodeTree,
}

skin.window = {
  TileImage = ":c:tech_overlaywindow.png",
  tiles = {2, 2, 2, 2}, --// tile widths: left,top,right,bottom
  padding = {13, 13, 13, 13},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},

  color = {1, 1, 1, 0.7},

  boxes = {
    resize = {-21, -21, -10, -10},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window_small = {
  TileImage = ":c:tech_mainwindow_small.png",
  tiles = {76, 40, 76, 40}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window_small_tall = {
  TileImage = ":c:tech_mainwindow_small_tall.png",
  tiles = {40, 40, 40, 40}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window_small_flat = {
  TileImage = ":c:tech_mainwindow_small_flat.png",
  tiles = {76, 30, 76, 30}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window_small_very_flat = {
  TileImage = ":c:tech_mainwindow_small_very_flat.png",
  tiles = {76, 30, 76, 30}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window_tall = {
  TileImage = ":c:tech_mainwindow_tall.png",
  tiles = {76, 40, 76, 40}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.main_window = {
  TileImage = ":c:tech_mainwindow.png",
  tiles = {176, 64, 176, 64}, --// tile widths: left,top,right,bottom
  padding = {10, 6, 10, 6},
  hitpadding = {4, 4, 4, 4},

  captionColor = {1, 1, 1, 0.45},
  backgroundColor = {0.1, 0.1, 0.1, 0.7},

  boxes = {
    resize = {-23, -19, -12, -8},
    drag = {0, 0, "100%", 10},
  },

  NCHitTest = NCHitTestWithPadding,
  NCMouseDown = WindowNCMouseDown,
  NCMouseDownPostChildren = WindowNCMouseDownPostChildren,

  DrawControl = DrawWindow,
  DrawDragGrip = function() end,
  DrawResizeGrip = DrawResizeGrip,
}

skin.line = {
  TileImage = ":cl:tech_line.png",
  tiles = {0, 0, 0, 0},
  TileImageV = ":cl:tech_line_vert.png",
  tilesV = {0, 0, 0, 0},
  DrawControl = DrawLine,
}

skin.tabbar = {
  padding = {3, 1, 1, 0},
}

skin.tabbaritem = {
  -- yes these are reverted, but also a lie (see images), only one is used
  TileImageFG = ":cl:tech_tabbaritem_fg.png",
  TileImageBK = ":cl:tech_tabbaritem_bk.png",
  tiles = {10, 10, 10, 0}, --// tile widths: left,top,right,bottom
  padding = {1, 1, 1, 2},
  -- since it's color multiplication, it's easier to control white color (1, 1, 1) than black color (0, 0, 0) to get desired results
  backgroundColor = {0, 0, 0, 1.0},
  -- actually kill this anyway
  borderColor     = {0, 0, 0, 0},
  focusColor      = {0.46, 0.54, 0.68, 1.0},

  DrawControl = DrawTabBarItem,
}


skin.control = skin.general


--//=============================================================================
--//

return skin
