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

// #####################################################################
//  PART B - FINANCE MODULE
//  This is the formula set that already works in the app.
//  Do not replace it with a shorter FinTheme projection.
//  Newer ERP formulas (fxToneFill, fxToneInk, Print, Paperclip, Message)
//  stay above this block. They do not redefine these names.
// #####################################################################

// =====================================================================
//  FINANCE MODULE - App.Formulas  (paste into: Tree view > App > Formulas)
//  Power Fx, en-US separators ( , between arguments   ; ends each formula )
//  Requires: Settings > Updates > New analysis engine ON (needed for UDFs, GA since Studio 2508.3)
//  Requires these data sources to be added first: Employees, Permissions, ProjectAccess, Budgets,
//  Projects, ExchangeRates, Notifications, ApprovalHistory, FinanceActivityLog, Comments
//  Theme + language are wired to the ERP: gblTheme.Mode and gblLanguage (gblIsArabic / gblIsRTL).
//  Every line tagged  >>> WIRE <<<  must be pointed at something that already exists in your ERP.
//  Every line tagged  >>> CONFIRM <<<  holds a value your data dictionary did not define.
// =====================================================================


// ---------------------------------------------------------------------
// 0. WIRING POINTS (the only places that touch existing ERP state)
// ---------------------------------------------------------------------
// WIRED to the ERP (batch 5). No second theme or language switch: Finance follows the ERP's own state.
//   gblTheme    = ERP global variable (record, Set by the ERP theme switch). Mode = "Dark" / "Light".
//   gblLanguage = ERP global variable ("Arabic" / English). gblIsArabic and gblIsRTL are the ERP's
//                 named formulas (they must exist in App.Formulas; order does not matter).
themeIsDark = gblTheme.Mode = "Dark";

appLanguage = If(gblIsArabic, "ar", "en");
isRTL = gblIsRTL;
appLocale = If(isRTL, "ar", "en-US");

currentUserEmail = Lower(User().Email);


// ---------------------------------------------------------------------
// 1. THEME TOKENS (spec 4.1, exact hex) + derived accessibility tokens
// ---------------------------------------------------------------------
FinThemeLight = {
    Primary:        ColorValue("#1F4E79"),
    PrimaryDark:    ColorValue("#12304D"),
    Surface:        ColorValue("#FFFFFF"),
    Background:     ColorValue("#F4F6F9"),
    Border:         ColorValue("#D9DEE5"),
    Text:           ColorValue("#1B2430"),
    TextSecondary:  ColorValue("#5C6B7C"),
    Success:        ColorValue("#2E7D32"),
    Warning:        ColorValue("#ED8F03"),
    Danger:         ColorValue("#C62828"),
    Info:           ColorValue("#0277BD"),
    OnPrimary:      ColorValue("#FFFFFF"),
    OnDanger:       ColorValue("#FFFFFF"),
    Neutral:        ColorValue("#5C6B7C"),
    SuccessText:    ColorValue("#1E6B23"),
    WarningText:    ColorValue("#8A5300"),
    DangerText:     ColorValue("#B01F1F"),
    InfoText:       ColorValue("#01579B"),
    NeutralText:    ColorValue("#4F5D6C"),
    SuccessStrong:  ColorValue("#1B5E20"),
    DangerStrong:   ColorValue("#8E0000"),
    NavText:        ColorValue("#FFFFFF"),
    NavTextMuted:   ColorValue("#C5D3E3"),
    NavActiveFill:  RGBA(255, 255, 255, 0.12),
    NavAccent:      ColorValue("#5B9BD5"),
    RowSelected:    ColorValue("#E8EEF5"),
    RowHover:       RGBA(31, 78, 121, 0.06),
    Overlay:        RGBA(0, 0, 0, 0.45),
    Skeleton:       ColorValue("#E6EAF0"),
    Focus:          ColorValue("#1F4E79")
};

FinThemeDark = {
    Primary:        ColorValue("#5B9BD5"),
    PrimaryDark:    ColorValue("#0B1B2B"),
    Surface:        ColorValue("#1E2A38"),
    Background:     ColorValue("#121A24"),
    Border:         ColorValue("#324355"),
    Text:           ColorValue("#EAF0F6"),
    TextSecondary:  ColorValue("#A9B7C6"),
    Success:        ColorValue("#66BB6A"),
    Warning:        ColorValue("#FFB74D"),
    Danger:         ColorValue("#EF5350"),
    Info:           ColorValue("#4FC3F7"),
    OnPrimary:      ColorValue("#0B1B2B"),
    OnDanger:       ColorValue("#121A24"),
    Neutral:        ColorValue("#A9B7C6"),
    SuccessText:    ColorValue("#66BB6A"),
    WarningText:    ColorValue("#FFB74D"),
    DangerText:     ColorValue("#FF8A80"),
    InfoText:       ColorValue("#4FC3F7"),
    NeutralText:    ColorValue("#A9B7C6"),
    SuccessStrong:  ColorValue("#2E7D32"),
    DangerStrong:   ColorValue("#B71C1C"),
    NavText:        ColorValue("#FFFFFF"),
    NavTextMuted:   ColorValue("#A9B7C6"),
    NavActiveFill:  RGBA(255, 255, 255, 0.10),
    NavAccent:      ColorValue("#5B9BD5"),
    RowSelected:    ColorValue("#26384C"),
    RowHover:       RGBA(91, 155, 213, 0.08),
    Overlay:        RGBA(0, 0, 0, 0.60),
    Skeleton:       ColorValue("#2A3949"),
    Focus:          ColorValue("#5B9BD5")
};

// Named "FinTheme" (not "Theme") to avoid any clash with App.Theme used by modern controls.
FinTheme = If(themeIsDark, FinThemeDark, FinThemeLight);


// ---------------------------------------------------------------------
// 2. TYPOGRAPHY, SPACING, ALIGNMENT (spec 4.2)
// ---------------------------------------------------------------------
fontBase = Font.'Segoe UI';
fsPageTitle = 24;
fsSection   = 18;
fsBody      = 14;
fsCaption   = 12;
fsKPI       = 28;

sp1 = 8;  sp2 = 16;  sp3 = 24;  sp4 = 32;
radiusCard  = 8;
borderWidth = 1;

alignStart  = If(isRTL, Align.Right, Align.Left);
alignEnd    = If(isRTL, Align.Left, Align.Right);
alignNumber = alignEnd;

numberFormat = "#,##0.00";
countFormat  = "#,##0";


// ---------------------------------------------------------------------
// 3. BREAKPOINTS (spec 5) - needs Settings > Display > Scale to fit = OFF
// ---------------------------------------------------------------------
bpMobileMax = 640;
bpTabletMax = 1024;
isMobile  = App.Width < bpMobileMax;
isTablet  = App.Width >= bpMobileMax && App.Width <= bpTabletMax;
isDesktop = App.Width > bpTabletMax;
touchMin  = If(isMobile, 44, 36);
gridColumns = If(isMobile, 1, isTablet, 2, 3);
kpiColumns  = If(isMobile, 2, isTablet, 3, 6);

navWidth = If(isMobile, 0, varNavCollapsed, 64, 240);


// ---------------------------------------------------------------------
// 4. BUDGET UTILIZATION THRESHOLDS (spec 4.3 - change here only)
// ---------------------------------------------------------------------
utilWarnAt   = 0.70;
utilDangerAt = 0.90;
utilOverAt   = 1.00;

utilStoredAsPercent = true;
fnUtilFromProject(pStored: Number): Number =
    If(IsBlank(pStored), Blank(), utilStoredAsPercent, pStored / 100, pStored);

fnUtilRatio(pBudgeted: Number, pCommitted: Number, pSpent: Number): Number =
    If(Coalesce(pBudgeted, 0) <= 0, Blank(), (Coalesce(pCommitted, 0) + Coalesce(pSpent, 0)) / pBudgeted);

fnUtilTone(pUtil: Number): Text =
    If(
        IsBlank(pUtil), "neutral",
        pUtil > utilOverAt, "dangerStrong",
        pUtil > utilDangerAt, "danger",
        pUtil >= utilWarnAt, "warning",
        "success"
    );


// ---------------------------------------------------------------------
// 5. STATUS MAPPING (spec 4.3) - ONE table used by cmpStatusBadge, cmpDataTable, timelines
// ---------------------------------------------------------------------
tblStatusMap = Table(
    {Domain: "PaymentRequest", Status: cfgPRStatus.Draft,      Tone: "neutral",       Ico: Icon.Edit},
    {Domain: "PaymentRequest", Status: cfgPRStatus.Pending,    Tone: "warning",       Ico: Icon.Clock},
    {Domain: "PaymentRequest", Status: cfgPRStatus.Approved,   Tone: "info",          Ico: Icon.CheckBadge},
    {Domain: "PaymentRequest", Status: "Paid",                 Tone: "success",       Ico: Icon.Money},
    {Domain: "PaymentRequest", Status: cfgPRStatus.Rejected,   Tone: "danger",        Ico: Icon.CancelBadge},
    {Domain: "PaymentRequest", Status: cfgPRStatus.Cancelled,  Tone: "neutral",       Ico: Icon.Blocked},
    {Domain: "PaymentStatus",  Status: "Paid",               Tone: "success",       Ico: Icon.Money},
    {Domain: "PurchaseOrder",  Status: "Approved",           Tone: "info",          Ico: Icon.CheckBadge},
    {Domain: "PurchaseOrder",  Status: "Partially Received", Tone: "warning",       Ico: Icon.HalfFilledCircle},
    {Domain: "PurchaseOrder",  Status: "Received",           Tone: "success",       Ico: Icon.Check},
    {Domain: "PurchaseOrder",  Status: "Cancelled",          Tone: "neutral",       Ico: Icon.Blocked},
    {Domain: "PayrollRun",     Status: "Draft",              Tone: "neutral",       Ico: Icon.Edit},
    {Domain: "PayrollRun",     Status: "Pending HR",         Tone: "warning",       Ico: Icon.Clock},
    {Domain: "PayrollRun",     Status: "Pending Finance",    Tone: "warning",       Ico: Icon.Clock},
    {Domain: "PayrollRun",     Status: "Approved",           Tone: "info",          Ico: Icon.CheckBadge},
    {Domain: "PayrollRun",     Status: "Paid",               Tone: "success",       Ico: Icon.Money},
    {Domain: "PayrollRun",     Status: "Posted",             Tone: "successStrong", Ico: Icon.Journal},
    {Domain: "DonorFunding",   Status: "Expected",           Tone: "info",          Ico: Icon.CalendarBlank},
    {Domain: "DonorFunding",   Status: "Received",           Tone: "success",       Ico: Icon.Check},
    {Domain: "DonorFunding",   Status: "Delayed",            Tone: "danger",        Ico: Icon.Warning},
    {Domain: "Ledger",         Status: "Posted",             Tone: "success",       Ico: Icon.Check},
    {Domain: "Ledger",         Status: "Reversed",           Tone: "neutral",       Ico: Icon.Undo},
    {Domain: "Utilization",    Status: "success",            Tone: "success",       Ico: Icon.Check},
    {Domain: "Utilization",    Status: "warning",            Tone: "warning",       Ico: Icon.Information},
    {Domain: "Utilization",    Status: "danger",             Tone: "danger",        Ico: Icon.Flag},
    {Domain: "Utilization",    Status: "dangerStrong",       Tone: "dangerStrong",  Ico: Icon.Warning},
    {Domain: "Utilization",    Status: "neutral",            Tone: "neutral",       Ico: Icon.HorizontalLine}
);

fnStatusToneByWord(pStatus: Text): Text =
    With({w: Lower(Coalesce(pStatus, ""))},
        If(
            w = "", "neutral",
            "unpaid" in w || "not paid" in w || "partial" in w, "warning",
            "reject" in w || "declin" in w || "overdue" in w || "delay" in w || "fail" in w, "danger",
            "cancel" in w || "void" in w || "revers" in w || "draft" in w || "closed" in w, "neutral",
            "posted" in w || "paid" in w || "complete" in w || "received" in w, "success",
            "approved" in w, "info",
            "pending" in w || "submit" in w || "review" in w || "waiting" in w || "return" in w || "progress" in w, "warning",
            "neutral"
        )
    );

fnStatusTone(pDomain: Text, pStatus: Text): Text =
    Coalesce(LookUp(tblStatusMap, Domain = pDomain && Status = pStatus, Tone), fnStatusToneByWord(pStatus));

tblToneIcon = Table(
    {Tone: "neutral",       Ico: Icon.HorizontalLine},
    {Tone: "info",          Ico: Icon.Information},
    {Tone: "warning",       Ico: Icon.Clock},
    {Tone: "success",       Ico: Icon.Check},
    {Tone: "danger",        Ico: Icon.CancelBadge},
    {Tone: "successStrong", Ico: Icon.CheckBadge},
    {Tone: "dangerStrong",  Ico: Icon.Warning}
);

fnToneAccent(pTone: Text): Color =
    Switch(pTone,
        "success", FinTheme.Success,
        "warning", FinTheme.Warning,
        "danger", FinTheme.Danger,
        "info", FinTheme.Info,
        "successStrong", FinTheme.SuccessStrong,
        "dangerStrong", FinTheme.DangerStrong,
        FinTheme.Neutral);

fnToneFg(pTone: Text): Color =
    Switch(pTone,
        "success", FinTheme.SuccessText,
        "warning", FinTheme.WarningText,
        "danger", FinTheme.DangerText,
        "info", FinTheme.InfoText,
        "successStrong", Color.White,
        "dangerStrong", Color.White,
        FinTheme.NeutralText);

fnToneBg(pTone: Text): Color =
    If(
        pTone = "successStrong", FinTheme.SuccessStrong,
        pTone = "dangerStrong", FinTheme.DangerStrong,
        ColorFade(fnToneAccent(pTone), If(themeIsDark, -0.72, 0.88))
    );

fnToneText(pTone: Text): Color =
    Switch(pTone,
        "success", FinTheme.SuccessText,
        "warning", FinTheme.WarningText,
        "danger", FinTheme.DangerText,
        "dangerStrong", FinTheme.DangerText,
        "successStrong", FinTheme.SuccessText,
        "info", FinTheme.InfoText,
        FinTheme.TextSecondary);


// ---------------------------------------------------------------------
// 6. NUMBER / MONEY / PERIOD HELPERS
// ---------------------------------------------------------------------
fnMoney(pAmount: Number, pCurrency: Text): Text =
    If(IsBlank(pAmount), "-",
        If(pAmount < 0, "-", "") & Text(Abs(pAmount), numberFormat, "en-US") & " " & Coalesce(pCurrency, "USD"));

fnAmountColor(pAmount: Number): Color = If(Coalesce(pAmount, 0) < 0, FinTheme.DangerText, FinTheme.Text);

fnPct(pRatio: Number): Text = If(IsBlank(pRatio), "-", Text(pRatio * 100, "#,##0.0", "en-US") & "%");

fnCount(pValue: Number): Text = If(IsBlank(pValue), "-", Text(pValue, countFormat, "en-US"));

fnPeriodKey(pDate: Date): Number = Year(pDate) * 100 + Month(pDate);
currentPeriodKey = fnPeriodKey(Today());
fnPeriodDate(pKey: Number): Date = Date(RoundDown(pKey / 100, 0), Mod(pKey, 100), 1);
fnPeriodLabel(pKey: Number): Text = If(IsBlank(pKey), "-", Text(fnPeriodDate(pKey), "mmm yyyy", appLocale));

tblPeriods = ForAll(
    Sequence(24, 0),
    With({_k: fnPeriodKey(EDate(Date(Year(Today()), Month(Today()), 1), -Value))},
        {Key: _k, Value: fnPeriodLabel(_k)})
);

fnRateToUSD(pCurrency: Text): Number =
    If(pCurrency = "USD", 1,
        First(Sort(Filter(colFxRates, Currency = pCurrency), PeriodKey, SortOrder.Descending)).RateToUSD);

fnToUSD(pAmount: Number, pCurrency: Text): Number =
    If(IsBlank(pAmount), Blank(), pAmount * fnRateToUSD(pCurrency));


// ---------------------------------------------------------------------
// 7. TRANSLATIONS
// ---------------------------------------------------------------------
fnT(pKey: Text, pFallback: Text): Text =
    Coalesce(LookUp(colFinT, TKey = pKey, If(isRTL, TAr, TEn)), pFallback);


// ---------------------------------------------------------------------
// 8. ROLES (Permissions filtered by RoleID; colFinPerm built in OnStart)
// ---------------------------------------------------------------------
hasFinanceAccess   = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanRead));
canCreate          = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanCreate));
canEdit            = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanEdit));
canDelete          = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanDelete));
canSubmit          = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanSubmit));
canApprove         = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanApprove));
canExport          = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanExport));
canViewAllProjects = !IsBlank(LookUp(colFinPerm, Module = "Finance" && CanViewAll)) || varHasAllProjectsAccess;
canViewPayroll     = !IsBlank(LookUp(colFinPerm, Module = "Payroll" && CanRead));
canEditPayroll     = !IsBlank(LookUp(colFinPerm, Module = "Payroll" && CanEdit));
canApprovePayroll  = !IsBlank(LookUp(colFinPerm, Module = "Payroll" && CanApprove));
isReadOnlyUser     = hasFinanceAccess && !canCreate && !canEdit && !canSubmit && !canApprove;

roleFinanceManager  = "Finance Manager";
roleFinanceOfficer  = "Finance Officer";
roleProjectManager  = "Project Manager";
roleHRManager       = "HR Manager";
roleDirector        = "Director";
roleProgramDirector = "Program Director";
roleAuditor         = "Auditor";

myRoleTitle         = varMe.Role.Value;
isFinanceManager    = myRoleTitle = roleFinanceManager;
isFinanceOfficer    = myRoleTitle = roleFinanceOfficer;
isProjectManager    = myRoleTitle = roleProjectManager;
isHRManager         = myRoleTitle = roleHRManager;
isDirector          = myRoleTitle = roleDirector || myRoleTitle = roleProgramDirector;
isAuditor           = myRoleTitle = roleAuditor;

canManageExchangeRates = isFinanceManager && canEdit;
canRequestReversal     = isFinanceManager && canEdit;
canEditBudgets         = isFinanceManager && canEdit;
canMarkPaid            = isFinanceManager && canApprove;
canSeeApprovalsInbox   = varMeID > 0 && (cfgApprInboxOpenToAll || canApprove || canApprovePayroll);


// ---------------------------------------------------------------------
// 9. LOOKUP CONSTANTS for text-typed columns
// ---------------------------------------------------------------------
notifUnreadValue    = "No";
apprPendingDecision = "Pending";


// ---------------------------------------------------------------------
// 10. NAVIGATION MAP (spec 5)
// ---------------------------------------------------------------------
tblNavItems = Table(
    {Key: "dashboard",   Order: 1,  MobileTab: true,  Ico: Icon.Home,             Label: fnT("nav.dashboard",   "Dashboard")},
    {Key: "projects",    Order: 2,  MobileTab: true,  Ico: Icon.Folder,           Label: fnT("nav.projects",    "Projects Finance")},
    {Key: "budgets",     Order: 3,  MobileTab: false, Ico: Icon.Calculator,       Label: fnT("nav.budgets",     "Budgets")},
    {Key: "payments",    Order: 4,  MobileTab: true,  Ico: Icon.Money,            Label: fnT("nav.payments",    "Payments")},
    {Key: "commitments", Order: 5,  MobileTab: false, Ico: Icon.ShoppingCart,     Label: fnT("nav.commitments", "Procurement Commitments")},
    {Key: "payroll",     Order: 6,  MobileTab: false, Ico: Icon.People,           Label: fnT("nav.payroll",     "Payroll")},
    {Key: "funding",     Order: 7,  MobileTab: false, Ico: Icon.Currency,         Label: fnT("nav.funding",     "Donor Funding")},
    {Key: "ledger",      Order: 8,  MobileTab: false, Ico: Icon.Journal,          Label: fnT("nav.ledger",      "Ledger")},
    {Key: "approvals",   Order: 9,  MobileTab: true,  Ico: Icon.CheckBadge,       Label: fnT("nav.approvals",   "Approvals")},
    {Key: "reports",     Order: 10, MobileTab: false, Ico: Icon.TrendingUpwards,  Label: fnT("nav.reports",     "Reports")},
    {Key: "fxrates",     Order: 11, MobileTab: false, Ico: Icon.Sync,             Label: fnT("nav.fxrates",     "Exchange Rates")}
);

nfNavItems = Filter(
    tblNavItems,
    Switch(Key,
        "payroll",   canAccessPayroll,
        "fxrates",   canManageExchangeRates || isFinanceOfficer,
        "approvals", canSeeApprovalsInbox,
        hasFinanceAccess)
);
nfBottomTabs = Filter(nfNavItems, MobileTab);
nfMoreItems  = Filter(nfNavItems, !MobileTab);

unreadCount          = CountRows(colFinNotif);
pendingApprovalCount = CountRows(colMyPendingApprovals);


// ---------------------------------------------------------------------
// 11. BEHAVIOUR UDFs (side effects allowed inside { })
// ---------------------------------------------------------------------
fnRefreshHeaderData(): Void = {
    ClearCollect(colFinNotif,
        FirstN(Sort(Filter(Notifications,
            RecipientID = varMeID,
            Module.Value = "Finance",
            IsRead = notifUnreadValue), ID, SortOrder.Descending), 50));
    fnRefreshApprovalBadge()
};

fnLogActivityFull(
    pEntityType: Text, pEntityID: Number, pEntityNumber: Text, pAction: Text, pSeverity: Text,
    pProjectID: Number, pProjectCode: Text, pField: Text, pOld: Text, pNew: Text,
    pDetails: Text, pReason: Text, pAmount: Number, pCurrency: Text, pCorrelationID: Text
): Void = {
    IfError(
        Patch(FinanceActivityLog, Defaults(FinanceActivityLog), {
            Title: Left(pAction & " - " & pEntityType & " " & pEntityNumber, 255),
            Module: {Value: If(pEntityType = "Payroll Run" || pEntityType = "Payroll Line", "Payroll", "Finance")},
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
            ProjectID: pProjectID,
            ProjectCode: pProjectCode,
            Amount: pAmount,
            Currency: If(IsBlank(pCurrency), Blank(), {Value: pCurrency}),
            ActionDate: Now(),
            PeriodKey: currentPeriodKey,
            PerformedByID: varMe.ID,
            PerformedByName: varMe.FullName,
            PerformedByEmail: currentUserEmail,
            PerformedByRole: myRoleTitle,
            Source: {Value: "Power Apps"},
            IsSystemAction: false,
            CorrelationID: pCorrelationID,
            IsSensitive: pEntityType = "Payroll Run" || pEntityType = "Payroll Line" || pAction = "Viewed"
        }),
        Trace("FinanceActivityLog write failed: " & FirstError.Message, TraceSeverity.Error)
    )
};

fnLogActivity(
    pEntityType: Text, pEntityID: Number, pEntityNumber: Text, pAction: Text, pSeverity: Text,
    pProjectID: Number, pProjectCode: Text, pDetails: Text, pReason: Text, pCorrelationID: Text
): Void = {
    fnLogActivityFull(pEntityType, pEntityID, pEntityNumber, pAction, pSeverity,
        pProjectID, pProjectCode, "", "", "", pDetails, pReason, Blank(), "", pCorrelationID)
};


// =====================================================================
// 12. BATCH A (screens 7.1 - 7.4)
// =====================================================================

cfgKPI = {
    TotalBudget:   "Total Budget",
    Committed:     "Committed",
    Spent:         "Spent",
    Remaining:     "Remaining",
    CashPosition:  "Cash Position",
    MonthlySpend:  "Monthly Spend",
    SpendBySource: "Spend By Source"
};
cfgSpendSource = {Payroll: "Payroll", Procurement: "Procurement", Payments: "Payment Request"};
cfgPowerBIReportUrl = "";

cfgPRStatus = {
    Draft:     "Draft",
    Pending:   "Pending",
    Approved:  "Approved",
    Rejected:  "Rejected",
    Cancelled: "Cancelled",
    Returned:  "Draft"
};
cfgPRPaymentStatus = {Paid: "Paid"};

cfgApprDecision = {Approved: "Approved", Rejected: "Rejected", Returned: "Returned"};
cfgRequestType = {PaymentRequest: "Payment Request", PayrollRun: "Payroll Run",
                  BudgetRevision: "Budget Revision", Reversal: "Reversal Request"};

cfgDocEntity = {PaymentRequest: "Payment Request", Project: "Project", BudgetLine: "Budget Line"};
cfgCommentRecordType = {PaymentRequest: "Payment Request", BudgetLine: "Budget Line"};
notifReadValue = "Yes";
cfgNotifEntity = {PaymentRequest: "Payment Request", BudgetLine: "Budget Line",
                  PayrollRun: "Payroll Run", DonorFunding: "Donor Funding"};

cfgPROverdueDays = 14;
cfgPRWriteUSDPreview = false;
canViewPayrollTotals = canViewPayroll || isFinanceManager || isFinanceOfficer || isProjectManager || isDirector;

cfgPageSize        = 100;
cfgLedgerMaxMonths = 12;

fnFromUSD(pUSD: Number, pCurrency: Text): Number =
    If(
        IsBlank(pUSD), Blank(),
        IsBlank(pCurrency) || pCurrency = "USD", pUSD,
        With({_r: fnRateToUSD(pCurrency)}, If(Coalesce(_r, 0) = 0, Blank(), pUSD / _r))
    );

fnPRStage(pStatus: Text, pPayStatus: Text, pChecked: Boolean, pPMApproved: Boolean, pFMApproved: Boolean): Text =
    If(
        pPayStatus = cfgPRPaymentStatus.Paid, "paid",
        pStatus = cfgPRStatus.Cancelled, "cancelled",
        pStatus = cfgPRStatus.Rejected, "rejected",
        pStatus = cfgPRStatus.Approved, "approved",
        pStatus = cfgPRStatus.Pending,
            If(!pChecked, "check", !pPMApproved, "pm", !pFMApproved, "fm", "approved"),
        "draft"
    );

fnPRStageLabel(pStage: Text): Text =
    Switch(pStage,
        "draft",     fnT("pr.stage.draft", "Draft - not submitted"),
        "check",     fnT("pr.stage.check", "Waiting for finance check"),
        "pm",        fnT("pr.stage.pm", "Waiting for project manager approval"),
        "fm",        fnT("pr.stage.fm", "Waiting for finance manager approval"),
        "approved",  fnT("pr.stage.approved", "Approved - waiting for payment"),
        "paid",      fnT("pr.stage.paid", "Paid"),
        "rejected",  fnT("pr.stage.rejected", "Rejected"),
        "cancelled", fnT("pr.stage.cancelled", "Cancelled"),
        pStage);

fnRecordDecision(
    pRequestType: Text, pItemID: Number, pRequestNumber: Text, pDecision: Text, pComment: Text, pProjectID: Number
): Void = {
    With(
        {_row: LookUp(ApprovalHistory,
            RequestType.Value = pRequestType && RequestItemID = Text(pItemID) &&
            ApproverID = varMeID && Decision.Value = apprPendingDecision)},
        IfError(
            If(
                IsBlank(_row),
                Patch(ApprovalHistory, Defaults(ApprovalHistory), {
                    Title: Left(pRequestNumber & " - " & pDecision, 255),
                    RequestItemID: Text(pItemID),
                    RequestType: {Value: pRequestType},
                    RequestNumber: pRequestNumber,
                    Decision: {Value: pDecision},
                    Comments: pComment,
                    DecisionDate: Now(),
                    ActionDate: Now(),
                    Approver: {Id: varMeID, Value: ""},
                    ApproverID: varMeID,
                    ApproverEmail: currentUserEmail,
                    Module: {Value: If(pRequestType = cfgRequestType.PayrollRun, "Payroll", "Finance")},
                    ProjectID: pProjectID
                }),
                Patch(ApprovalHistory, _row, {
                    Decision: {Value: pDecision},
                    Comments: pComment,
                    DecisionDate: Now(),
                    ActionDate: Now()
                })
            ),
            Trace("ApprovalHistory write failed: " & FirstError.Message, TraceSeverity.Error)
        )
    )
};

fnMarkNotificationRead(pID: Number): Void = {
    With({_n: LookUp(colFinNotif, ID = pID)},
        If(!IsBlank(_n),
            IfError(
                Patch(Notifications, _n, {IsRead: notifReadValue, ReadDate: Now()});
                Remove(colFinNotif, _n),
                Trace("Notification update failed: " & FirstError.Message, TraceSeverity.Warning)
            )
        )
    )
};

fnMarkAllNotificationsRead(): Void = {
    IfError(
        Patch(Notifications, colFinNotif, ForAll(colFinNotif, {IsRead: notifReadValue, ReadDate: Now()}));
        Clear(colFinNotif),
        Trace("Notification batch update failed: " & FirstError.Message, TraceSeverity.Warning)
    )
};

cfgReasonMinChars = 10;
cfgDocUploadEnabled = false;

fnLoadBudgetLines(pProjectID: Number): Void = {
    ClearCollect(
        colBudgetLines,
        ForAll(
            Filter(Budgets, ProjectID = pProjectID) As b,
            {
                ID: b.ID,
                ProjectID: b.ProjectID,
                Title: b.Title,
                BudgetLineCode: b.BudgetLineCode,
                Category: b.Category,
                SubCategory: b.SubCategory,
                CostGroup: b.CostGroup,
                Description: b.Description,
                Currency: b.Currency.Value,
                TotalAmount: b.TotalAmount,
                CommittedAmount: b.CommittedAmount,
                SpentAmount: b.SpentAmount,
                RemainingBalance: b.RemainingBalance,
                PartnerShare: b.PartnerShare,
                HSAShare: b.HSAShare,
                PayrollAmount: b.PayrollAmount,
                ProcurementAmount: b.ProcurementAmount,
                HolderID: b.BudgetLineHolder.Id,
                Holder: b.BudgetLineHolder.Value,
                TotalUSD: fnToUSD(b.TotalAmount, b.Currency.Value),
                CommittedUSD: fnToUSD(b.CommittedAmount, b.Currency.Value),
                SpentUSD: fnToUSD(b.SpentAmount, b.Currency.Value),
                RemainingUSD: fnToUSD(b.RemainingBalance, b.Currency.Value),
                PayrollUSD: fnToUSD(b.PayrollAmount, b.Currency.Value),
                Util: fnUtilRatio(b.TotalAmount, b.CommittedAmount, b.SpentAmount)
            }
        )
    );
    Set(varBudgetLinesProjectID, pProjectID)
};


// =====================================================================
// 13. BATCH B (screens 7.5 - 7.8)
// =====================================================================

cfgRunStatus = {
    Draft:          "Draft",
    PendingHR:      "Pending HR",
    PendingFinance: "Pending Finance",
    Approved:       "Approved",
    Paid:           "Paid",
    Posted:         "Posted"
};
cfgFundStatus  = {Expected: "Expected", Received: "Received", Delayed: "Delayed"};
cfgTxnType     = {Commitment: "Commitment", Expenditure: "Expenditure", FundingReceived: "Funding Received",
                  Adjustment: "Adjustment", Reversal: "Reversal"};
cfgSourceModule = {Payroll: "Payroll", PaymentRequest: "Payment Request", PurchaseOrder: "Purchase Order",
                   Manual: "Manual", DonorFunding: "Donor Funding"};
cfgTxnStatus   = {Posted: "Posted", Reversed: "Reversed"};
cfgFundingSource = {UNESCO: "UNESCO", HSA: "HSA", Other: "Other"};

cfgPayrollRequireRole = true;
canAccessPayroll   = canViewPayroll && (!cfgPayrollRequireRole || isHRManager || isFinanceManager);
canEditRunLines    = canAccessPayroll && canEditPayroll;
canApproveRunHR    = canAccessPayroll && canApprovePayroll && isHRManager;
canApproveRunFin   = canAccessPayroll && canApprovePayroll && isFinanceManager;
canMarkRunPaid     = canAccessPayroll && canApprovePayroll && isFinanceManager;
cfgRunPreparerMayApproveHR = false;

cfgLedgerHidePayrollRows = true;
canSeePayrollLedger = canAccessPayroll || !cfgLedgerHidePayrollRows;

cfgMaskText = "•••••";
cfgRevealSeconds = 60;
cfgPayrollDiffPct = 0.10;
cfgPayrollDiffMaxLines = 2000;
cfgPayrollAppComputesGross = true;

cfgFundInflowDays   = 90;
cfgFundPollSeconds  = 5;
cfgFundPollMaxTries = 24;
canEditFunding = isFinanceManager && canEdit;
cfgFundMaxRows = 500;

cfgProcurementPOLink = "";
cfgComInvoiceFlags = false;
cfgPOClosedStatus = ["Cancelled", "Closed", "Received"];
cfgComTolerance = 1;

cfgReversalNeedsApproval = false;
cfgExportMaxRows = 500;
cfgFlowCreateRunReady = false;
cfgFlowReverseReady   = false;
cfgFlowExportReady    = false;

fnLogSensitiveView(pEntityType: Text, pEntityID: Number, pEntityNumber: Text, pProjectID: Number, pDetails: Text): Void = {
    Set(varLogOK, false);
    IfError(
        Patch(FinanceActivityLog, Defaults(FinanceActivityLog), {
            Title: Left("Viewed - " & pEntityType & " " & pEntityNumber, 255),
            Module: {Value: "Payroll"},
            EntityType: {Value: pEntityType},
            EntityID: pEntityID,
            EntityNumber: pEntityNumber,
            ActionType: {Value: "Viewed"},
            Details: pDetails,
            Severity: {Value: "Info"},
            ProjectID: pProjectID,
            ActionDate: Now(),
            PeriodKey: currentPeriodKey,
            PerformedByID: varMe.ID,
            PerformedByName: varMe.FullName,
            PerformedByEmail: currentUserEmail,
            PerformedByRole: myRoleTitle,
            Source: {Value: "Power Apps"},
            IsSystemAction: false,
            IsSensitive: true
        });
        Set(varLogOK, true),
        Trace("Viewed log failed (value stays masked): " & FirstError.Message, TraceSeverity.Error)
    )
};

fnMasked(pAmount: Number, pCurrency: Text, pRevealed: Boolean): Text =
    If(pRevealed, fnMoney(pAmount, pCurrency), cfgMaskText);

fnFundDaysOverdue(pStatus: Text, pExpected: Date): Number =
    If(pStatus = cfgFundStatus.Received || IsBlank(pExpected) || pExpected >= Today(), 0, DateDiff(pExpected, Today(), TimeUnit.Days));


// =====================================================================
// 14. SHARED APPROVALS INBOX
// =====================================================================

cfgApprMaxRows  = 100;
cfgApprPageSize = 20;
cfgApprAgeWarnDays   = 3;
cfgApprAgeDangerDays = 7;
cfgApprBulkMax       = 20;
cfgApprInboxOpenToAll = true;

tblApprovalTypes = Table(
    {RequestType: cfgRequestType.PaymentRequest, ModuleKey: "Finance", ModuleLabel: fnT("mod.finance", "Finance"),
     SourceList: "PaymentRequests", OpenKey: "pr", OpenUrl: "", Ico: Icon.Money, Wired: true, DecideInInbox: true,
     AllowBulk: true, NeedsPayroll: false, HasProject: true, Confirmed: true},
    {RequestType: cfgRequestType.PayrollRun, ModuleKey: "Payroll", ModuleLabel: fnT("mod.payroll", "Payroll"),
     SourceList: "PayrollRuns", OpenKey: "payrollrun", OpenUrl: "", Ico: Icon.People, Wired: true, DecideInInbox: true,
     AllowBulk: false, NeedsPayroll: true, HasProject: false, Confirmed: true},
    {RequestType: cfgRequestType.BudgetRevision, ModuleKey: "Finance", ModuleLabel: fnT("mod.finance", "Finance"),
     SourceList: "Budgets", OpenKey: "budgetline", OpenUrl: "", Ico: Icon.Calculator, Wired: true, DecideInInbox: cfgApprDecideOtherTypes,
     AllowBulk: false, NeedsPayroll: false, HasProject: true, Confirmed: false},
    {RequestType: cfgRequestType.Reversal, ModuleKey: "Finance", ModuleLabel: fnT("mod.finance", "Finance"),
     SourceList: "FinancialTransactions", OpenKey: "ledger", OpenUrl: "", Ico: Icon.Undo, Wired: true, DecideInInbox: cfgApprDecideOtherTypes,
     AllowBulk: false, NeedsPayroll: false, HasProject: true, Confirmed: false},
    {RequestType: "Purchase Request", ModuleKey: "Procurement", ModuleLabel: fnT("mod.procurement", "Procurement"),
     SourceList: "PurchaseRequests (?)", OpenKey: "", OpenUrl: "", Ico: Icon.ShoppingCart, Wired: false, DecideInInbox: false,
     AllowBulk: false, NeedsPayroll: false, HasProject: true, Confirmed: false},
    {RequestType: "Purchase Order", ModuleKey: "Procurement", ModuleLabel: fnT("mod.procurement", "Procurement"),
     SourceList: "PurchaseOrders", OpenKey: "", OpenUrl: cfgProcurementPOLink, Ico: Icon.ShoppingCart, Wired: false, DecideInInbox: false,
     AllowBulk: false, NeedsPayroll: false, HasProject: true, Confirmed: false},
    {RequestType: "Leave Request", ModuleKey: "HR", ModuleLabel: fnT("mod.hr", "HR"),
     SourceList: "LeaveRequests (?)", OpenKey: "", OpenUrl: "", Ico: Icon.CalendarBlank, Wired: false, DecideInInbox: false,
     AllowBulk: false, NeedsPayroll: false, HasProject: false, Confirmed: false},
    {RequestType: "Travel Request", ModuleKey: "HR", ModuleLabel: fnT("mod.hr", "HR"),
     SourceList: "TravelRequests (?)", OpenKey: "", OpenUrl: "", Ico: Icon.Airplane, Wired: false, DecideInInbox: false,
     AllowBulk: false, NeedsPayroll: false, HasProject: true, Confirmed: false}
);
cfgApprDecideOtherTypes = true;
cfgApprOtherModule = "Other";

fnApprAgeTone(pDays: Number): Text =
    If(pDays >= cfgApprAgeDangerDays, "danger", pDays >= cfgApprAgeWarnDays, "warning", "neutral");

fnRefreshApprovalBadge(): Void = {
    If(
        canSeeApprovalsInbox,
        ClearCollect(colMyPendingApprovals,
            FirstN(Sort(Filter(ApprovalHistory,
                ApproverID = varMeID,
                Decision.Value = apprPendingDecision), ID, SortOrder.Descending), cfgApprMaxRows));
        If(
            !canAccessPayroll,
            RemoveIf(colMyPendingApprovals,
                RequestType.Value = cfgRequestType.PayrollRun || Module.Value = "Payroll" ||
                RequestType.Value in Filter(tblApprovalTypes, NeedsPayroll).RequestType)
        ),
        Clear(colMyPendingApprovals)
    )
};
approvalBadgeText = If(pendingApprovalCount >= cfgApprMaxRows, cfgApprMaxRows & "+", Text(pendingApprovalCount));


// #####################################################################
//  PART C - POST-SCREENS FUNCTIONS
//  The finance screens these functions name are already in Src/.
// #####################################################################

fnNavigate(pKey: Text): Void = {
    If(
        pKey <> "dashboard" && IsBlank(LookUp(nfNavItems, Key = pKey)),
        Navigate(scrFinNoAccess, ScreenTransition.None),
        Switch(
            pKey,
            "dashboard",   Navigate(scrFinDashboard, ScreenTransition.None),
            "projects",    Navigate(scrFinProjectOverview, ScreenTransition.None),
            "budgets",     Navigate(scrFinBudgets, ScreenTransition.None),
            "payments",    Navigate(scrFinPayments, ScreenTransition.None),
            "commitments", Navigate(scrFinCommitments, ScreenTransition.None),
            "payroll",     Navigate(scrFinPayroll, ScreenTransition.None),
            "funding",     Navigate(scrFinDonorFunding, ScreenTransition.None),
            "ledger",      Navigate(scrFinLedger, ScreenTransition.None),
            "approvals",   Navigate(scrApprovalsInbox, ScreenTransition.None),
            Notify(fnT("nav.notYet", "This page is part of the next build batch."), NotificationType.Information)
        )
    )
};

fnOpenNotification(pID: Number, pEntity: Text, pItemID: Number, pLink: Text): Void = {
    fnMarkNotificationRead(pID);
    If(
        pEntity = cfgNotifEntity.PaymentRequest && Coalesce(pItemID, 0) > 0,
            Set(varPRID, pItemID);
            Navigate(scrFinPaymentDetail, ScreenTransition.None),
        pEntity = cfgNotifEntity.BudgetLine && Coalesce(pItemID, 0) > 0,
            Set(varBudgetLineID, pItemID);
            Navigate(scrFinBudgetDetail, ScreenTransition.None),
        pEntity = cfgNotifEntity.PayrollRun && Coalesce(pItemID, 0) > 0,
            If(
                canAccessPayroll,
                Set(varRunID, pItemID);
                Navigate(scrFinPayrollRun, ScreenTransition.None),
                Navigate(scrFinNoAccess, ScreenTransition.None)
            ),
        pEntity = cfgNotifEntity.DonorFunding && Coalesce(pItemID, 0) > 0,
            Set(varFundID, pItemID);
            fnNavigate("funding"),
        !IsBlank(pLink),
            Launch(pLink)
    )
};

fnOpenApprovalItem(pRequestType: Text, pItemID: Number): Void = {
    With(
        {_m: LookUp(tblApprovalTypes, RequestType = pRequestType)},
        Switch(
            Coalesce(_m.OpenKey, ""),
            "pr",         Set(varPRID, pItemID); Navigate(scrFinPaymentDetail, ScreenTransition.None),
            "payrollrun", If(canAccessPayroll,
                              Set(varRunID, pItemID); Navigate(scrFinPayrollRun, ScreenTransition.None),
                              Navigate(scrFinNoAccess, ScreenTransition.None)),
            "budgetline", Set(varBudgetLineID, pItemID); Navigate(scrFinBudgetDetail, ScreenTransition.None),
            "ledger",     Set(varLedTxnID, pItemID); fnNavigate("ledger"),
            If(
                !IsBlank(_m.OpenUrl),
                Launch(If(Find("{id}", _m.OpenUrl) > 0, Substitute(_m.OpenUrl, "{id}", Text(pItemID)), _m.OpenUrl & pItemID)),
                Notify(fnT("apr.noScreen", "No screen is linked to this request type yet. Open it from its own module."), NotificationType.Information)
            )
        )
    )
};

fnOpenApprovals(pModuleKey: Text): Void = {
    Set(varAprModule, pModuleKey);
    Navigate(scrApprovalsInbox, ScreenTransition.None)
};

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
