class RPP_Dlg_InteractCop
{
    idd = 1800;
    movingEnable = false;
    controlsBackground[] = { Background, Footer, Header };
    objects[] = { };
    controls[] = { Title, BtnTrade, BtnSearch, BtnDisarm, BtnArrest, BtnTicket, BtnClose  };
    OnLoad = " ""dynamicBlur"" ppEffectEnable true; ""dynamicBlur"" ppEffectAdjust [1.6]; ""dynamicBlur"" ppEffectCommit 0;";
    OnUnload = " ""dynamicBlur"" ppEffectEnable false; ";
        

    class Background : RPP_BackgroundFill
    {
        idc = 1200;
        text = "images\center_webbox1.paa";
        x = 0.406857 * safezoneW + safezoneX;
        y = 0.246317 * safezoneH + safezoneY;
        w = 0.144622 * safezoneW;
        h = 0.39766463 * safezoneH;
    };
    
    class Footer : RPP_BackgroundFill
    {
        idc = 1201;
        text = "images\footer_webbox1.paa";
        x = 0.406859 * safezoneW + safezoneX;
        y = 0.64272463 * safezoneH + safezoneY;
        w = 0.144623 * safezoneW;
        h = 0.0160338 * safezoneH;
    };
    
    class Header : RPP_BackgroundFill
    {
        idc = 1202;
        text = "images\header_webbox1.paa";
        x = 0.406857 * safezoneW + safezoneX;
        y = 0.20814 * safezoneH + safezoneY;
        w = 0.144622 * safezoneW;
        h = 0.0382003 * safezoneH;
    };
    
    class Title : RPP_HeaderTitle1
    {
        idc = 1203;
        text = "Unforgiven";
        x = 0.4135 * safezoneW + safezoneX;
        y = 0.220 * safezoneH + safezoneY;
        w = 0.144622 * safezoneW;
        h = 0.0382003 * safezoneH;
    };
    
    class BtnTrade : RPP_Button
    {
        idc = 1600;
        text = "Trade";
        x = 0.432425 * safezoneW + safezoneX;
        y = 0.262325 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
    };
    
    class BtnSearch : RPP_Button
    {
        idc = 1602;
        text = "Search";
        x = 0.431696 * safezoneW + safezoneX;
        y = 0.328825 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
    };
    
    class BtnDisarm : RPP_Button
    {
        idc = 1603;
        text = "Disarm";
        x = 0.432426 * safezoneW + safezoneX;
        y = 0.394093 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
    };
    
    class BtnArrest : RPP_Button
    {
        idc = 1604;
        text = "Arrest";
        x = 0.432426 * safezoneW + safezoneX;
        y = 0.4554093 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
    };
	
	 class BtnTicket : RPP_Button
    {
        idc = 1605;
        text = "Issue Ticket";
        x = 0.432426 * safezoneW + safezoneX;
        y = 0.51754093 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
   
    };

    class BtnClose : RPP_Button
    {
        idc = 1601;
        text = "Close";
        x = 0.432426 * safezoneW + safezoneX;
        y = 0.57967256 * safezoneH + safezoneY;
        w = 0.0891026 * safezoneW;
        h = 0.0431261 * safezoneH;
        action = "closeDialog 0";
    };
    
};
