class RscTitles 
{
	class RscUAVDialog
	{
		idd = 1110;
		onLoad = "_this call onRscUAVLoad";
		movingenable = 0;
		enableSimulation = 1;
		enableDisplay = 1;
		duration = 99999999;
		fadein = 0;
		fadeout = 0;

		class controls
		{
			class gui_background : BOX
			{
				idc = -1;
				text = ""; //--- ToDo: Localize;
				x = 0.7075 * safezoneW + safezoneX;
				y = 0.7275 * safezoneH + safezoneY;
				w = 0.285 * safezoneW;
				h = 0.235 * safezoneH;
			};

			class gui_picture : RscPicture
			{
				idc = 0;
				type = 0;
				style = 48;
				text = "flag_tcl.jpg";
				x = 0.72 * safezoneW + safezoneX;
				y = 0.74 * safezoneH + safezoneY;
				w = 0.26 * safezoneW;
				h = 0.21 * safezoneH;
				colorText[] = { 1, 1, 1, 1 };
				colorBackground[] = { 0, 0, 0, 0.3 };
				font = "PuristaLight";
					sizeEx = 0;
					lineSpacing = 0;
					fixedWidth = 0;
					shadow = 0;
			};
		};
	};
};

class DialogUAVMenu
{
	idd = 1337;
	movingEnable = 0;

	class controls
	{
		class gui_uav_listboxUAVItems : RscListBox
		{
			idc = 1500;
			text = ""; //--- ToDo: Localize;
			x = 0.6075 * safezoneW + safezoneX;
			y = 0.74 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.21 * safezoneH;
		};

		class gui_uav_bSet : RscButton
		{
			idc = 1600;
			text = "SET"; //--- ToDo: Localize;
			x = 0.7075 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.023 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\SetActiveUAVCam.sqf""";
		};
		class gui_uav_bZIncrease : RscButton
		{
			idc = 1601;
			text = "Z+"; //--- ToDo: Localize;
			x = 0.7555 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.023 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\ZoomIn.sqf""";
		};
		class gui_uav_bZDecrease : RscButton
		{
			idc = 1602;
			text = "Z-"; //--- ToDo: Localize;
			x = 0.7805 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.023 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\ZoomOut.sqf""";
		};
		class gui_uav_bVisionChange : RscButton
		{
			idc = 1603;
			text = "Vision"; //--- ToDo: Localize;
			x = 0.8285 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.040 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\ChangeVision.sqf""";
		};
		class gui_uav_bOn : RscButton
		{
			idc = 1604;
			text = "ON"; //--- ToDo: Localize;
			x = 0.944 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.023 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\StartLifeFeed.sqf""";
		};
		class gui_uav_bOff : RscButton
		{
			idc = 1605;
			text = "Off"; //--- ToDo: Localize;
			x = 0.9695 * safezoneW + safezoneX;
			y = 0.9625 * safezoneH + safezoneY;
			w = 0.023 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "_nil = [] execVM ""UAV\StopLifeFeed.sqf""";
		};
	};
};