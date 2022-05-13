#!/sbin/sh
#
# Rei Ryuki the Fixer
#

APP="SetupWizard
     SetupWizardPrebuilt
     CyanogenSetupWizard
     LineageSetupWizard
     MzSetupWizard
     GoogleSearch
     QuickSearchBox
     Vending
     Velvet_update
     AndroidPlatformServices
     CarrierServices
     CarrierSetup
     CarrierWifi
     ConfigUpdater
     ConnMetrics
     GCS
     GDialer
     GoogleDialer
     GoogleFeedback
     GooglePartnerSetup
     GoogleRestore
     GoogleServicesFramework
     HotwordEnrollmentOKGoogle
     HotwordEnrollmentXGoogle
     ModuleMetadataGooglePrebuilt
     Phonesky
     GmsCore
     GmsCore_update
     GmsCoreSetupPrebuilt
     PrebuiltGmsCore
     PrebuiltGmsCorePi
     PrebuiltGmsCorePix
     PrebuiltGmsCoreQt
     SafetyHubPrebuilt
     EmergencyInfo
     TagGoogle
     TimeZoneDataPrebuilt
     TimeZoneUpdater
     Velvet
     CarrierMetrics
     GoogleCalendarSyncAdapter
     GoogleContactsSyncAdapter
     LocationHistoryPrebuilt
     MarkupGoogle
     AndroidMigratePrebuilt
     PixelSetupWizard
     PlayAutoInstallConfig
     Turbo
     TurboPrebuilt
     WellbeingPrebuilt
     MatchmakerPrebuilt
     MatchmakerPrebuiltPixel4
     MatchmakerPrebuiltPixel3
     MatchmakerPrebuiltPixel2
     DocumentsUI
     DocumentsUIGoogle
     GoogleDocumentsUIPrebuilt"
for APPS in $APP; do
  rm -rf /system_root/system/app/$APPS
  rm -rf /system_root/system/priv-app/$APPS
  rm -rf /system_root/system/product/app/$APPS
  rm -rf /system_root/system/product/priv-app/$APPS
  rm -rf /system/system/app/$APPS
  rm -rf /system/system/priv-app/$APPS
  rm -rf /system/system/product/app/$APPS
  rm -rf /system/system/product/priv-app/$APPS
  rm -rf /product/app/$APPS
  rm -rf /product/priv-app/$APPS
done
rm -rf /cache/*
rm -rf /data/dalvik-cache/*
rm -rf /data/resource-cache/*
rm -rf /data/system/package_cache/*

exit 1



