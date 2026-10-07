// App.Formulas
// These follow gblLanguage. Do not also Set them in OnStart.

gblIsArabic = gblLanguage = "Arabic";
gblIsRTL = gblIsArabic;

// Stroke colors for outline icons. Pass the result to fxSvg.
fxThemeInk(Kind: Text): Text =
    Switch(
        Kind,
        "Primary",
        If(gblTheme.Mode = "Dark", "rgb(121,176,255)", "rgb(27,86,229)"),
        "Muted",
        If(gblTheme.Mode = "Dark", "rgb(139,148,158)", "rgb(107,114,128)"),
        "Disabled",
        If(gblTheme.Mode = "Dark", "rgb(110,118,129)", "rgb(156,163,175)"),
        If(gblTheme.Mode = "Dark", "rgb(201,209,217)", "rgb(55,65,81)")
    );

// One icon library. Call fxSvg("Home", fxThemeInk("Primary")) from any screen or component.
// Add a name here once. Do not LookUp an icon table inside a gallery.
fxSvg(IconName: Text, Stroke: Text): Text =
    "data:image/svg+xml;utf8," & EncodeUrl(
        "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='" & Coalesce(Stroke, "rgb(55,65,81)") & "' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'>" &
        Switch(
            IconName,
            "Home", "<path d='M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z'/><polyline points='9 22 9 12 15 12 15 22'/>",
            "Users", "<path d='M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2'/><circle cx='9' cy='7' r='4'/><path d='M23 21v-2a4 4 0 0 0-3-3.87'/><path d='M16 3.13a4 4 0 0 1 0 7.75'/>",
            "People", "<path d='M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2'/><circle cx='9' cy='7' r='4'/><path d='M23 21v-2a4 4 0 0 0-3-3.87'/><path d='M16 3.13a4 4 0 0 1 0 7.75'/>",
            "User", "<path d='M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2'/><circle cx='12' cy='7' r='4'/>",
            "UserPlus", "<path d='M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2'/><circle cx='8.5' cy='7' r='4'/><line x1='20' y1='8' x2='20' y2='14'/><line x1='23' y1='11' x2='17' y2='11'/>",
            "Calendar", "<rect x='3' y='4' width='18' height='18' rx='2' ry='2'/><line x1='16' y1='2' x2='16' y2='6'/><line x1='8' y1='2' x2='8' y2='6'/><line x1='3' y1='10' x2='21' y2='10'/>",
            "Clock", "<circle cx='12' cy='12' r='9'/><polyline points='12 7 12 12 15 15'/>",
            "Plane", "<path d='M22 2 11 13'/><path d='M22 2 15 22 11 13 2 9 22 2z'/>",
            "Wallet", "<path d='M20 7V5a2 2 0 0 0-2-2H5a3 3 0 0 0 0 6h16v10a2 2 0 0 1-2 2H5a3 3 0 0 1-3-3V6'/><path d='M16 13h2'/>",
            "Graduation", "<path d='M22 10 12 5 2 10l10 5 10-5z'/><path d='M6 12v5c3 2 9 2 12 0v-5'/>",
            "Performance", "<path d='M3 3v18h18'/><path d='M7 16l4-5 3 3 5-7'/>",
            "Layers", "<polygon points='12 2 2 7 12 12 22 7 12 2'/><polyline points='2 17 12 22 22 17'/><polyline points='2 12 12 17 22 12'/>",
            "Box", "<path d='M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z'/><polyline points='3.27 6.96 12 12.01 20.73 6.96'/><line x1='12' y1='22.08' x2='12' y2='12'/>",
            "Package", "<path d='M16.5 9.4 7.55 4.24'/><path d='M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z'/><polyline points='3.29 7 12 12 20.71 7'/><line x1='12' y1='22' x2='12' y2='12'/>",
            "File", "<path d='M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z'/><polyline points='14 2 14 8 20 8'/>",
            "FileText", "<path d='M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z'/><polyline points='14 2 14 8 20 8'/><line x1='16' y1='13' x2='8' y2='13'/><line x1='16' y1='17' x2='8' y2='17'/>",
            "Grid", "<rect x='3' y='3' width='7' height='7'/><rect x='14' y='3' width='7' height='7'/><rect x='14' y='14' width='7' height='7'/><rect x='3' y='14' width='7' height='7'/>",
            "Table", "<rect x='3' y='3' width='18' height='18' rx='2'/><line x1='3' y1='9' x2='21' y2='9'/><line x1='3' y1='15' x2='21' y2='15'/><line x1='12' y1='3' x2='12' y2='21'/>",
            "Plus", "<line x1='12' y1='5' x2='12' y2='19'/><line x1='5' y1='12' x2='19' y2='12'/>",
            "Dismiss", "<line x1='18' y1='6' x2='6' y2='18'/><line x1='6' y1='6' x2='18' y2='18'/>",
            "X", "<line x1='18' y1='6' x2='6' y2='18'/><line x1='6' y1='6' x2='18' y2='18'/>",
            "Close", "<line x1='18' y1='6' x2='6' y2='18'/><line x1='6' y1='6' x2='18' y2='18'/>",
            "Share", "<circle cx='18' cy='5' r='3'/><circle cx='6' cy='12' r='3'/><circle cx='18' cy='19' r='3'/><line x1='8.59' y1='13.51' x2='15.42' y2='17.49'/><line x1='15.41' y1='6.51' x2='8.59' y2='10.49'/>",
            "Camera", "<path d='M14.5 4h-5L7.5 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3.5L14.5 4z'/><circle cx='12' cy='13' r='3'/>",
            "Upload", "<path d='M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'/><polyline points='17 8 12 3 7 8'/><line x1='12' y1='3' x2='12' y2='15'/>",
            "Download", "<path d='M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'/><polyline points='7 10 12 15 17 10'/><line x1='12' y1='15' x2='12' y2='3'/>",
            "Menu", "<line x1='4' y1='6' x2='20' y2='6'/><line x1='4' y1='12' x2='20' y2='12'/><line x1='4' y1='18' x2='20' y2='18'/>",
            "Send", "<line x1='22' y1='2' x2='11' y2='13'/><polygon points='22 2 15 22 11 13 2 9 22 2'/>",
            "Dashboard", "<rect x='3' y='3' width='7' height='9'/><rect x='14' y='3' width='7' height='5'/><rect x='14' y='12' width='7' height='9'/><rect x='3' y='16' width='7' height='5'/>",
            "Activity", "<polyline points='22 12 18 12 15 21 9 3 6 12 2 12'/>",
            "Chart", "<line x1='18' y1='20' x2='18' y2='10'/><line x1='12' y1='20' x2='12' y2='4'/><line x1='6' y1='20' x2='6' y2='14'/>",
            "BarChart", "<line x1='18' y1='20' x2='18' y2='10'/><line x1='12' y1='20' x2='12' y2='4'/><line x1='6' y1='20' x2='6' y2='14'/>",
            "TrendLines", "<polyline points='3 17 9 11 13 15 21 7'/><polyline points='14 7 21 7 21 14'/>",
            "Flag", "<path d='M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z'/><line x1='4' y1='22' x2='4' y2='15'/>",
            "Target", "<circle cx='12' cy='12' r='9'/><circle cx='12' cy='12' r='5'/><circle cx='12' cy='12' r='1'/>",
            "Folder", "<path d='M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z'/>",
            "ShoppingCart", "<circle cx='9' cy='21' r='1'/><circle cx='20' cy='21' r='1'/><path d='M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6'/>",
            "Cart", "<circle cx='9' cy='21' r='1'/><circle cx='20' cy='21' r='1'/><path d='M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6'/>",
            "Clipboard", "<path d='M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2'/><rect x='8' y='2' width='8' height='4' rx='1' ry='1'/>",
            "ClipboardCheck", "<path d='M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2'/><rect x='8' y='2' width='8' height='4' rx='1'/><polyline points='9 14 11 16 15 12'/>",
            "Receipt", "<path d='M4 2h16v20l-2-1-2 1-2-1-2 1-2-1-2 1-2-1-2 1z'/><line x1='8' y1='7' x2='16' y2='7'/><line x1='8' y1='11' x2='16' y2='11'/><line x1='8' y1='15' x2='12' y2='15'/>",
            "Truck", "<rect x='1' y='3' width='15' height='13'/><polygon points='16 8 20 8 23 11 23 16 16 16'/><circle cx='5.5' cy='18.5' r='2.5'/><circle cx='18.5' cy='18.5' r='2.5'/>",
            "Handshake", "<path d='M8 13l3 3 6-6'/><path d='M4 12l4-4 4 4'/><path d='M20 12l-4-4'/>",
            "List", "<line x1='8' y1='6' x2='21' y2='6'/><line x1='8' y1='12' x2='21' y2='12'/><line x1='8' y1='18' x2='21' y2='18'/><line x1='3' y1='6' x2='3.01' y2='6'/><line x1='3' y1='12' x2='3.01' y2='12'/><line x1='3' y1='18' x2='3.01' y2='18'/>",
            "Quantity", "<line x1='8' y1='6' x2='21' y2='6'/><line x1='8' y1='12' x2='21' y2='12'/><line x1='8' y1='18' x2='21' y2='18'/><line x1='3' y1='6' x2='3.01' y2='6'/><line x1='3' y1='12' x2='3.01' y2='12'/><line x1='3' y1='18' x2='3.01' y2='18'/>",
            "Money", "<rect x='2' y='6' width='20' height='12' rx='2'/><circle cx='12' cy='12' r='3'/>",
            "Dollar", "<rect x='2' y='6' width='20' height='12' rx='2'/><circle cx='12' cy='12' r='3'/>",
            "Calculator", "<rect x='4' y='2' width='16' height='20' rx='2'/><line x1='8' y1='6' x2='16' y2='6'/>",
            "Percent", "<line x1='19' y1='5' x2='5' y2='19'/><circle cx='6.5' cy='6.5' r='2.5'/><circle cx='17.5' cy='17.5' r='2.5'/>",
            "Coins", "<circle cx='8' cy='8' r='6'/><path d='M18.09 10.37A6 6 0 1 1 10.34 18'/><path d='M7 6h1v4'/>",
            "Map", "<polygon points='1 6 8 3 16 6 23 3 23 18 16 21 8 18 1 21 1 6'/><line x1='8' y1='3' x2='8' y2='18'/><line x1='16' y1='6' x2='16' y2='21'/>",
            "Database", "<ellipse cx='12' cy='5' rx='9' ry='3'/><path d='M21 12c0 1.66-4 3-9 3s-9-1.34-9-3'/><path d='M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5'/>",
            "Settings", "<circle cx='12' cy='12' r='3'/><path d='M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1-2.83 2.83l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-4 0v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83-2.83l.06-.06A1.65 1.65 0 0 0 4.68 15a1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1 0-4h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 2.83-2.83l.06.06A1.65 1.65 0 0 0 9 4.68a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 4 0v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 2.83l-.06.06A1.65 1.65 0 0 0 19.4 9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 0 4h-.09a1.65 1.65 0 0 0-1.51 1z'/>",
            "Shield", "<path d='M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z'/>",
            "Mail", "<path d='M4 4h16v16H4z'/><polyline points='22 6 12 13 2 6'/>",
            "Search", "<circle cx='11' cy='11' r='7'/><line x1='21' y1='21' x2='16.65' y2='16.65'/>",
            "Bell", "<path d='M18 8a6 6 0 0 0-12 0c0 7-3 9-3 9h18s-3-2-3-9'/><path d='M13.73 21a2 2 0 0 1-3.46 0'/>",
            "Alert", "<path d='M18 8a6 6 0 0 0-12 0c0 7-3 9-3 9h18s-3-2-3-9'/><path d='M13.73 21a2 2 0 0 1-3.46 0'/>",
            "ChevronLeft", "<polyline points='15 18 9 12 15 6'/>",
            "ChevronRight", "<polyline points='9 18 15 12 9 6'/>",
            "ChevronDown", "<polyline points='6 9 12 15 18 9'/>",
            "Sun", "<circle cx='12' cy='12' r='4'/><line x1='12' y1='2' x2='12' y2='4'/><line x1='12' y1='20' x2='12' y2='22'/><line x1='4.93' y1='4.93' x2='6.34' y2='6.34'/><line x1='17.66' y1='17.66' x2='19.07' y2='19.07'/><line x1='2' y1='12' x2='4' y2='12'/><line x1='20' y1='12' x2='22' y2='12'/><line x1='4.93' y1='19.07' x2='6.34' y2='17.66'/><line x1='17.66' y1='6.34' x2='19.07' y2='4.93'/>",
            "WeatherSunny", "<circle cx='12' cy='12' r='4'/><line x1='12' y1='2' x2='12' y2='4'/><line x1='12' y1='20' x2='12' y2='22'/><line x1='4.93' y1='4.93' x2='6.34' y2='6.34'/><line x1='17.66' y1='17.66' x2='19.07' y2='19.07'/><line x1='2' y1='12' x2='4' y2='12'/><line x1='20' y1='12' x2='22' y2='12'/>",
            "Moon", "<path d='M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z'/>",
            "WeatherMoon", "<path d='M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z'/>",
            "Star", "<polygon points='12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2'/>",
            "Heart", "<path d='M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z'/>",
            "HeartFilled", "<path d='M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z'/>",
            "Info", "<circle cx='12' cy='12' r='9'/><line x1='12' y1='16' x2='12' y2='12'/><line x1='12' y1='8' x2='12.01' y2='8'/>",
            "Check", "<polyline points='20 6 9 17 4 12'/>",
            "Book", "<path d='M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z'/><path d='M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z'/>",
            "Award", "<circle cx='12' cy='8' r='6'/><polyline points='8.21 13.89 7 22 12 19 17 22 15.79 13.88'/>",
            "Warning", "<path d='M10.29 3.86 1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z'/><line x1='12' y1='9' x2='12' y2='13'/><line x1='12' y1='17' x2='12.01' y2='17'/>",
            "Edit", "<path d='M12 20h9'/><path d='M16.5 3.5a2.1 2.1 0 0 1 3 3L7 19l-4 1 1-4 12.5-12.5z'/>",
            "Add", "<line x1='12' y1='5' x2='12' y2='19'/><line x1='5' y1='12' x2='19' y2='12'/>",
            "Refresh", "<polyline points='23 4 23 10 17 10'/><path d='M20.49 15a9 9 0 1 1-2.12-9.36L23 10'/>",
            "Filter", "<polygon points='22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3'/>",
            "Eye", "<path d='M1 12s4-7 11-7 11 7 11 7-4 7-11 7-11-7-11-7z'/><circle cx='12' cy='12' r='3'/>",
            "Print", "<polyline points='6 9 6 2 18 2 18 9'/><path d='M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2'/><rect x='6' y='14' width='12' height='8'/>",
            "Paperclip", "<path d='M21.44 11.05l-9.19 9.19a6 6 0 0 1-8.49-8.49l9.19-9.19a4 4 0 0 1 5.66 5.66l-9.2 9.19a2 2 0 0 1-2.83-2.83l8.49-8.48'/>",
            "Message", "<path d='M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z'/>",
            "<circle cx='12' cy='12' r='8'/>"
        ) &
        "</svg>"
    );

// Map an activity or event type, or an icon name, to an fxSvg name.
fxActivityIcon(Kind: Text): Text =
    Switch(
        Kind,
        "Employee", "Users",
        "People", "Users",
        "Leave", "Calendar",
        "Attendance", "Clock",
        "Document", "FileText",
        "DocumentExpiry", "Warning",
        "Performance", "Performance",
        "Training", "Book",
        "Project", "List",
        "Task", "Check",
        "Procurement", "ShoppingCart",
        "MEAL", "Chart",
        "Finance", "Money",
        "Contract", "FileText",
        "Probation", "Clock",
        "Milestone", "Flag",
        "Meeting", "Users",
        "Payment", "Money",
        "Payment Request", "Money",
        "Payroll Run", "Wallet",
        "Budget", "Wallet",
        "Ledger", "Calculator",
        "Created", "Add",
        "Updated", "Edit",
        "Submitted", "Check",
        "Approved", "Check",
        "Rejected", "Warning",
        "Returned", "Refresh",
        "Cancelled", "Warning",
        "Posted", "Money",
        "Reversed", "Refresh",
        "Delivery", "ShoppingCart",
        "Print", "Print",
        "Paperclip", "Paperclip",
        "Message", "Message",
        "Comment", "Message",
        "Attachment", "Paperclip",
        "Email", "Mail",
        "DataBarVertical", "Chart",
        "Cart", "ShoppingCart",
        Coalesce(Kind, "Info")
    );

// Stroke color for a status chip.
fxStatusInk(Status: Text): Text =
    Switch(
        Status,
        "Success", If(gblTheme.Mode = "Dark", "rgb(74,222,128)", "rgb(22,163,74)"),
        "Warning", If(gblTheme.Mode = "Dark", "rgb(251,191,36)", "rgb(217,119,6)"),
        "Error", If(gblTheme.Mode = "Dark", "rgb(248,113,113)", "rgb(220,38,38)"),
        "Danger", If(gblTheme.Mode = "Dark", "rgb(248,113,113)", "rgb(220,38,38)"),
        "Approval", fxThemeInk("Primary"),
        "Important", If(gblTheme.Mode = "Dark", "rgb(251,191,36)", "rgb(217,119,6)"),
        "Critical", If(gblTheme.Mode = "Dark", "rgb(248,113,113)", "rgb(220,38,38)"),
        "Reminder", If(gblTheme.Mode = "Dark", "rgb(34,211,238)", "rgb(14,116,144)"),
        fxThemeInk("Muted")
    );

// Background for an approval decision chip.
fxDecisionFill(Status: Text): Color =
    Switch(
        Status,
        "Approved",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.SuccessLight, gblTheme.Light.Colors.SuccessLight),
        "Rejected",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.DangerLight, gblTheme.Light.Colors.DangerLight),
        "Pending",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.WarningLight, gblTheme.Light.Colors.WarningLight),
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.SurfaceHover, gblTheme.Light.Colors.SurfaceHover)
    );

// Text color for an approval decision chip.
fxDecisionInkColor(Status: Text): Color =
    Switch(
        Status,
        "Approved",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.Success, gblTheme.Light.Colors.Success),
        "Rejected",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.Danger, gblTheme.Light.Colors.Danger),
        "Pending",
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.Warning, gblTheme.Light.Colors.Warning),
        If(gblTheme.Mode = "Dark", gblTheme.Dark.Colors.TextMuted, gblTheme.Light.Colors.TextMuted)
    );

// Stroke color for how soon an event is.
fxUrgencyInk(Days: Number, Urgent: Number, Soon: Number): Text =
    If(
        Days <= Urgent,
        If(gblTheme.Mode = "Dark", "rgb(248,113,113)", "rgb(220,38,38)"),
        Days <= Soon,
        If(gblTheme.Mode = "Dark", "rgb(251,191,36)", "rgb(217,119,6)"),
        Days <= 30,
        fxThemeInk("Primary"),
        fxThemeInk("Muted")
    );

// A gblTheme color for the current mode. Pass the color name, for example "Surface".
fxThemeColor(Name: Text): Color =
    If(
        gblTheme.Mode = "Dark",
        Switch(
            Name,
            "Primary", gblTheme.Dark.Colors.Primary,
            "PrimaryHover", gblTheme.Dark.Colors.PrimaryHover,
            "PrimaryPressed", gblTheme.Dark.Colors.PrimaryPressed,
            "PrimaryLight", gblTheme.Dark.Colors.PrimaryLight,
            "PrimaryLighter", gblTheme.Dark.Colors.PrimaryLighter,
            "Background", gblTheme.Dark.Colors.Background,
            "Surface", gblTheme.Dark.Colors.Surface,
            "SurfaceHover", gblTheme.Dark.Colors.SurfaceHover,
            "SurfaceSelected", gblTheme.Dark.Colors.SurfaceSelected,
            "TextPrimary", gblTheme.Dark.Colors.TextPrimary,
            "TextSecondary", gblTheme.Dark.Colors.TextSecondary,
            "TextMuted", gblTheme.Dark.Colors.TextMuted,
            "TextDisabled", gblTheme.Dark.Colors.TextDisabled,
            "TextOnPrimary", gblTheme.Dark.Colors.TextOnPrimary,
            "Border", gblTheme.Dark.Colors.Border,
            "BorderLight", gblTheme.Dark.Colors.BorderLight,
            "Success", gblTheme.Dark.Colors.Success,
            "SuccessLight", gblTheme.Dark.Colors.SuccessLight,
            "Warning", gblTheme.Dark.Colors.Warning,
            "WarningLight", gblTheme.Dark.Colors.WarningLight,
            "Danger", gblTheme.Dark.Colors.Danger,
            "DangerLight", gblTheme.Dark.Colors.DangerLight,
            "Info", gblTheme.Dark.Colors.Info,
            "InfoLight", gblTheme.Dark.Colors.InfoLight,
            "White", gblTheme.Dark.Colors.White,
            "Transparent", gblTheme.Dark.Colors.Transparent,
            gblTheme.Dark.Colors.TextPrimary
        ),
        Switch(
            Name,
            "Primary", gblTheme.Light.Colors.Primary,
            "PrimaryHover", gblTheme.Light.Colors.PrimaryHover,
            "PrimaryPressed", gblTheme.Light.Colors.PrimaryPressed,
            "PrimaryLight", gblTheme.Light.Colors.PrimaryLight,
            "PrimaryLighter", gblTheme.Light.Colors.PrimaryLighter,
            "Background", gblTheme.Light.Colors.Background,
            "Surface", gblTheme.Light.Colors.Surface,
            "SurfaceHover", gblTheme.Light.Colors.SurfaceHover,
            "SurfaceSelected", gblTheme.Light.Colors.SurfaceSelected,
            "TextPrimary", gblTheme.Light.Colors.TextPrimary,
            "TextSecondary", gblTheme.Light.Colors.TextSecondary,
            "TextMuted", gblTheme.Light.Colors.TextMuted,
            "TextDisabled", gblTheme.Light.Colors.TextDisabled,
            "TextOnPrimary", gblTheme.Light.Colors.TextOnPrimary,
            "Border", gblTheme.Light.Colors.Border,
            "BorderLight", gblTheme.Light.Colors.BorderLight,
            "Success", gblTheme.Light.Colors.Success,
            "SuccessLight", gblTheme.Light.Colors.SuccessLight,
            "Warning", gblTheme.Light.Colors.Warning,
            "WarningLight", gblTheme.Light.Colors.WarningLight,
            "Danger", gblTheme.Light.Colors.Danger,
            "DangerLight", gblTheme.Light.Colors.DangerLight,
            "Info", gblTheme.Light.Colors.Info,
            "InfoLight", gblTheme.Light.Colors.InfoLight,
            "White", gblTheme.Light.Colors.White,
            "Transparent", gblTheme.Light.Colors.Transparent,
            gblTheme.Light.Colors.TextPrimary
        )
    );

// Chip background from a tone word. The screen passes the word. No color table and no Index.
fxToneFill(Tone: Text): Color =
    Switch(
        Lower(Coalesce(Tone, "")),
        "approved", fxThemeColor("SuccessLight"),
        "completed", fxThemeColor("SuccessLight"),
        "success", fxThemeColor("SuccessLight"),
        "low", fxThemeColor("SuccessLight"),
        "rejected", fxThemeColor("DangerLight"),
        "danger", fxThemeColor("DangerLight"),
        "error", fxThemeColor("DangerLight"),
        "high", fxThemeColor("DangerLight"),
        "pending", fxThemeColor("WarningLight"),
        "warning", fxThemeColor("WarningLight"),
        "on hold", fxThemeColor("WarningLight"),
        "onhold", fxThemeColor("WarningLight"),
        "medium", fxThemeColor("WarningLight"),
        "in progress", fxThemeColor("PrimaryLight"),
        "inprogress", fxThemeColor("PrimaryLight"),
        "in review", fxThemeColor("PrimaryLight"),
        "info", fxThemeColor("InfoLight"),
        "approval", fxThemeColor("PrimaryLight"),
        fxThemeColor("SurfaceHover")
    );

// Chip text from the same tone word.
fxToneInk(Tone: Text): Color =
    Switch(
        Lower(Coalesce(Tone, "")),
        "approved", fxThemeColor("Success"),
        "completed", fxThemeColor("Success"),
        "success", fxThemeColor("Success"),
        "low", fxThemeColor("Success"),
        "rejected", fxThemeColor("Danger"),
        "danger", fxThemeColor("Danger"),
        "error", fxThemeColor("Danger"),
        "high", fxThemeColor("Danger"),
        "pending", fxThemeColor("Warning"),
        "warning", fxThemeColor("Warning"),
        "on hold", fxThemeColor("Warning"),
        "onhold", fxThemeColor("Warning"),
        "medium", fxThemeColor("Warning"),
        "in progress", fxThemeColor("Primary"),
        "inprogress", fxThemeColor("Primary"),
        "in review", fxThemeColor("Primary"),
        "info", fxThemeColor("Info"),
        "approval", fxThemeColor("Primary"),
        fxThemeColor("TextMuted")
    );

// Procurement activity log. These are not finance formulas.

fnProcNotify(
    pUserID: Number, pUserName: Text, pTitle: Text, pMessage: Text,
    pEntity: Text, pItemID: Number, pRecordType: Text
): Void = {
    If(
        And(pUserID > 0, pUserID <> Coalesce(gblCurrentEmployee.ID, gblUser.ID, 0)),
        Patch(
            Notifications,
            Defaults(Notifications),
            {
                Title: pTitle,
                Message: pMessage,
                IsRead: "false",
                Createddate: Now(),
                RecipientID: pUserID,
                Recipient: {Id: pUserID, Value: pUserName},
                RecipientNo: LookUp(Employees, ID = pUserID, EmployeeNumber),
                RelatedEntity: {Value: pEntity},
                RelatedItemID: pItemID,
                RecordType: pRecordType,
                Module: {Value: "Procurement"},
                Status: {Value: "Unread"},
                Duration: 0,
                ReadDate: Blank()
            }
        )
    )
};

// Shared fields for ProcurementActivityLog. Now(), GUID(), and the actor are
// applied inside fnWriteLog so each row gets a fresh correlation id.
nfLogDefaults = {
    Module: {Value: "Procurement"},
    Source: {Value: "Power Apps"},
    IsSystemAction: false,
    IsSensitive: false
};

fnWriteLog(
    pEntityType: Text, pEntityID: Number, pEntityNumber: Text, pAction: Text, pSeverity: Text,
    pProjectID: Number, pProjectCode: Text, pAmount: Number, pCurrency: Text,
    pField: Text, pOld: Text, pNew: Text, pDetails: Text, pReason: Text, pApprovalLevel: Number
): Void = {
    With(
        {
            actor: If(
                Coalesce(gblCurrentEmployee.ID, 0) > 0,
                gblCurrentEmployee,
                LookUp(Employees, Email = User().Email)
            )
        },
        IfError(
            Patch(
                ProcurementActivityLog,
                Defaults(ProcurementActivityLog),
                Patch(
                    nfLogDefaults,
                    {
                        Title: Left(pAction & " - " & pEntityType & " " & Coalesce(pEntityNumber, ""), 255),
                        EntityType: {Value: pEntityType},
                        EntityID: pEntityID,
                        EntityNumber: pEntityNumber,
                        ActionType: {Value: pAction},
                        FieldChanged: pField,
                        OldValue: pOld,
                        NewValue: pNew,
                        Details: pDetails,
                        ReasonComment: pReason,
                        Severity: {Value: pSeverity},
                        ProjectID: If(Coalesce(pProjectID, 0) > 0, pProjectID, Blank()),
                        ProjectCode: pProjectCode,
                        Amount: pAmount,
                        Currency: If(
                            Or(pCurrency = "USD", pCurrency = "YER", pCurrency = "SAR"),
                            {Value: pCurrency},
                            Blank()
                        ),
                        ActionDate: Now(),
                        PeriodKey: Year(Now()) * 100 + Month(Now()),
                        PerformedByID: Coalesce(actor.ID, 0),
                        PerformedByName: Coalesce(actor.FullName, gblUser.FullName, ""),
                        PerformedByEmail: Coalesce(actor.Email, User().Email),
                        PerformedByRole: Coalesce(actor.Role.Value, ""),
                        ApprovalLevel: If(Coalesce(pApprovalLevel, 0) > 0, pApprovalLevel, Blank()),
                        CorrelationID: Text(GUID())
                    }
                )
            ),
            Trace("ProcurementActivityLog write failed: " & FirstError.Message, TraceSeverity.Error),
            IfError(
                Refresh(ProcurementActivityLog),
                Trace("ProcurementActivityLog refresh failed: " & FirstError.Message, TraceSeverity.Warning)
            )
        )
    )
};

// HR activity log. Training screens already call fnLogHR with this argument order.
// Now(), GUID(), and the actor are applied here so each row gets a fresh correlation id.

fnLogHR(
    pEntityType: Text, pEntityID: Number, pEntityNumber: Text, pAction: Text, pSeverity: Text,
    pProjectID: Number, pAmount: Number, pCurrency: Text,
    pField: Text, pOld: Text, pNew: Text, pDetails: Text, pReason: Text, pSensitive: Boolean
): Void = {
    With(
        {
            actor: If(
                Coalesce(gblCurrentEmployee.ID, 0) > 0,
                gblCurrentEmployee,
                LookUp(Employees, Email = User().Email)
            )
        },
        IfError(
            Patch(
                HRActivityLog,
                Defaults(HRActivityLog),
                {
                    Title: Left(pAction & " - " & pEntityType & " " & Coalesce(pEntityNumber, ""), 255),
                    Module: {Value: "HR"},
                    EntityType: {Value: pEntityType},
                    EntityID: pEntityID,
                    EntityNumber: pEntityNumber,
                    ActionType: {Value: pAction},
                    FieldChanged: pField,
                    OldValue: pOld,
                    NewValue: pNew,
                    Details: pDetails,
                    ReasonComment: pReason,
                    Severity: {Value: pSeverity},
                    ProjectID: If(Coalesce(pProjectID, 0) > 0, pProjectID, Blank()),
                    ProjectCode: If(
                        Coalesce(pProjectID, 0) > 0,
                        Coalesce(LookUp(Projects, ID = pProjectID, ProjectCode), ""),
                        ""
                    ),
                    Amount: pAmount,
                    Currency: If(
                        Or(pCurrency = "USD", pCurrency = "YER", pCurrency = "SAR"),
                        {Value: pCurrency},
                        Blank()
                    ),
                    ActionDate: Now(),
                    PeriodKey: Year(Now()) * 100 + Month(Now()),
                    PerformedByID: Coalesce(actor.ID, 0),
                    PerformedByName: Coalesce(actor.FullName, gblUser.FullName, ""),
                    PerformedByEmail: Coalesce(actor.Email, User().Email),
                    PerformedByRole: Coalesce(actor.Role.Value, ""),
                    Source: {Value: "Power Apps"},
                    IsSystemAction: false,
                    ApprovalLevel: Blank(),
                    CorrelationID: Text(GUID()),
                    IsSensitive: Coalesce(pSensitive, false)
                }
            ),
            Trace("HRActivityLog write failed: " & FirstError.Message, TraceSeverity.Error),
            IfError(
                Refresh(HRActivityLog),
                Trace("HRActivityLog refresh failed: " & FirstError.Message, TraceSeverity.Warning)
            )
        )
    )
};

// One ApprovalHistory row for a leave request. Choice labels match the list:
// Action Submitted / Approved / Rejected, ApprovalLevel "Level 1",
// ApprovalType "Manager", Priority "Normal".

fxLeaveApproval(
    pDecision: Text, pAction: Text, pComments: Text, pItemID: Number,
    pRequesterID: Number, pRequesterName: Text,
    pApproverID: Number, pApproverName: Text, pApproverEmail: Text, pApproverNo: Text,
    pLeaveType: Text, pProjectID: Number, pAssigned: DateTime
): Record = {
    Title: Left(Coalesce(pRequesterName, "") & " - " & Coalesce(pLeaveType, "Leave"), 255),
    RequestItemID: Text(pItemID),
    RequestType: {Value: "Leave Request"},
    Decision: {Value: pDecision},
    Comments: pComments,
    DecisionDate: If(pDecision = "Pending", Blank(), Now()),
    Approver: {Id: pApproverID, Value: Coalesce(pApproverName, "")},
    Requester: {Id: pRequesterID, Value: Coalesce(pRequesterName, "")},
    ApprovalLevel: {Value: "Level 1"},
    Sequence: 1,
    AssignedDate: Coalesce(pAssigned, Now()),
    RequestNumber: "LV-" & Text(pItemID, "000"),
    ApprovalInstanceID: "LV-" & Text(pItemID, "000") & "-1",
    Module: {Value: "HR"},
    EntityType: {Value: "LeaveRequest"},
    Action: {Value: pAction},
    ApprovalType: {Value: "Manager"},
    ActionDate: Now(),
    ApproverEmail: pApproverEmail,
    ApproverNo: pApproverNo,
    ProjectID: If(Coalesce(pProjectID, 0) > 0, pProjectID, Blank()),
    ApproverID: If(Coalesce(pApproverID, 0) > 0, pApproverID, Blank()),
    RequesterID: If(Coalesce(pRequesterID, 0) > 0, pRequesterID, Blank()),
    Month: Text(Now(), "yyyy-MM"),
    Priority: {Value: "Normal"},
    RequestorID: If(Coalesce(pRequesterID, 0) > 0, pRequesterID, Blank())
};

// In-app notification for someone other than the person who performed the HR action.

fnHRNotify(
    pUserID: Number, pUserName: Text, pTitle: Text, pMessage: Text,
    pEntity: Text, pItemID: Number, pRecordType: Text
): Void = {
    If(
        And(pUserID > 0, pUserID <> Coalesce(gblCurrentEmployee.ID, gblUser.ID, 0)),
        IfError(
            Patch(
                Notifications,
                Defaults(Notifications),
                {
                    Title: Left(pTitle, 255),
                    Message: Left(pMessage, 500),
                    IsRead: "false",
                    Createddate: Now(),
                    RecipientID: pUserID,
                    Recipient: {Id: pUserID, Value: pUserName},
                    RecipientNo: LookUp(Employees, ID = pUserID, EmployeeNumber),
                    RelatedEntity: {Value: pEntity},
                    RelatedItemID: pItemID,
                    RecordType: pRecordType,
                    Module: {Value: "HR"},
                    Status: {Value: "Unread"},
                    Duration: 0,
                    ReadDate: Blank()
                }
            ),
            Trace("HR notification failed: " & FirstError.Message, TraceSeverity.Warning)
        )
    )
};
