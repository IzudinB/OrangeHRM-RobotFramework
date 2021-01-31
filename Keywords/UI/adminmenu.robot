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