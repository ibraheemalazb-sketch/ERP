// App.OnStart
// Paste Src/Theme/gblTheme.fx first, then the rest of this file.
// gblIsArabic and gblIsRTL live in Src/App/Formulas.fx.

Set(gblMenuExpanded, true);
Set(mep, 220);
Set(mclp, 50);
Set(gblLanguage, "English");
Set(MainBackgroundColor, gblTheme.Light.Colors.Background);
Set(gblUserEmail, Lower(User().Email));
Set(
    gblCurrentEmployee,
    If(
        IsBlank(gblUserEmail),
        Blank(),
        LookUp(Employees, Email = gblUserEmail)
    )
);
If(
    IsBlank(gblCurrentEmployee.ID),
    Notify("Unregistered user", NotificationType.Error),
    Set(
        gblUser,
        {
            ID: gblCurrentEmployee.ID,
            FullName: gblCurrentEmployee.FullName,
            Manager: gblCurrentEmployee.Manager.Value,
            Role: gblCurrentEmployee.Role.Value,
            RoleID: gblCurrentEmployee.Role.Id,
            Department: gblCurrentEmployee.Department.Value,
            OfficeId: gblCurrentEmployee.Office.Id,
            ProjectID: gblCurrentEmployee.Project.Id,
            Office: gblCurrentEmployee.Office.Value,
            Email: gblUserEmail,
            EmployeeNumber: gblCurrentEmployee.EmployeeNumber
        }
    );
    Concurrent(
        ClearCollect(
            colUserPermissions,
            Filter(Permissions, RoleID = gblUser.RoleID)
        ),
        ClearCollect(
            colUserProjectAccess,
            Filter(
                ProjectAccess,
                EmployeeID = gblUser.ID && IsActive = true
            )
        )
    );
    ClearCollect(
        colUserProjectIDs,
        Filter(colUserProjectAccess, AllProjects = false).ProjectID
    );
    Set(
        varUserHasAllProjects,
        CountIf(colUserProjectAccess, AllProjects = true) > 0
    );
    Set(
        gblSProject,
        If(
            Or(
                varUserHasAllProjects,
                IsEmpty(Filter(colUserProjectAccess, AllProjects = false))
            ),
            Blank(),
            LookUp(
                Projects,
                ID = LookUp(colUserProjectAccess, AllProjects = false).ProjectID
            )
        )
    );
    Set(varHRScope, LookUp(colUserPermissions, Module.Value = "HR").Scope.Value);
    Set(varProcurementScope, LookUp(colUserPermissions, Module.Value = "Procurement").Scope.Value);
    Set(varProgramScope, LookUp(colUserPermissions, Module.Value = "Projects").Scope.Value);
    Set(gblProjectCount, CountRows(Filter(colUserProjectAccess, AllProjects = false)))
);
