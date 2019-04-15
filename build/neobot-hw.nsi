; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "NEOBOT Hardware"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Neopia, Inc."
!define PRODUCT_WEB_SITE "http://neopia.co.kr"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\NEOBOT Hardware.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\NEOBOT Hardware.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Korean"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "NEOBOT Hardware_1.0_64bit.exe"
InstallDir "$PROGRAMFILES\NEOBOT Hardware"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "..\dist\win-unpacked\chrome_100_percent.pak"
  File "..\dist\win-unpacked\chrome_200_percent.pak"
  File "..\dist\win-unpacked\d3dcompiler_47.dll"
  File "..\dist\win-unpacked\ffmpeg.dll"
  File "..\dist\win-unpacked\icudtl.dat"
  File "..\dist\win-unpacked\libEGL.dll"
  File "..\dist\win-unpacked\libGLESv2.dll"
  File "..\dist\win-unpacked\LICENSE.electron.txt"
  File "..\dist\win-unpacked\LICENSES.chromium.html"
  SetOutPath "$INSTDIR\locales"
  File "..\dist\win-unpacked\locales\am.pak"
  File "..\dist\win-unpacked\locales\ar.pak"
  File "..\dist\win-unpacked\locales\bg.pak"
  File "..\dist\win-unpacked\locales\bn.pak"
  File "..\dist\win-unpacked\locales\ca.pak"
  File "..\dist\win-unpacked\locales\cs.pak"
  File "..\dist\win-unpacked\locales\da.pak"
  File "..\dist\win-unpacked\locales\de.pak"
  File "..\dist\win-unpacked\locales\el.pak"
  File "..\dist\win-unpacked\locales\en-GB.pak"
  File "..\dist\win-unpacked\locales\en-US.pak"
  File "..\dist\win-unpacked\locales\es-419.pak"
  File "..\dist\win-unpacked\locales\es.pak"
  File "..\dist\win-unpacked\locales\et.pak"
  File "..\dist\win-unpacked\locales\fa.pak"
  File "..\dist\win-unpacked\locales\fi.pak"
  File "..\dist\win-unpacked\locales\fil.pak"
  File "..\dist\win-unpacked\locales\fr.pak"
  File "..\dist\win-unpacked\locales\gu.pak"
  File "..\dist\win-unpacked\locales\he.pak"
  File "..\dist\win-unpacked\locales\hi.pak"
  File "..\dist\win-unpacked\locales\hr.pak"
  File "..\dist\win-unpacked\locales\hu.pak"
  File "..\dist\win-unpacked\locales\id.pak"
  File "..\dist\win-unpacked\locales\it.pak"
  File "..\dist\win-unpacked\locales\ja.pak"
  File "..\dist\win-unpacked\locales\kn.pak"
  File "..\dist\win-unpacked\locales\ko.pak"
  File "..\dist\win-unpacked\locales\lt.pak"
  File "..\dist\win-unpacked\locales\lv.pak"
  File "..\dist\win-unpacked\locales\ml.pak"
  File "..\dist\win-unpacked\locales\mr.pak"
  File "..\dist\win-unpacked\locales\ms.pak"
  File "..\dist\win-unpacked\locales\nb.pak"
  File "..\dist\win-unpacked\locales\nl.pak"
  File "..\dist\win-unpacked\locales\pl.pak"
  File "..\dist\win-unpacked\locales\pt-BR.pak"
  File "..\dist\win-unpacked\locales\pt-PT.pak"
  File "..\dist\win-unpacked\locales\ro.pak"
  File "..\dist\win-unpacked\locales\ru.pak"
  File "..\dist\win-unpacked\locales\sk.pak"
  File "..\dist\win-unpacked\locales\sl.pak"
  File "..\dist\win-unpacked\locales\sr.pak"
  File "..\dist\win-unpacked\locales\sv.pak"
  File "..\dist\win-unpacked\locales\sw.pak"
  File "..\dist\win-unpacked\locales\ta.pak"
  File "..\dist\win-unpacked\locales\te.pak"
  File "..\dist\win-unpacked\locales\th.pak"
  File "..\dist\win-unpacked\locales\tr.pak"
  File "..\dist\win-unpacked\locales\uk.pak"
  File "..\dist\win-unpacked\locales\vi.pak"
  File "..\dist\win-unpacked\locales\zh-CN.pak"
  File "..\dist\win-unpacked\locales\zh-TW.pak"
  SetOutPath "$INSTDIR"
  File "..\dist\win-unpacked\natives_blob.bin"
  File "..\dist\win-unpacked\NEOBOT Hardware.exe"
  CreateDirectory "$SMPROGRAMS\NEOBOT Hardware"
  CreateShortCut "$SMPROGRAMS\NEOBOT Hardware\NEOBOT Hardware.lnk" "$INSTDIR\NEOBOT Hardware.exe"
  CreateShortCut "$DESKTOP\NEOBOT Hardware.lnk" "$INSTDIR\NEOBOT Hardware.exe"
  File "..\dist\win-unpacked\osmesa.dll"
  SetOutPath "$INSTDIR\resources"
  File "..\dist\win-unpacked\resources\app.asar"
  File "..\dist\win-unpacked\resources\electron.asar"
  SetOutPath "$INSTDIR"
  File "..\dist\win-unpacked\resources.pak"
  File "..\dist\win-unpacked\snapshot_blob.bin"
  SetOutPath "$INSTDIR\swiftshader"
  File "..\dist\win-unpacked\swiftshader\libEGL.dll"
  File "..\dist\win-unpacked\swiftshader\libGLESv2.dll"
  SetOutPath "$INSTDIR"
  File "..\dist\win-unpacked\v8_context_snapshot.bin"
  File "..\dist\win-unpacked\VkICD_mock_icd.dll"
  File "..\dist\win-unpacked\VkLayer_core_validation.dll"
  File "..\dist\win-unpacked\VkLayer_object_tracker.dll"
  File "..\dist\win-unpacked\VkLayer_parameter_validation.dll"
  File "..\dist\win-unpacked\VkLayer_threading.dll"
  File "..\dist\win-unpacked\VkLayer_unique_objects.dll"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\NEOBOT Hardware\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\NEOBOT Hardware\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\NEOBOT Hardware.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\NEOBOT Hardware.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\VkLayer_unique_objects.dll"
  Delete "$INSTDIR\VkLayer_threading.dll"
  Delete "$INSTDIR\VkLayer_parameter_validation.dll"
  Delete "$INSTDIR\VkLayer_object_tracker.dll"
  Delete "$INSTDIR\VkLayer_core_validation.dll"
  Delete "$INSTDIR\VkICD_mock_icd.dll"
  Delete "$INSTDIR\v8_context_snapshot.bin"
  Delete "$INSTDIR\swiftshader\libGLESv2.dll"
  Delete "$INSTDIR\swiftshader\libEGL.dll"
  Delete "$INSTDIR\snapshot_blob.bin"
  Delete "$INSTDIR\resources.pak"
  Delete "$INSTDIR\resources\electron.asar"
  Delete "$INSTDIR\resources\app.asar"
  Delete "$INSTDIR\osmesa.dll"
  Delete "$INSTDIR\NEOBOT Hardware.exe"
  Delete "$INSTDIR\natives_blob.bin"
  Delete "$INSTDIR\locales\zh-TW.pak"
  Delete "$INSTDIR\locales\zh-CN.pak"
  Delete "$INSTDIR\locales\vi.pak"
  Delete "$INSTDIR\locales\uk.pak"
  Delete "$INSTDIR\locales\tr.pak"
  Delete "$INSTDIR\locales\th.pak"
  Delete "$INSTDIR\locales\te.pak"
  Delete "$INSTDIR\locales\ta.pak"
  Delete "$INSTDIR\locales\sw.pak"
  Delete "$INSTDIR\locales\sv.pak"
  Delete "$INSTDIR\locales\sr.pak"
  Delete "$INSTDIR\locales\sl.pak"
  Delete "$INSTDIR\locales\sk.pak"
  Delete "$INSTDIR\locales\ru.pak"
  Delete "$INSTDIR\locales\ro.pak"
  Delete "$INSTDIR\locales\pt-PT.pak"
  Delete "$INSTDIR\locales\pt-BR.pak"
  Delete "$INSTDIR\locales\pl.pak"
  Delete "$INSTDIR\locales\nl.pak"
  Delete "$INSTDIR\locales\nb.pak"
  Delete "$INSTDIR\locales\ms.pak"
  Delete "$INSTDIR\locales\mr.pak"
  Delete "$INSTDIR\locales\ml.pak"
  Delete "$INSTDIR\locales\lv.pak"
  Delete "$INSTDIR\locales\lt.pak"
  Delete "$INSTDIR\locales\ko.pak"
  Delete "$INSTDIR\locales\kn.pak"
  Delete "$INSTDIR\locales\ja.pak"
  Delete "$INSTDIR\locales\it.pak"
  Delete "$INSTDIR\locales\id.pak"
  Delete "$INSTDIR\locales\hu.pak"
  Delete "$INSTDIR\locales\hr.pak"
  Delete "$INSTDIR\locales\hi.pak"
  Delete "$INSTDIR\locales\he.pak"
  Delete "$INSTDIR\locales\gu.pak"
  Delete "$INSTDIR\locales\fr.pak"
  Delete "$INSTDIR\locales\fil.pak"
  Delete "$INSTDIR\locales\fi.pak"
  Delete "$INSTDIR\locales\fa.pak"
  Delete "$INSTDIR\locales\et.pak"
  Delete "$INSTDIR\locales\es.pak"
  Delete "$INSTDIR\locales\es-419.pak"
  Delete "$INSTDIR\locales\en-US.pak"
  Delete "$INSTDIR\locales\en-GB.pak"
  Delete "$INSTDIR\locales\el.pak"
  Delete "$INSTDIR\locales\de.pak"
  Delete "$INSTDIR\locales\da.pak"
  Delete "$INSTDIR\locales\cs.pak"
  Delete "$INSTDIR\locales\ca.pak"
  Delete "$INSTDIR\locales\bn.pak"
  Delete "$INSTDIR\locales\bg.pak"
  Delete "$INSTDIR\locales\ar.pak"
  Delete "$INSTDIR\locales\am.pak"
  Delete "$INSTDIR\LICENSES.chromium.html"
  Delete "$INSTDIR\LICENSE.electron.txt"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\icudtl.dat"
  Delete "$INSTDIR\ffmpeg.dll"
  Delete "$INSTDIR\d3dcompiler_47.dll"
  Delete "$INSTDIR\chrome_200_percent.pak"
  Delete "$INSTDIR\chrome_100_percent.pak"

  Delete "$SMPROGRAMS\NEOBOT Hardware\Uninstall.lnk"
  Delete "$SMPROGRAMS\NEOBOT Hardware\Website.lnk"
  Delete "$DESKTOP\NEOBOT Hardware.lnk"
  Delete "$SMPROGRAMS\NEOBOT Hardware\NEOBOT Hardware.lnk"

  RMDir "$SMPROGRAMS\NEOBOT Hardware"
  RMDir "$INSTDIR\swiftshader"
  RMDir "$INSTDIR\resources"
  RMDir "$INSTDIR\locales"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd