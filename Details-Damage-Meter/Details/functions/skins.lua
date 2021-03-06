--File Revision: 1
--Last Modification: 05/12/07/2013
-- Change Log:
	-- 05/12/07/2013: This file has been introduced.


local _details = _G._details
local Loc = LibStub("AceLocale-3.0"):GetLocale( "Details" )
local _

	--> install skin function:
	function _details:InstallSkin(skin_name, skin_table)
		if (not skin_name) then
			return false -- sem name
		elseif (_details.skins[skin_name]) then
			return false -- ja existe
		end
		
		if (not skin_table.file) then
			return false -- sem arquivo
		end
		
		skin_table.author = skin_table.author or ""
		skin_table.version = skin_table.version or ""
		skin_table.site = skin_table.site or ""
		skin_table.desc = skin_table.desc or ""
		
		_details.skins[skin_name] = skin_table
		return true
	end
	
	function _details:GetSkin(skin_name)
		return _details.skins[skin_name]
	end
	
	local reset_tooltip = function()
		_details:SetTooltipBackdrop("Blizzard Tooltip", 16, {1, 1, 1, 1})
		_details:DelayOptionsRefresh()
	end
	local set_tooltip_elvui1 = function()
		_details:SetTooltipBackdrop("Blizzard Tooltip", 16, {0, 0, 0, 1})
		_details:DelayOptionsRefresh()
	end
	local set_tooltip_elvui2 = function()
		_details:SetTooltipBackdrop("Blizzard Tooltip", 16, {1, 1, 1, 0})
		_details:DelayOptionsRefresh()
	end
	
	--> install default skins:
	_details:InstallSkin("Default Skin", {
		file =[[Interface\AddOns\Details\images\skins\default_skin]], 
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "This was the first skin made for Details!, inspired in the standart wow intercace", 
		
		can_change_alpha_head = false, 
		icon_anchor_main = {-1, 1}, 
		icon_anchor_plugins = {-9, -7}, 
		icon_plugins_size = {19, 19},
		
		-- the four anchors:
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},

		icon_point_anchor_bottom = {-37, 0},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},
		
		micro_frames = {left = "DETAILS_STATUSBAR_PLUGIN_PATTRIBUTE"},
		
		instance_cprops = {
		
			hide_icon = false,
			menu_anchor = {5, -1, side = 1},
			menu_anchor_down = {5, -1},
			menu2_anchor = {37, 10},
			menu2_anchor_down = {22, -6},
			menu_icons_size = 1,
			plugins_grow_direction = 2,
			bg_alpha = 0.7,
			
		--rows
			row_info = {
				texture = "Details Serenity",
				texture_class_colors = true,
				alpha = 1, 
				texture_background_class_color = false,
				texture_background = "Details Serenity",
				fixed_texture_background_color = {0.619607, 0.619607, 0.619607, 0.116164},
				space = {left = 3, right = -5, between = 2},
				backdrop = {enabled = false, size = 6, color = {0, 0, 0, 0.305214}, texture = "Details BarBorder 2"}
			},
			
		--instance button			
			instancebutton_config = {size = {22, 14}, anchor = {-2, -1}, textcolor = {.8, .6, .0, 0.8}, textsize = 10, textfont = "Friz Quadrata TT", 
			normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], 
			normal_texcoord = {0.0087890625, 0.0322265625, 0.4140625, 0.4296875}, 
			highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]], 
			pushed_texture =[[Interface\AddOns\Details\images\skins\default_skin]], 
			pushed_texcoord = {0.0673828125, 0.0908203125, 0.4140625, 0.4296875}
			},
		--reset button
			resetbutton_config = {size = {22, 14}, anchor = {1, 0}, 
			normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], 
			normal_texcoord = {0.0380859375, 0.0615234375, 0.4140625, 0.4296875},
			highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]], 
			pushed_texture =[[Interface\AddOns\Details\images\skins\default_skin]], 
			pushed_texcoord = {0.0966796875, 0.1201171875, 0.4140625, 0.4296875}
			},
		--close button
			closebutton_config = {size = {32, 32},
			normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]],
			},
		},
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP"], func = reset_tooltip, desc = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
	})

	_details:InstallSkin("Minimalistic", {
		file =[[Interface\AddOns\Details\images\skins\classic_skin_v1]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "Simple skin with soft gray color and half transparent frames.", --\n
		
		micro_frames = {color = {1, 1, 1, 1}, font = "Friz Quadrata TT", size = 10},
		
		can_change_alpha_head = true, 
		icon_anchor_main = {-1, -5}, 
		icon_anchor_plugins = {-7, -13}, 
		icon_plugins_size = {19, 18},
		
		--anchors:
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},

		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},
		
		--overwrites
		instance_cprops = {
			hide_icon = true,
			
			menu_anchor = {-60, 0, side = 2},
			menu_anchor_down = {-55, -1},
			menu2_anchor = {32, 3},
			menu2_anchor_down = {32, 2},
			
			menu_icons_size = 0.8,
			plugins_grow_direction = 1,
			
			instancebutton_config = {size = {20, 16}, anchor = {5, 0}, textcolor = {.8, .6, .0, 0.8}, textsize = 11, textfont = "Friz Quadrata TT", normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			resetbutton_config = {size = {13, 13}, anchor = {2, 0}, normal_texture =[[Interface\Addons\Details\Images\reset_button2]], highlight_texture =[[Interface\Addons\Details\Images\reset_button2]]},
			closebutton_config = {size = {19, 19}, alpha = 0.8, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]],},
			
			show_sidebars = false,
			show_statusbar = false,
			color = {.3, .3, .3, 0.80},
			bg_alpha = 0.2,
			
			row_info = {
				texture = "BantoBar", --"Details Serenity"
				font_face = "Arial Narrow",
				texture_background_class_color = false,
				texture_background = "Details Serenity",
				fixed_texture_background_color = {0, 0, 0, 0.3186},
				icon_file =[[Interface\AddOns\Details\images\classes_small_alpha]],
				start_after_icon = false,
			},
			attribute_text = {enabled = true, side = 1, text_size = 11, anchor = {-18, 4}, text_color = {1, 1, 1, 1}, text_face = "Arial Narrow"},			
		},
		
		callback = function(skin, instance, just_updating)
			--none
		end,
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP"], func = reset_tooltip, desc = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
		
	})
	
	_details:InstallSkin("Minimalistic v2", {
		file =[[Interface\AddOns\Details\images\skins\classic_skin]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "Same as the first Minimalistic, but this one is more darker and less transparent.", 
		
		micro_frames = {color = {1, 1, 1, 1}, font = "Friz Quadrata TT", size = 10},
		
		can_change_alpha_head = true, 
		icon_anchor_main = {-1, -5}, 
		icon_anchor_plugins = {-7, -13}, 
		icon_plugins_size = {19, 18},
		
		--anchors:
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},

		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},
		
		--overwrites
		instance_cprops = {
			hide_icon = true,
			
			menu_anchor = {-60, 1, side = 2},
			menu_anchor_down = {-55, -1},
			menu2_anchor = {32, 4},
			menu2_anchor_down = {32, 2},
			
			menu_icons_size = 0.8,
			plugins_grow_direction = 1,
			
			instancebutton_config = {size = {20, 16}, anchor = {5, 0}, textcolor = {.8, .6, .0, 0.8}, textsize = 10, textfont = "Friz Quadrata TT", normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			resetbutton_config = {size = {13, 13}, anchor = {2, 0}, normal_texture =[[Interface\Addons\Details\Images\reset_button2]], highlight_texture =[[Interface\Addons\Details\Images\reset_button2]]},
			closebutton_config = {size = {19, 19}, alpha = 0.8, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]]},
			
			show_sidebars = false,
			show_statusbar = false,
			color = {0.3058, 0.3058, 0.3058, 0.8838}, --0.9350
			bg_alpha = 0.3181, --0.4399
			
			row_info = {
				texture = "BantoBar", --"Details Serenity"
				font_face = "Arial Narrow",
				texture_background_class_color = false,
				texture_background = "Details Serenity",
				fixed_texture_background_color = {0, 0, 0, 0.3186},
				icon_file =[[Interface\AddOns\Details\images\classes_small_alpha]],
				start_after_icon = false,
			},
			attribute_text = {enabled = true, side = 1, text_size = 11, anchor = {-18, 4}, text_color = {1, 1, 1, 1}, text_face = "Arial Narrow"},			
		},
		
		callback = function(skin, instance, just_updating)
			--none
		end,
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP"], func = reset_tooltip, desc = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
		
	})
	
	local dark_serenity = function()
		local instance = _G.DetailsOptionsWindow.instance
		--> black color
		instance:InstanceColor(0, 0, 0, 1)
		--> flip wallpaper
		local wtexc = instance.wallpaper.texcoord
		wtexc[1], wtexc[2], wtexc[3], wtexc[4] = 0.04800000, 0.29800001, 0.75599998, 0.63099998
		--> reload skin
		instance:ChangeSkin()
	end
	_details:InstallSkin("Serenity", { --
		file =[[Interface\AddOns\Details\images\skins\flat_skin]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "White with a gradient wallpaper, this skin fits on almost all interfaces.\n\nFor ElvUI interfaces, change the window color to black to get an compatible visual.", 
		
		micro_frames = {color = {1, 1, 1, 1}, font = "Friz Quadrata TT", size = 10, left = "DETAILS_STATUSBAR_PLUGIN_PATTRIBUTE"},
		
		can_change_alpha_head = true, 
		
		icon_anchor_main = {-1, -5}, 
		icon_anchor_plugins = {-7, -13}, 
		icon_plugins_size = {19, 18},
		
		-- the four anchors:
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},

		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},
		
		instance_cprops = {

			resetbutton_config = {size = {13, 13}, anchor = {3, 0}, normal_texture =[[Interface\Addons\Details\Images\reset_button2]], highlight_texture =[[Interface\Addons\Details\Images\reset_button2]]},		
			instancebutton_config = {size = {20, 16}, anchor = {5, 0}, textcolor = {.8, .6, .0, 0.8}, textsize = 10, textfont = "Friz Quadrata TT", highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			closebutton_config = {size = {18, 18}, alpha = 1, anchor = {0, 0}, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]]},

			["show_statusbar"] = false,
			["backdrop_texture"] = "Details Ground",
			["color"] = {
				1, --[1]
				1, --[2]
				1, --[3]
				0.9199999570846558, --[4]
			},
			["menu_anchor"] = {
				-60, --[1]
				0, --[2]
				["side"] = 2,
			},
			["menu2_icons"] = {
				true, --[1]
				true, --[2]
				true, --[3]
			},
			["bg_r"] = 1,
			["skin"] = "Flat Color",
			["hide_in_combat_type"] = 1,
			["following"] = {
				["enabled"] = false,
				["bar_color"] = {
					1, --[1]
					1, --[2]
					1, --[3]
				},
				["text_color"] = {
					1, --[1]
					1, --[2]
					1, --[3]
				},
			},
			["switch_healer"] = false,
			["bars_sort_direction"] = 1,
			["switch_damager_in_combat"] = false,
			["desaturated_menu2"] = false,
			["menu2_icons_size"] = 1,
			["row_info"] = {
				["textR_outline"] = false,
				["textL_outline"] = false,
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
				["textL_enable_custom_text"] = false,
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
				["textR_enable_custom_text"] = false,
				["texture_background_class_color"] = false,
				["percent_type"] = 1,
				["textL_show_number"] = true,
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = 0,
				},
				["fixed_texture_background_color"] = {
					0, --[1]
					0, --[2]
					0, --[3]
					0.4416468441486359, --[4]
				},
				["textR_custom_text"] = "{data1}({data2}, {data3}%)",
				["texture"] = "Details Serenity",
				["font_face_file"] = "Interface\\Addons\\Details\\fonts\\Accidental Presidency.ttf",
				["fixed_text_color"] = {
					1, --[1]
					1, --[2]
					1, --[3]
				},
				["backdrop"] = {
					["enabled"] = false,
					["size"] = 1,
					["color"] = {
						1, --[1]
						1, --[2]
						1, --[3]
						1, --[4]
					},
					["texture"] = "Details BarBorder 2",
				},
				["textL_class_colors"] = false,
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["textR_class_colors"] = false,
				["alpha"] = 1,
				["no_icon"] = false,
				["font_size"] = 10,
				["texture_background"] = "Details D'ictum",
				["font_face"] = "Accidental Presidency",
				["texture_class_colors"] = true,
				["height"] = 15,
				["texture_file"] = "Interface\\AddOns\\Details\\images\\bar_serenity",
				["start_after_icon"] = false,
				["fixed_texture_color"] = {
					0, --[1]
					0, --[2]
					0, --[3]
				},
			},
			["instance_button_anchor"] = {
				-27, --[1]
				1, --[2]
			},
			["name"] = "NewFlat1",
			["attribute_text"] = {
				["enabled"] = true,
				["shadow"] = true,
				["side"] = 1,
				["text_size"] = 9,
				["anchor"] = {
					-20, --[1]
					4, --[2]
				},
				["text_color"] = {
					1, --[1]
					1, --[2]
					1, --[3]
					0.7, --[4]
				},
				["text_face"] = "Friz Quadrata TT",
			},

			["menu_anchor_down"] = {
				-55, --[1]
				-1, --[2]
			},
			["hide_in_combat_alpha"] = 0,
			["plugins_grow_direction"] = 1,
			["switch_damager"] = false,
			["show_sidebars"] = false,
			["auto_hide_menu"] = {
				["left"] = false,
				["right"] = false,
			},
			["menu2_anchor_down"] = {
				32, --[1]
				2, --[2]
			},
			["bars_grow_direction"] = 1,
			["hide_icon"] = true,
			["menu_icons_size"] = 0.8500000238418579,
			["menu2_anchor"] = {
				32, --[1]
				2, --[2]
			},
			["toolbar_side"] = 1,
			["bg_g"] = 1,
			["bg_alpha"] = 0.07999999821186066,
			["desaturated_menu"] = false,
			wallpaper = {
				overlay = {1, 1,	1},
				width = 256,
				texcoord = {49/1024, 305/1024, 646/1024, 774/1024},
				enabled = true,
				anchor = "all",
				height = 128,
				alpha = 0.8,
				texture =[[Interface\AddOns\Details\images\skins\elvui]],
			},
			
			["stretch_button_side"] = 1,
			["micro_displays_side"] = 2,
			["bg_b"] = 1,
		},
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP"], func = reset_tooltip, desc = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
			{type = "button", name = "Serenity Dark Side", func = dark_serenity, desc = "Flip the colors showing the dark side of Serenity."},
		}
	})
	
	-- 0.00048828125
	--reset 19 514 83 530
	--close 
	
	_details:InstallSkin("Simply Gray", {
		file =[[Interface\AddOns\Details\images\skins\simplygray_skin]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "Similar to minimalistic skin, but, this one have no transparency and also comes with the statusbar enabled.", 
		
		--general
		can_change_alpha_head = true, 

		--icon anchors
		icon_anchor_main = {-1, -5},
		icon_anchor_plugins = {-7, -13},
		icon_plugins_size = {19, 18},
		
		--micro frames
		micro_frames = {color = {.7, .7, .7, 1}, font = "Arial Narrow", size = 11, left = "DETAILS_STATUSBAR_PLUGIN_PATTRIBUTE"},

		-- the four anchors(for when the toolbar is on the top side)
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},
		
		-- the four anchors(for when the toolbar is on the bottom side)
		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},

		--[[ callback function execute after all changes on the window, first argument is this skin table, second is the instance where the skin was applied --]]
		callback = function(self, instance) end,
		--[[ control_script is a OnUpdate script, it start right after all changes on the window and also after the callback --]]
		--[[ control_script_on_start run before the control_script, use it to reset values if needed --]]
		control_script_on_start = nil,
		control_script = nil,
		
		--instance overwrites
		--[[ when a skin is selected, all customized properties of the window is reseted and then the overwrites are applied]]
		--[[ for the complete cprop list see the file class_instance_include.lua]]
		instance_cprops = {
			row_info = {
				textL_outline = true,
				textR_outline = true,
				texture = "Details Serenity",
				icon_file =[[Interface\AddOns\Details\images\classes_small_alpha]],
				start_after_icon = false,
				texture_background = "Details Serenity",
				texture_background_class_color = false,
				fixed_texture_background_color = {0, 0, 0, .2},
			},

			instancebutton_config = {size = {20, 16}, anchor = {5, 0}, textcolor = {.7, .7, .7, 1}, textsize = 10, textfont = "Friz Quadrata TT", normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			resetbutton_config = {size = {8, 16}, anchor = {1, 0}},
			closebutton_config = {size = {22, 22}, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]]},
			
			menu_anchor = {-19, -1, side = 1},
			menu_anchor_down = {-58, 0},
			menu2_anchor = {32, 5},
			menu2_anchor_down = {32, 2},
			
			hide_icon = true,
			bg_alpha = 0.3,
			wallpaper = {
				enabled = true,
				width = 244.0000362689358,
				height = 96.00000674770899,
				texcoord = {0.001000000014901161, 0.3424842834472656, 1, 0.5739999771118164},
				overlay = {0, 0, 0, 0.498038113117218},
				anchor = "all",
				alpha = 0.4980392451398075,
				texture = "Interface\\Glues\\CREDITS\\Fellwood5",
			},
		},
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP"], func = reset_tooltip, desc = Loc["STRING_OPTIONS_SKIN_RESET_TOOLTIP_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
		
	})
	
	--[[
	
	--> install default skins:
	_details:InstallSkin("Imperial Skin", {
		file = "Interface\\AddOns\\Details\\images\\skins\\imperial_skin", 
		author = "Details!", 
		version = "1.1", 
		site = "unknown", 
		desc = "default skin for Details!", 
		
		can_change_alpha_head = true, 
		icon_anchor_main = {-1, -5}, 
		icon_anchor_plugins = {-7, -13}, 
		icon_plugins_size = {19, 18},
		
		-- the four anchors:
		icon_point_anchor = {-37, 0},
		left_corner_anchor = {-107, 0},
		close_button_anchor = {5, -7},
		right_corner_anchor = {96, 0},

		icon_point_anchor_bottom = {-37, 0},
		left_corner_anchor_bottom = {-107, 0},
		close_button_anchor_bottom = {5, 6},
		right_corner_anchor_bottom = {96, 0},
		
		instance_cprops = {
			menu_anchor = {5, 1},
			hide_icon = true,
		},
		
		--> control scripts for aninations
		--> on skin change we need create the widgets
		control_script_on_start = function(skin, instance)
			
			if (not instance.baseframe.imperial_skin_texture1) then
				local texture1 = instance.baseframe:CreateTexture(nil, "artwork")
				texture1:SetTexture("Interface\\AddOns\\Details\\images\\skins\\imperial_skin")
				texture1:SetTexCoord(0, 0.99951171875, 0.61474609375, 0.63623046875)
				texture1:SetHeight(17)
				instance.baseframe.imperial_skin_texture1 = texture1
				texture1:SetPoint("bottomleft", instance.baseframe.header.ball, "bottomleft", 108, 1)
				texture1:SetPoint("bottomright", instance.baseframe.header.ball_r, "bottomright", -98, 1)
			end
			
			--> custom parameters for animations
			instance.imperial_skin_tick_time = 2
			instance.imperial_skin_tick_elapsed = 0
			instance.imperial_skin_texture_step = 0
			
			if (instance.hide_icon) then
				instance.baseframe.header.ball:SetDrawLayer("background")
			else
				instance.baseframe.header.ball:SetDrawLayer("overlay")
			end
			
		end,
		
		--> do the animation
		control_script = function(frame, elapsed) 
		
			--frame.instance = instance where this skin is applied.
			--frame.skin = this skin table.
		
			frame.instance.imperial_skin_tick_elapsed = frame.instance.imperial_skin_tick_elapsed + elapsed

			if (frame.instance.imperial_skin_tick_elapsed > frame.instance.imperial_skin_tick_time) then
				
				frame.instance.imperial_skin_tick_elapsed = 0
				local step = frame.instance.imperial_skin_texture_step
				step = step + 1

				local firstpoint = step * 0.00048828125
				local secondpoint =(firstpoint + 0.99951171875) - 1
				
				--print(math.floor(step/2))
				
				frame.instance.baseframe.imperial_skin_texture1:SetTexCoord(firstpoint, secondpoint, 0.61474609375, 0.63623046875)
				
				if (step == 2047) then
					step = 0
				end
				
				frame.instance.imperial_skin_texture_step = step
				
				--> this is bad, we need a event handler on options panel for sending appearance changes events
				if (frame.instance.hide_icon) then
					frame.instance.baseframe.header.ball:SetDrawLayer("background")
				else
					frame.instance.baseframe.header.ball:SetDrawLayer("overlay")
				end
				if (frame.instance.toolbar_side == 1) then
					frame.instance.baseframe.imperial_skin_texture1:SetPoint("bottomleft", frame.instance.baseframe.header.ball, "bottomleft", 108, 1)
					frame.instance.baseframe.imperial_skin_texture1:SetPoint("bottomright", frame.instance.baseframe.header.ball_r, "bottomright", -98, 1)
				else
					frame.instance.baseframe.imperial_skin_texture1:SetPoint("bottomleft", frame.instance.baseframe.header.ball, "bottomleft", 108, 106)
					frame.instance.baseframe.imperial_skin_texture1:SetPoint("bottomright", frame.instance.baseframe.header.ball_r, "bottomright", -98, 106)
				end

			end
		
		end,
		
	})
	--]]
	
	--[[
	local f = CreateFrame("frame",nil, UIParent)
	f:SetPoint("center", UIParent, "center")
	f:SetSize(200, 200)
	local t = f:CreateTexture(nil, "overlay")
	t:SetPoint("center", f, "center")
	t:SetSize(200, 200)
	t:SetTexture("Interface\ARCHEOLOGY\ARCH-RACE-ORC")
	
	local t2 = f:CreateTexture(nil, "overlay")
	t2:SetPoint("center", f, "center")
	t2:SetSize(200, 200)
	t2:SetTexture("Interface\ARCHEOLOGY\ARCH-RACE-ORC")
	
	t:SetTexCoord(.4, 1, 0, 1)
	t2:SetTexCoord(0, .4, 0, 1)
	--]]
	
	local align_right_chat = function()
	
		if (not RightChatPanel or not RightChatPanel:IsShown()) then
			_details:Msg("Right Chat Panel isn't shown.")
			return
		end
		
		local wight, height = RightChatPanel:GetSize()
	
		local instance1 = _details.table_instances[1]
		local instance2 = _details.table_instances[2]
		local instance3 = _details.table_instances[3]

		if (not instance2) then
			instance2 = _details:Createinstance()
			instance2:ChangeSkin(instance1.skin)
		elseif (not instance2.active) then
			instance2:EnableInstance()
			instance2:ChangeSkin(instance1.skin)
		end
		
		if (instance3) then
			instance3:ShutDown()
		end
	
		instance1:UngroupInstance()
		instance2:UngroupInstance()
	
		instance1.baseframe:ClearAllPoints()
		instance2.baseframe:ClearAllPoints()

		local statusbar_enabled1 = instance1.show_statusbar
		local statusbar_enabled2 = instance2.show_statusbar
		
		_details.move_window_func(instance1.baseframe, true, instance1)
		_details.move_window_func(instance1.baseframe, false, instance1)
		_details.move_window_func(instance2.baseframe, true, instance2)
		_details.move_window_func(instance2.baseframe, false, instance2)
		
		instance1.baseframe:SetSize(wight/2 - 4, height-20-21-8 -(statusbar_enabled1 and 14 or 0))
		instance2.baseframe:SetSize(wight/2 - 4, height-20-21-8 -(statusbar_enabled2 and 14 or 0))
		
		table.wipe(instance1.snap); table.wipe(instance2.snap)
		instance1.snap[3] = 2; instance2.snap[1] = 1;
		instance1.horizontalSnap = true; instance2.horizontalSnap = true
		
		instance1.baseframe:SetPoint("bottomleft", RightChatDataPanel, "topleft", 1, 1 +(statusbar_enabled1 and 14 or 0))
		instance2.baseframe:SetPoint("bottomright", RightChatToggleButton, "topright", -1, 1 +(statusbar_enabled2 and 14 or 0))
	
		instance1:LockInstance(true)
		instance2:LockInstance(true)
	
		instance1:SaveMainWindowPosition()
		instance2:SaveMainWindowPosition()

	end
	

	
	_details:InstallSkin("ElvUI Frame Style", {
		file =[[Interface\AddOns\Details\images\skins\elvui]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "This skin is based on ElvUI's addons, relying with black and transparent frames.", 
		
		--general
		can_change_alpha_head = true, 

		--icon anchors
		icon_anchor_main = {-4, -5},
		icon_anchor_plugins = {-7, -13},
		icon_plugins_size = {19, 18},
		
		--micro frames
		micro_frames = {color = {0.525490, 0.525490, 0.525490, 1}, font = "Arial Narrow", size = 11},
		
		-- the four anchors(for when the toolbar is on the top side)
		icon_point_anchor = {-35, -0.5},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},
		
		-- the four anchors(for when the toolbar is on the bottom side)
		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},

		--[[ callback function execute after all changes on the window, first argument is this skin table, second is the instance where the skin was applied --]]
		callback = function(self, instance) end,
		--[[ control_script is a OnUpdate script, it start right after all changes on the window and also after the callback --]]
		--[[ control_script_on_start run before the control_script, use it to reset values if needed --]]
		control_script_on_start = nil,
		control_script = nil,
		
		--instance overwrites
		--[[ when a skin is selected, all customized properties of the window is reseted and then the overwrites are applied]]
		--[[ for the complete cprop list see the file class_instance_include.lua]]
		instance_cprops = {

			closebutton_config = {size = {20, 20}, alpha = 0.60, anchor = {1, 2}, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]]},
			instancebutton_config = {size = {20, 16}, anchor = {8, 0}, textcolor = {.7, .7, .7, 1}, textsize = 10, textfont = "Friz Quadrata TT", normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			resetbutton_config = {size = {12, 12}, anchor = {4, 0}, normal_texture =[[Interface\Addons\Details\Images\reset_button2]], highlight_texture =[[Interface\Addons\Details\Images\reset_button2]]},
			
			--resetbutton_config = {size = {8, 16}, anchor = {2, 0}},

			menu_icons_size = 0.80,
			menu2_icons_size = 1.10,
			menu_anchor = {-58, 0, side = 2},
			menu_anchor_down = {-60, 0},
			menu2_anchor = {32, 3},
			menu2_anchor_down = {32, 3},
			plugins_grow_direction = 1,
			
			attribute_text = {enabled = true, anchor = {-20, 4}, text_face = "Friz Quadrata TT", text_size = 10, text_color = {1, 1, 1, .7}, side = 1, shadow = true},
			
			hide_icon = true,
			desaturated_menu = true,
			desaturated_menu2 = true,
			
			bg_alpha = 0.51,
			bg_r = 0.3294,
			bg_g = 0.3294,
			bg_b = 0.3294,
			show_statusbar = false,
			
			row_info = {
					texture = "Details Serenity",
					texture_class_colors = true, 
					alpha = 0.80, 
					texture_background_class_color = false,
					texture_background = "Details D'ictum",
					fixed_texture_color = {0, 0, 0},
					fixed_texture_background_color = {0, 0, 0, 0.471},
					space = {left = 1, right = -2, between = 1},
					backdrop = {enabled = true, size = 4, color = {0, 0, 0, 1}, texture = "Details BarBorder 2"},
					icon_file =[[Interface\AddOns\Details\images\classes_small_alpha]],
					start_after_icon = false,
			},

			wallpaper = {
				overlay = {1, 1,	1},
				width = 256,
				texcoord = {49/1024, 305/1024, 646/1024, 774/1024},
				enabled = true,
				anchor = "all",
				height = 128,
				alpha = 0.8,
				texture =[[Interface\AddOns\Details\images\skins\elvui]],
			}
		},
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON1"], func = align_right_chat, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON1_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON2"], func = set_tooltip_elvui1, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON2_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
	})
	
	_details:InstallSkin("ElvUI Frame Style BW", {
		file =[[Interface\AddOns\Details\images\skins\elvui]],
		author = "Details!", 
		version = "1.0", 
		site = "unknown", 
		desc = "This skin is based on ElvUI's addons, with black and white frames and bars.", 
		
		--general
		can_change_alpha_head = true, 

		--icon anchors
		icon_anchor_main = {-4, -5},
		icon_anchor_plugins = {-7, -13},
		icon_plugins_size = {19, 18},
		
		--micro frames
		micro_frames = {color = {0.525490, 0.525490, 0.525490, 1}, font = "Arial Narrow", size = 11},
		
		-- the four anchors(for when the toolbar is on the top side)
		icon_point_anchor = {-35, -0.5},
		left_corner_anchor = {-107, 0},
		right_corner_anchor = {96, 0},
		
		-- the four anchors(for when the toolbar is on the bottom side)
		icon_point_anchor_bottom = {-37, 12},
		left_corner_anchor_bottom = {-107, 0},
		right_corner_anchor_bottom = {96, 0},

		--[[ callback function execute after all changes on the window, first argument is this skin table, second is the instance where the skin was applied --]]
		callback = function(self, instance) end,
		--[[ control_script is a OnUpdate script, it start right after all changes on the window and also after the callback --]]
		--[[ control_script_on_start run before the control_script, use it to reset values if needed --]]
		control_script_on_start = nil,
		control_script = nil,
		
		--instance overwrites
		--[[ when a skin is selected, all customized properties of the window is reseted and then the overwrites are applied]]
		--[[ for the complete cprop list see the file class_instance_include.lua]]
		instance_cprops = {

			closebutton_config = {size = {20, 20}, alpha = 0.60, anchor = {1, 2}, normal_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Up]]},
			instancebutton_config = {size = {20, 16}, anchor = {8, 0}, textcolor = {.7, .7, .7, 1}, textsize = 10, textfont = "Friz Quadrata TT", normal_texture =[[Interface\AddOns\Details\images\skins\default_skin]], highlight_texture =[[Interface\Buttons\UI-Panel-MinimizeButton-Highlight]]},
			resetbutton_config = {size = {12, 12}, anchor = {4, 0}, normal_texture =[[Interface\Addons\Details\Images\reset_button2]], highlight_texture =[[Interface\Addons\Details\Images\reset_button2]]},
			
			--resetbutton_config = {size = {8, 16}, anchor = {2, 0}},

			menu_icons_size = 0.80,
			menu2_icons_size = 1.10,
			menu_anchor = {-58, 0, side = 2},
			menu_anchor_down = {-60, 0},
			menu2_anchor = {32, 3},
			menu2_anchor_down = {32, 3},
			plugins_grow_direction = 1,
			
			attribute_text = {enabled = true, anchor = {-20, 4}, text_face = "Friz Quadrata TT", text_size = 10, text_color = {1, 1, 1, .7}, side = 1, shadow = true},
			
			hide_icon = true,
			desaturated_menu = true,
			desaturated_menu2 = true,
			
			bg_alpha = 0.51,
			bg_r = 0.3294,
			bg_g = 0.3294,
			bg_b = 0.3294,
			show_statusbar = false,
			
			row_info = {
				["textR_outline"] = false,
				["textL_outline"] = true,
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha_bw",
				["percent_type"] = 1,
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar_serenity",
				["textR_enable_custom_text"] = false,
				["texture_background_class_color"] = false,
				["textL_enable_custom_text"] = false,
				["textL_show_number"] = true,
				["space"] = {
					["right"] = -2,
					["left"] = 1,
					["between"] = 2,
				},
				["fixed_texture_background_color"] = {
					0, --[1]
					0, --[2]
					0, --[3]
					0.20, --[4]
				},
				["textR_custom_text"] = "{data1}({data2}, {data3}%)",
				["start_after_icon"] = true,
				["font_face_file"] = "Fonts\\ARIALN.TTF",
				["fixed_text_color"] = {
					0.9058823529411765, --[1]
					0.9058823529411765, --[2]
					0.9058823529411765, --[3]
					1, --[4]
				},
				["backdrop"] = {
					["enabled"] = true,
					["size"] = 10,
					["color"] = {
						0, --[1]
						0, --[2]
						0, --[3]
						1, --[4]
					},
					["texture"] = "Details BarBorder 2",
				},
				["textL_class_colors"] = false,
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["textR_class_colors"] = false,
				["alpha"] = 0.3999999761581421,
				["no_icon"] = false,
				["font_size"] = 10,
				["texture_background"] = "Details Serenity",
				["font_face"] = "Arial Narrow",
				["texture_class_colors"] = false,
				["height"] = 14,
				["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
				["texture"] = "Details D'ictum",
				["fixed_texture_color"] = {
					0.8627450980392157, --[1]
					0.8627450980392157, --[2]
					0.8627450980392157, --[3]
					1, --[4]
				},
			},

			wallpaper = {
				overlay = {1, 1,	1},
				width = 256,
				texcoord = {49/1024, 305/1024, 646/1024, 774/1024},
				enabled = true,
				anchor = "all",
				height = 128,
				alpha = 0.8,
				texture =[[Interface\AddOns\Details\images\skins\elvui]],
			}
		},
		
		skin_options = {
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON1"], func = align_right_chat, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON1_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON2"], func = set_tooltip_elvui1, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON2_DESC"]},
			{type = "button", name = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3"], func = set_tooltip_elvui2, desc = Loc["STRING_OPTIONS_SKIN_ELVUI_BUTTON3_DESC"]},
		}
	})	
	
	--alpha = 0.4980392451398075,
	