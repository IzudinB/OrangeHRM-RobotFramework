*** Settings ***

Library     ExtendedSelenium2Library
Variables   ../../variables.py



*** Variables ***

${DD_ADMIN}                 id=menu_admin_viewAdminModule
${DD_USER_MANAGEMENT}       id=menu_admin_UserManagement
${LNK_USERS}                id=menu_admin_viewSystemUsers
${LNK_USER_ROLES}           id=menu_admin_viewUserRoles
${LNK_QUALIFICATIONS}       id=menu_admin_Qualifications
${LNK_SKILLS}               id=menu_admin_viewSkills
${LNK_EDUCATION}            id=menu_admin_viewEducation
${LNK_LICENSES}             id=menu_admin_viewLicenses
${LANGUAGES}                id=menu_admin_viewLanguages
${MEMBERSHIPS}              id=menu_admin_membership
${LNK_JOB}                  id=menu_admin_Job
${LNK_JOB_TITLES}           id=menu_admin_viewJobTitleList
${LNK_NATIONALITIES}        id=menu_admin_nationality
${LNK_SALARY_COMPONENTS}    id=menu_admin_viewSalaryComponentList
${LNK_PAY_GRADES}           id=menu_admin_viewPayGrades
${LNK_EMPLOYMENT_STATUS}    id=menu_admin_employmentStatus
${LNK_JOB_CATEGORIES}       id=menu_admin_jobCategory
${LNK_WORK_SHIFTS}          id=menu_admin_workShift
${DD_ORGANIZATION}          id=menu_admin_Organization
${LNK_LOCATIONS}            id=menu_admin_viewLocations
${LNK_NEWS}                 id=menu_news_viewNewsList
${DD_ANNOUNCEMENTS}         id=menu_news_Announcements
${LNK_STRUCTURE}            id=menu_admin_viewCompanyStructure
${LNK_COST_CENTERS}         id=menu_admin_viewCostCentreList
${DD_COMPETENCIES}          id=menu_admin_Competencies
${LNK_COMPETENCY_LIST}      id=menu_admin_getEmployeeCompetencyList

*** Keywords ***

Navigate to Users
    [Documentation]         Navigates to Users in main menu
    click element           ${DD_ADMIN}
    click element           ${DD_USER_MANAGEMENT}
    click element           ${LNK_USERS}
    wait until angular ready

Navigate to User Roles
    [Documentation]         Navigates to User Roles in main menu
    click element           ${DD_ADMIN}
    click element           ${DD_USER_MANAGEMENT}
    click element           ${LNK_USER_ROLES}
    wait until angular ready

Navigate to Skills
    [Documentation]     Navigate to Skills in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_QUALIFICATIONS}
    click element       ${LNK_SKILLS}
    wait until angular ready

Navigate to Education
    [Documentation]     Navigate to Education in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_QUALIFICATIONS}
    click element       ${LNK_EDUCATION}
    wait until angular ready

Navigate to Licenses
    [Documentation]     Navigate to Licenses in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_QUALIFICATIONS}
    click element       ${LNK_LICENSES}
    wait until angular ready

Navigate to Languages
    [Documentation]     Navigate to Languages in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_QUALIFICATIONS}
    click element       ${LANGUAGES}
    wait until angular ready

Navigate to Memberships
    [Documentation]     Navigate to Membership in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_QUALIFICATIONS}
    click element       ${MEMBERSHIPS}
    wait until angular ready


Navigate to Job Titles
    [Documentation]     Navigate to Job Titles in Jobs in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_JOB_TITLES}
    wait until angular ready

Navigate to Nationalities
     [Documentation]     Navigate to Nationalities in main menu.
     click element       ${DD_ADMIN}
     click element       ${LNK_NATIONALITIES}
     wait until angular ready

Navigate to Salary Components
    [Documentation]     Navigate to Salary Components in Job in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_SALARY_COMPONENTS}
    wait until angular ready

Navigate to Pay Grades
    [Documentation]     Navigate to Pay Grades in Job in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_PAY_GRADES}
    wait until angular ready

Navigate to Employment Status
    [Documentation]     Navigate to Employment Status in Job in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_EMPLOYMENT_STATUS}
    wait until angular ready

Navigate to Job Categories
    [Documentation]     Navigate to Job Categories in Job in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_JOB_CATEGORIES}
    wait until angular ready


Navigate to Work Shift
    [Documentation]     Navigate to Work Shifts in Jobs in main menu.
    click element       ${DD_ADMIN}
    click element       ${LNK_JOB}
    click element       ${LNK_WORK_SHIFTS}
    wait until angular ready

Navigate to Locations
    [Documentation]     Navigate to Locations in main menu.
    click element       ${DD_ADMIN}
    click element       ${DD_ORGANIZATION}
    click element       ${LNK_LOCATIONS}
    wait until angular ready

Navigate to News
    [Documentation]     Navigate to News in main menu.
    click element       ${DD_ADMIN}
    click element       ${DD_ANNOUNCEMENTS}
    click element       ${LNK_NEWS}
    wait until angular ready

Navigate to Structure
    [Documentation]     Navigate to Structure in main menu.
    click element       ${DD_ADMIN}
    click element       ${DD_ORGANIZATION}
    click element       ${LNK_STRUCTURE}
    wait until angular ready

Navigate to Cost Centers
    [Documentation]           Navigate to Cost Centers in main menu
    click element       ${DD_ADMIN}
    click element       ${DD_ORGANIZATION}
    click element       ${LNK_COST_CENTERS}
    wait until angular ready

Navigate to Competency List
    [Documentation]           Navigate to Competency List in main menu
        click element       ${DD_ADMIN}
        click element       ${DD_COMPETENCIES}
        click element       ${LNK_COMPETENCY_LIST}
        wait until angular ready