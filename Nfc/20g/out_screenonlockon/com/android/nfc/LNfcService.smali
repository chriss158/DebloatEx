.class public Lcom/android/nfc/LNfcService;
.super Lcom/android/nfc/NfcService;
.source "LNfcService.java"

# interfaces
.implements Lcom/android/nfc/LDeviceHost$LDeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LNfcService$BroadcastHandler;,
        Lcom/android/nfc/LNfcService$LCardEmlationHandler;,
        Lcom/android/nfc/LNfcService$LEnableDisableTask;,
        Lcom/android/nfc/LNfcService$LNfcAdapterService;,
        Lcom/android/nfc/LNfcService$LNfcServiceAddonService;,
        Lcom/android/nfc/LNfcService$LNfcServiceHandler;,
        Lcom/android/nfc/LNfcService$PackageCheckHandler;,
        Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;
    }
.end annotation


# static fields
.field static final AC_TAG:Ljava/lang/String; = "NfcAccessControl"

.field static final ANDROID_BEAM_ON:Ljava/lang/String; = "android_beam_on"

.field static final API_WATCHDOG_MS:I = 0x1388

.field private static final BROADCAST_RECEIVER_USING_HANDLER:Z = true

.field protected static final CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field protected static final DOWNLOADFW_WATCHDOG_MS:I = 0x4e20

.field protected static final FWDL_MAX_CNT:I = 0xa

.field protected static final MSG_CARD_EMULATION:I = 0x6a

.field protected static final MSG_HCE_EXCEED_AID_TABLE:I = 0x67

.field protected static final MSG_LG_LAYER_MASK:I = 0x64

.field protected static final MSG_NFCTAG_LONGTIME:I = 0x66

.field protected static final MSG_ROUTING_UPDATE_SUCCESS:I = 0x69

.field protected static final MSG_SET_DEFAULT_DEST:I = 0x68

.field protected static final MSG_SE_LISTEN_ACTIVATED:I = 0x6b

.field protected static final MSG_SE_LISTEN_DEACTIVATED:I = 0x6c

.field protected static final MSG_VENDOR_LAYER_MASK:I = 0x3e8

.field protected static final MSG_WC_ENABLE:I = 0x65

.field protected static final NFC_GSMA_CALLBACK_DISABLE:I = 0x0

.field protected static final NFC_GSMA_CALLBACK_ENABLE:I = 0x1

.field static final NFC_ON:Ljava/lang/String; = "nfc_on"

.field protected static final PREF_FWDL_TRY_CNT:Ljava/lang/String; = "nfc_fwdl_try_cnt"

.field protected static final SERVICE_ADDON_NAME:Ljava/lang/String; = "nfcaddon"

.field protected static final SERVICE_VENDOR_NAME:Ljava/lang/String; = "nfcvendor"

.field static final TAG:Ljava/lang/String; = "LNfcService"

.field static final TAGDETECT_LONGTIME_VALUE:J = 0x493e0L

.field protected static final TASK_ENABLE_BYSAVEDSETTING:I = 0xb

.field protected static final TASK_ENABLE_CARDBYSAVEDSETTING:I = 0xc

.field protected static final TASK_ENABLE_DISABLE_RW_BY_AIRPLANE_MODE:I = 0x14

.field protected static final TASK_ENABLE_LISTEN_ONLY:I = 0x15

.field protected static final TASK_ENABLE_POWERSAVING:I = 0xd

.field protected static final TASK_FIRMWARE_DOWNLOAD:I = 0xa

.field protected static final TASK_SHUTDOWN:I = 0xe

.field protected static final TASK_UPDATE_POWERSTATUS:I = 0x10

.field protected static final TASK_WC_DISABLE:I = 0xf

.field protected static final VIBRATION_PATTERN:[J

.field static final WC_DELAY_TIME_MILLIS:I = 0x1b58

.field protected static mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

.field static mIsDisable:Z

.field protected static mStatusMngr:Lcom/android/nfc/LNfcStatusManager;


# instance fields
.field protected am:Landroid/media/AudioManager;

.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mBroadcastHandler:Lcom/android/nfc/LNfcService$BroadcastHandler;

.field protected mCEPrefs:Landroid/content/SharedPreferences;

.field private mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

.field mHCEPackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsNfcModeOn:Z

.field protected mIsPowerSaveMode:Z

.field protected mIsQuickCoverOpen:Z

.field protected mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

.field protected mLDeviceHost:Lcom/android/nfc/LDeviceHost;

.field protected mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

.field protected mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

.field protected final mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

.field protected final mLgNfcReceiver:Landroid/content/BroadcastReceiver;

.field protected mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

.field protected mLgNfcTestReceiver:Landroid/content/BroadcastReceiver;

.field protected mLgNfcUIReceiver:Landroid/content/BroadcastReceiver;

.field protected mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

.field protected mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

.field protected mOffReturn:Z

.field private mPackageCheckHandler:Lcom/android/nfc/LNfcService$PackageCheckHandler;

.field protected mPopupList:Lcom/android/nfc/LNfcPopupList;

.field protected mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

.field mPreScreenState:I

.field protected mRequireForceEnable:Z

.field protected mRequireForceP2PEnable:Z

.field protected mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

.field protected mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    aput-wide v2, v0, v1

    sput-object v0, Lcom/android/nfc/LNfcService;->VIBRATION_PATTERN:[J

    .line 172
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 173
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 2496
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 21
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;-><init>()V

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    .line 189
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    .line 208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2498
    new-instance v2, Lcom/android/nfc/LNfcService$BroadcastHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$BroadcastHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mBroadcastHandler:Lcom/android/nfc/LNfcService$BroadcastHandler;

    .line 2559
    new-instance v2, Lcom/android/nfc/LNfcService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$1;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 2570
    new-instance v2, Lcom/android/nfc/LNfcService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$2;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLgNfcUIReceiver:Landroid/content/BroadcastReceiver;

    .line 2581
    new-instance v2, Lcom/android/nfc/LNfcService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$3;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLgNfcTestReceiver:Landroid/content/BroadcastReceiver;

    .line 2592
    new-instance v2, Lcom/android/nfc/LNfcService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$4;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 2603
    new-instance v2, Lcom/android/nfc/LNfcService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$5;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    .line 2746
    new-instance v2, Lcom/android/nfc/LNfcService$PackageCheckHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$PackageCheckHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPackageCheckHandler:Lcom/android/nfc/LNfcService$PackageCheckHandler;

    .line 215
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/LNfcService;->mUserId:I

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    .line 218
    new-instance v2, Lcom/android/nfc/NfcService$TagService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 219
    new-instance v2, Lcom/android/nfc/LNfcService$LNfcAdapterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$LNfcAdapterService;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 220
    const-string v2, "LNfcService"

    const-string v3, "Starting NFC service"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 224
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 230
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 232
    new-instance v2, Lcom/android/nfc/handover/LHandoverDataParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/handover/LHandoverDataParser;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 235
    const/4 v14, 0x0

    .line 237
    .local v14, "isNfcProvisioningEnabled":Z
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    const/high16 v3, 0x7f060000

    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_e4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d7 .. :try_end_e4} :catch_459

    move-result v14

    .line 242
    :goto_e5
    if-eqz v14, :cond_44f

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 244
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    .line 243
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_44c

    const/4 v2, 0x1

    :goto_f5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    .line 250
    :goto_f9
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 251
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_14f

    .line 252
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    .line 253
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    .line 254
    const-string v2, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRequireForceEnable :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mInProvisionMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRequireForceP2PEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_14f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "NfcServicePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "NfcServiceCEPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 272
    new-instance v2, Lcom/android/nfc/NfceeAccessControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/LNfcService;->CardEmlationThreadstart()V

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/LNfcService;->mState:I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsNdefPushEnabled:Z

    .line 277
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsNdefPushEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 279
    const-string v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_456

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_456

    const/4 v2, 0x0

    :goto_1bb
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsDebugBuild:Z

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 284
    const/4 v3, 0x1

    const-string v4, "NfcService:mRoutingWakeLock"

    .line 283
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mUserManager:Landroid/os/UserManager;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/LNfcService;->mScreenState:I

    .line 297
    new-instance v2, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    .line 298
    new-instance v2, Lcom/android/nfc/LNfcIndicatorIcon;

    invoke-direct {v2}, Lcom/android/nfc/LNfcIndicatorIcon;-><init>()V

    sput-object v2, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    .line 299
    new-instance v2, Lcom/android/nfc/LNfcStatusManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/LNfcStatusManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    .line 300
    new-instance v2, Lcom/android/nfc/LNfcPopupList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/LNfcPopupList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mVibrator:Landroid/os/Vibrator;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->am:Landroid/media/AudioManager;

    .line 320
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    if-eqz v2, :cond_281

    .line 321
    const/4 v2, 0x2

    sput v2, Lcom/android/nfc/NfcService;->NFC_POLLING_MODE:I

    .line 324
    :cond_281
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    if-eqz v2, :cond_294

    .line 325
    new-instance v2, Lcom/android/nfc/lgsharing/LSharingManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/lgsharing/LSharingManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 328
    :cond_294
    new-instance v2, Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 343
    new-instance v15, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v15, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v15, "ownerFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    new-instance v15, Landroid/content/IntentFilter;

    .end local v15    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .restart local v15    # "ownerFilter":Landroid/content/IntentFilter;
    const/16 v2, -0x64

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 349
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v2, "package"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/LNfcService;->updatePackageCache()V

    .line 360
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerScreenLockIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 367
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerResetSettingIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 369
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v2, v3, :cond_319

    .line 370
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerPowerSaveActivationToOthersIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 373
    :cond_319
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    if-eqz v2, :cond_323

    .line 374
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerWirelessChargeIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 377
    :cond_323
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/nfc/LNfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 380
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerBeamUIFinishIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 382
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerPhoneStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 385
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isNotUserMode()Z

    move-result v2

    if-eqz v2, :cond_371

    .line 386
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerTestTransactionEventIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcTestReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 391
    :cond_371
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerSimStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v17

    .line 394
    .local v17, "simIntent":Landroid/content/Intent;
    if-eqz v17, :cond_397

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/LNfcService;->receivedSimStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 398
    :cond_397
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-eqz v2, :cond_3b5

    .line 399
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerSimChangedInfoIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 404
    :cond_3b5
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-eqz v2, :cond_3e7

    .line 405
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/android/nfc/LNfcCommon;->registerSmartCoverIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v12

    .line 409
    .local v12, "accessoryEventIntent":Landroid/content/Intent;
    if-eqz v12, :cond_3e7

    .line 410
    const-string v2, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 411
    .local v18, "state":I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3e7

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 417
    .end local v12    # "accessoryEventIntent":Landroid/content/Intent;
    .end local v18    # "state":I
    :cond_3e7
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 418
    .local v9, "policyFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/LNfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 420
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.lge.nfc.action.start"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v13, "intentNfc":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v3, "LNfcService"

    const-string v4, "send action : com.lge.nfc.action.start"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 428
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.nfc.hce"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    .line 435
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/LNfcService;->mPreScreenState:I

    .line 445
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/LNfcService;->mActivityManager:Landroid/app/ActivityManager;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/LNfcService;->collectNfcRelatedServices()Z

    .line 449
    return-void

    .line 243
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "policyFilter":Landroid/content/IntentFilter;
    .end local v13    # "intentNfc":Landroid/content/Intent;
    .end local v15    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "simIntent":Landroid/content/Intent;
    :cond_44c
    const/4 v2, 0x0

    goto/16 :goto_f5

    .line 246
    :cond_44f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    goto/16 :goto_f9

    .line 279
    :cond_456
    const/4 v2, 0x1

    goto/16 :goto_1bb

    :catch_459
    move-exception v2

    goto/16 :goto_e5
.end method

.method static synthetic access$1(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/LNfcService;
    .registers 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    check-cast v0, Lcom/android/nfc/LNfcService;

    return-object v0
.end method

.method public static bridge synthetic getInstance()Lcom/android/nfc/NfcService;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/LNfcService;->getInstance()Lcom/android/nfc/LNfcService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CardEmlationThreadstart()V
    .registers 3

    .prologue
    .line 1833
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/nfc/LNfcService$6;

    invoke-direct {v1, p0}, Lcom/android/nfc/LNfcService$6;-><init>(Lcom/android/nfc/LNfcService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1844
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1845
    return-void
.end method

.method protected applyNfcTagLongTimePopup(Lcom/android/nfc/DeviceHost$TagEndpoint;)Z
    .registers 6
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    const/4 v0, 0x0

    .line 2098
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2112
    :goto_7
    return v0

    .line 2102
    :cond_8
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    if-eqz v1, :cond_24

    .line 2103
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isAllAutoTestMode()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2104
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2105
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v2, "com.isis.testsuite.nfc.PermOn"

    invoke-static {v1, v2}, Lcom/android/nfc/LNfcCommon;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2106
    :cond_24
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v2, "LNfcService"

    const-string v3, "sendIntenttoNfcTagDetectLongTimeDialog - disable"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2109
    :cond_2e
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    if-eqz v0, :cond_37

    .line 2110
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcPopupList;->applyNfcTagLongTimePopup()Z

    .line 2112
    :cond_37
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected applyWirelessChargingMode(Z)V
    .registers 7
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2066
    if-eqz p1, :cond_1f

    .line 2068
    const/16 v1, 0x34

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2095
    :cond_c
    :goto_c
    return-void

    .line 2073
    :cond_d
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c

    .line 2076
    :cond_1f
    const/16 v1, 0x36

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2079
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2081
    const/16 v1, 0x33

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    move-result v0

    .line 2082
    .local v0, "result":Z
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chage WirelessCharging Status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 2087
    .end local v0    # "result":Z
    :cond_48
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v1, v2, :cond_6d

    .line 2088
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    if-eqz v1, :cond_6d

    .line 2089
    const-string v1, "LNfcService"

    const-string v2, "POWER SAVE MODE"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c

    .line 2093
    :cond_6d
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c
.end method

.method protected changeHceRouteWhenNoApp()V
    .registers 3

    .prologue
    .line 2464
    const-string v0, "LNfcService"

    const-string v1, "changeHceRouteWhenNoApp"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    return-void
.end method

.method public checkDisable()V
    .registers 1

    .prologue
    .line 1275
    return-void
.end method

.method public checkNfcLockEnabled()Z
    .registers 2

    .prologue
    .line 1829
    const/4 v0, 0x0

    return v0
.end method

.method protected checkPowerOffConfig(Z)Z
    .registers 6
    .param p1, "saveState"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1278
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v3, "na"

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p1, :cond_12

    .line 1279
    iput-boolean v0, p0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1282
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected collectNfcRelatedServices()Z
    .registers 9

    .prologue
    const/16 v7, 0x20

    .line 2468
    const/4 v3, 0x0

    .line 2469
    .local v3, "preSize":I
    const/4 v0, 0x0

    .line 2471
    .local v0, "currSize":I
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    if-eqz v4, :cond_11

    .line 2472
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2473
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    .line 2477
    :cond_11
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2480
    .local v2, "intentFilterServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2479
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2483
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2482
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2486
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    .line 2487
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_65

    .line 2491
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2493
    if-eq v0, v3, :cond_75

    const/4 v4, 0x1

    :goto_64
    return v4

    .line 2487
    :cond_65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2488
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 2493
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_75
    const/4 v4, 0x0

    goto :goto_64
.end method

.method protected initGSMA(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2301
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v0, :cond_2a

    .line 2302
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-nez v0, :cond_19

    .line 2303
    new-instance v1, Lcom/android/nfc/LGsmaAPIService;

    .line 2304
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    .line 2305
    :goto_12
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/nfc/LGsmaAPIService;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LCardEmulationManager;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V

    .line 2303
    iput-object v1, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    .line 2308
    :cond_19
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_2a

    .line 2309
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->multicast:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    if-ne v0, v1, :cond_2a

    .line 2310
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0}, Lcom/android/nfc/LGsmaAPIService;->enableMultiEvt_transactionReception()V

    .line 2313
    :cond_2a
    return-void

    .line 2304
    :cond_2b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method initSoundPool()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 454
    const-string v0, "LNfcService"

    const-string v1, "In initSoundPool"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-super {p0}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 457
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    if-nez v0, :cond_35

    .line 458
    new-instance v0, Lcom/android/nfc/utils/LNfcSoundPool;

    invoke-direct {v0, v5}, Lcom/android/nfc/utils/LNfcSoundPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    .line 459
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f050002

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;III)I

    .line 460
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;III)I

    .line 461
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;III)I

    .line 463
    :cond_35
    return-void
.end method

.method protected invalidateCacheForAccessControl()V
    .registers 2

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v0}, Lcom/android/nfc/NfceeAccessControl;->invalidateCache()V

    .line 2724
    return-void
.end method

.method protected isHCERoutingtoHost()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "ret":Z
    iget-boolean v3, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_30

    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_30

    .line 1247
    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "na"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v0, v1

    .line 1251
    :cond_19
    :goto_19
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHCERoutingtoHost() return : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return v0

    :cond_2e
    move v0, v2

    .line 1247
    goto :goto_19

    .line 1248
    :cond_30
    iget-boolean v3, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v3, v2, :cond_19

    .line 1249
    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "config"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "host"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    move v0, v1

    :goto_51
    goto :goto_19

    :cond_52
    move v0, v2

    goto :goto_51
.end method

.method isNfcEnabledOrShuttingDown()Z
    .registers 3

    .prologue
    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_14

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_12

    .line 1226
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected isRequireNfcCRouting()Z
    .registers 4

    .prologue
    .line 1233
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRequireNfcCRouting() return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v0

    return v0
.end method

.method protected manageShutdown()V
    .registers 1

    .prologue
    .line 2063
    return-void
.end method

.method newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;
    .registers 2

    .prologue
    .line 600
    new-instance v0, Lcom/android/nfc/LNfcService$LEnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;-><init>(Lcom/android/nfc/LNfcService;)V

    return-object v0
.end method

.method public onHostCardEmulationExceedAidTable()V
    .registers 8

    .prologue
    .line 2014
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v1, "LNfcService"

    const-string v2, "onHostCardEmulationExceedAidTable"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 2016
    const/16 v2, 0x67

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 2017
    return-void
.end method

.method protected onNfcEnabled()V
    .registers 2

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcEnabled()V

    .line 2739
    return-void
.end method

.method protected onReceiveLgNfcOwnerReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 2657
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2659
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v5, "LNfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mLgNfcOwnerReceiver Intent action: : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2661
    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_45

    .line 2662
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2663
    sget-boolean v4, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v5, "LNfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SKIP : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : No need"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2718
    :cond_44
    :goto_44
    return-void

    .line 2667
    :cond_45
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->collectNfcRelatedServices()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 2668
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 2669
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2670
    :cond_5b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2671
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_8d

    .line 2672
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 2673
    .local v2, "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v5, "LNfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "package Name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mHCEPackageNameList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 2675
    sget-boolean v4, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v5, "LNfcService"

    const-string v6, "SKIP! Changed/Replaced package is NOT releted to NFC."

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 2682
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8d
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2683
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2684
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2685
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2686
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2687
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2689
    :cond_bd
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->updatePackageCache()V

    .line 2692
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-eqz v4, :cond_cf

    .line 2693
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4, v8}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    .line 2697
    :cond_cf
    iget-boolean v4, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_f8

    .line 2698
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-nez v4, :cond_f8

    .line 2699
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 2700
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 2701
    :cond_e9
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mPackageCheckHandler:Lcom/android/nfc/LNfcService$PackageCheckHandler;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcService$PackageCheckHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2702
    .local v1, "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 2703
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2704
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mPackageCheckHandler:Lcom/android/nfc/LNfcService$PackageCheckHandler;

    invoke-virtual {v4, v1}, Lcom/android/nfc/LNfcService$PackageCheckHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2707
    .end local v1    # "msg":Landroid/os/Message;
    :cond_f8
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 2711
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->invalidateCacheForAccessControl()V

    .line 2714
    :cond_103
    sget-object v4, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v5, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v6, "host_uicc"

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2715
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->changeHceRouteWhenNoApp()V

    goto/16 :goto_44
.end method

.method protected onReceiveLgNfcReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2617
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2618
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2619
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2620
    const-string v1, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2621
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedScreenStateIntent(Landroid/content/Context;Landroid/content/Intent;)I

    .line 2638
    :cond_2f
    :goto_2f
    return-void

    .line 2622
    :cond_30
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2623
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedAirPlaneIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2f

    .line 2624
    :cond_3c
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2625
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedUserSwitchedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2f

    .line 2626
    :cond_48
    const-string v1, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2627
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedPowerSavedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2f

    .line 2628
    :cond_54
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 2629
    const-string v1, "com.lge.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2630
    :cond_64
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2f

    .line 2631
    :cond_68
    const-string v1, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2633
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->resetSettings()Z

    goto :goto_2f

    .line 2634
    :cond_74
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2635
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    .line 2636
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->receivedShutDownIntent()V

    goto :goto_2f
.end method

.method protected onReceiveLgNfcSIMReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2728
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2729
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2730
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedSimStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2734
    :cond_f
    :goto_f
    return-void

    .line 2731
    :cond_10
    const-string v1, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2732
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedSimChangedInfoIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected onReceiveLgNfcTestReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2651
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.nfc.test.TRANSACTION_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2652
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->receivedTestTransactionEventIntent()V

    .line 2654
    :cond_f
    return-void
.end method

.method protected onReceiveLgNfcUIReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2642
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2643
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedPhoneStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2647
    :cond_f
    :goto_f
    return-void

    .line 2644
    :cond_10
    invoke-static {v0}, Lcom/android/nfc/LNfcCommon;->isBeamUIFinishIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2645
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LNfcService;->receivedAlarmClockIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public onRoutingTableUpdateSuccesful()V
    .registers 8

    .prologue
    .line 2021
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v1, "LNfcService"

    const-string v2, "routingTableUpdateSuccesful"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2022
    const/16 v2, 0x69

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 2023
    return-void
.end method

.method protected onUserSwitched(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 2743
    return-void
.end method

.method public playErrorSound(Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 4
    .param p1, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    .line 524
    const-string v0, "LNfcService"

    const-string v1, "playErrorSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_11

    .line 526
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService;->playErrorSound(Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 538
    :cond_10
    :goto_10
    return-void

    .line 530
    :cond_11
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->onlyndefdiscovered:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-eq v0, v1, :cond_10

    .line 531
    if-eqz p1, :cond_21

    .line 532
    iget v0, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_10

    .line 533
    :cond_21
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->playVibrate()V

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    .line 535
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    goto :goto_10
.end method

.method public playNotSuportedSound()V
    .registers 4

    .prologue
    .line 554
    const-string v0, "LNfcService"

    const-string v1, "playNotSuportedSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isDefalutOffModel()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/LNfcCommon;->isProvisionState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 556
    const-string v0, "LNfcService"

    const-string v1, "skip playNotSuportedSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_1c
    return-void

    .line 559
    :cond_1d
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_27

    .line 560
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playNotSuportedSound()V

    goto :goto_1c

    .line 563
    :cond_27
    const-string v0, "LNfcService"

    const-string v1, "Tag not supported"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    const/4 v2, 0x0

    .line 564
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method

.method public playSound(I)V
    .registers 10
    .param p1, "sound"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 480
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "playSound - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 482
    :cond_29
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v7

    .line 483
    .local v7, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v7, :cond_43

    .line 484
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 485
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 498
    .end local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :goto_42
    return-void

    .line 489
    .restart local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_43
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    if-nez v0, :cond_4f

    .line 490
    const-string v0, "LNfcService"

    const-string v1, "mNfcRingSoundPool is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 494
    :cond_4f
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/utils/LNfcSoundPool;->play(IFFIIF)I

    goto :goto_42

    .line 497
    .end local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_59
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_42
.end method

.method public playStartSound()V
    .registers 3

    .prologue
    .line 515
    const-string v0, "LNfcService"

    const-string v1, "playStartSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_10

    .line 517
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playStartSound()V

    .line 520
    :cond_10
    return-void
.end method

.method public playSuccessSound()V
    .registers 3

    .prologue
    .line 542
    const-string v0, "LNfcService"

    const-string v1, "playSuccessSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_11

    .line 544
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playSuccessSound()V

    .line 550
    :goto_10
    return-void

    .line 547
    :cond_11
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->playVibrate()V

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    goto :goto_10
.end method

.method protected playVibrate()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 501
    const-string v2, "LNfcService"

    const-string v3, "playVibrate"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 503
    .local v1, "ringermode":I
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->usevibrate:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-ne v2, v3, :cond_18

    .line 504
    if-eq v1, v0, :cond_23

    .line 505
    :cond_18
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->onlyndefdiscovered:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-ne v2, v3, :cond_22

    .line 503
    if-gtz v1, :cond_23

    :cond_22
    const/4 v0, 0x0

    .line 508
    .local v0, "isVibrateOn":Z
    :cond_23
    if-eqz v0, :cond_2d

    .line 509
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mVibrator:Landroid/os/Vibrator;

    sget-object v3, Lcom/android/nfc/LNfcService;->VIBRATION_PATTERN:[J

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 511
    :cond_2d
    return-void
.end method

.method protected receivedAirPlaneIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2197
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2201
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eq v0, v1, :cond_f

    .line 2224
    :cond_e
    :goto_e
    return-void

    .line 2204
    :cond_f
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_e

    .line 2207
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2208
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2209
    if-eqz v0, :cond_32

    .line 2210
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e

    .line 2211
    :cond_32
    if-nez v0, :cond_e

    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v1, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2212
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_e

    .line 2213
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v1

    const/16 v2, 0x34

    if-eq v1, v2, :cond_e

    .line 2216
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v1, v2, :cond_71

    .line 2217
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    if-eqz v1, :cond_71

    .line 2218
    const-string v1, "LNfcService"

    const-string v2, "POWER SAVE MODE"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e

    .line 2222
    :cond_71
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method protected receivedAlarmClockIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 2298
    return-void
.end method

.method protected receivedBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x65

    const/4 v6, 0x0

    .line 2277
    const-string v1, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2280
    .local v0, "plugged_infor":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 2281
    const/4 v3, 0x0

    const-wide/16 v4, 0x1b58

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 2286
    :goto_14
    return-void

    .line 2283
    :cond_15
    invoke-virtual {p0, v2}, Lcom/android/nfc/LNfcService;->removeMessage(I)V

    .line 2284
    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService;->applyWirelessChargingMode(Z)V

    goto :goto_14
.end method

.method protected receivedPhoneStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2289
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_15

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2292
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 2294
    :cond_15
    return-void
.end method

.method protected receivedPowerSavedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2246
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-ne v2, v3, :cond_12

    .line 2247
    const-string v2, "LNfcService"

    const-string v3, "NFC not support POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    :cond_11
    :goto_11
    return-void

    .line 2251
    :cond_12
    const-string v2, "powersave_activation"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2252
    .local v0, "doActivation":I
    const-string v2, "powersave_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2254
    .local v1, "name":Ljava/lang/String;
    const-string v2, "LNfcService"

    const-string v3, "POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    if-eqz v1, :cond_5a

    const-string v2, "power_save_nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2257
    if-lez v0, :cond_11

    .line 2258
    iput-boolean v4, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 2259
    const-string v2, "LNfcService"

    const-string v3, "POWER_SAVER_MODE_ACTIVE"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v2

    if-nez v2, :cond_48

    .line 2262
    const-string v2, "LNfcService"

    const-string v3, "NFC system is not intialized"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2265
    :cond_48
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11

    .line 2267
    :cond_5a
    if-ge v0, v4, :cond_11

    .line 2268
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_73

    .line 2269
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2271
    :cond_73
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 2272
    const-string v2, "LNfcService"

    const-string v3, "POWER_SAVER_MODE_DE_ACTIVE"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected receivedScreenStateIntent(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2117
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 2119
    .local v1, "screenState":I
    const-string v7, "LNfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "action : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    sget-object v7, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-eqz v7, :cond_80

    const-string v7, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 2123
    const-string v7, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2124
    .local v2, "state":I
    if-nez v2, :cond_72

    .line 2126
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 2127
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_70

    move v1, v3

    .line 2149
    .end local v2    # "state":I
    :cond_3c
    :goto_3c
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 2150
    const/4 v1, 0x1

    .line 2183
    :cond_45
    :goto_45
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    if-eqz v3, :cond_109

    .line 2184
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    if-eq v3, v4, :cond_109

    .line 2185
    iget-boolean v3, p0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-nez v3, :cond_109

    .line 2186
    sget-object v3, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcIndicatorIcon;->removeNfcIndicatorIcon(Landroid/content/Context;)V

    .line 2191
    :cond_5e
    :goto_5e
    new-instance v3, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v3, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v5, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v3, v1

    .line 2193
    :goto_6f
    return v3

    .restart local v2    # "state":I
    :cond_70
    move v1, v4

    .line 2128
    goto :goto_3c

    .line 2129
    :cond_72
    if-ne v2, v5, :cond_7e

    .line 2131
    iput-boolean v6, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 2132
    iget v7, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v7, v5, :cond_7c

    move v1, v5

    .line 2140
    :goto_7b
    goto :goto_3c

    :cond_7c
    move v1, v3

    .line 2133
    goto :goto_7b

    :cond_7e
    move v3, v6

    .line 2141
    goto :goto_6f

    .line 2143
    .end local v2    # "state":I
    :cond_80
    sget-object v7, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-nez v7, :cond_3c

    .line 2144
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 2145
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_90

    move v1, v3

    :goto_8f
    goto :goto_3c

    :cond_90
    move v1, v4

    .line 2146
    goto :goto_8f

    .line 2151
    :cond_92
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 2156
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-nez v7, :cond_a4

    iget-boolean v7, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    if-nez v7, :cond_a6

    :cond_a4
    move v1, v3

    .line 2159
    :goto_a5
    goto :goto_45

    :cond_a6
    move v1, v4

    .line 2158
    goto :goto_a5

    .line 2159
    :cond_a8
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 2160
    iget-object v7, p0, Lcom/android/nfc/LNfcService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_c3

    .line 2161
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    const-string v8, "Ignore ACTION_USER_PRESENT when Screen Off : "

    invoke-static {v3, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2162
    const/4 v1, 0x1

    .line 2163
    goto :goto_45

    :cond_c3
    iget-boolean v7, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    if-eqz v7, :cond_d2

    .line 2164
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_d0

    move v1, v3

    .line 2166
    :goto_ce
    goto/16 :goto_45

    :cond_d0
    move v1, v4

    .line 2165
    goto :goto_ce

    .line 2167
    :cond_d2
    iget v1, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    .line 2169
    goto/16 :goto_45

    :cond_d6
    const-string v3, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2171
    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v3, v4, :cond_ed

    .line 2172
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v4, "LNfcService"

    const-string v5, "Would be SCREEN_STATE_OFF! Skip LOCKSCREEN_CREATE INTENT"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 2173
    goto :goto_6f

    .line 2174
    :cond_ed
    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-eq v3, v5, :cond_fd

    .line 2175
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    const-string v8, "LOCKSCREEN_CREATE INTENT received"

    invoke-static {v3, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2176
    const/4 v1, 0x2

    .line 2177
    goto/16 :goto_45

    .line 2178
    :cond_fd
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v4, "LNfcService"

    const-string v5, "Already SCREEN_STATE_OFF! Skip LOCKSCREEN_CREATE INTENT"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 2179
    goto/16 :goto_6f

    .line 2187
    :cond_109
    if-eq v1, v5, :cond_5e

    .line 2188
    sget-object v3, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcIndicatorIcon;->restoreNfcIndicatorIcon(Landroid/content/Context;)V

    goto/16 :goto_5e
.end method

.method protected receivedShutDownIntent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2418
    const-string v0, "LNfcService"

    const-string v1, "Device is shutting down."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1d

    .line 2421
    const-string v0, "LNfcService"

    const-string v1, "unregisterReceiver : mLgNfcSIMReceiver"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    .line 2427
    :cond_1d
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_fwdl_try_cnt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2428
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2430
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PREF_FWDL_TRY_CNT reset : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "nfc_fwdl_try_cnt"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    return-void
.end method

.method protected receivedSimChangedInfoIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2394
    const-string v0, "LNfcService"

    const-string v1, "SIM_CHANGED_INFO event :"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    return-void
.end method

.method protected receivedSimStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2316
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2319
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "slot"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2320
    .local v2, "slot_id":I
    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "slot_id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    if-eqz v2, :cond_2e

    .line 2322
    const-string v4, "LNfcService"

    const-string v5, "This intent do not need in NfcService"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    :cond_2d
    :goto_2d
    return-void

    .line 2327
    :cond_2e
    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SIM_STATE_CHANGED event stateExtra :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mSIMSwapEnable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mSIMSwapEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mSIMSwapEnable:Z

    if-eqz v4, :cond_fb

    .line 2331
    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 2333
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mSIMSwapEnable:Z

    if-eqz v4, :cond_7e

    .line 2334
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2337
    :cond_7e
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigure;->resetOpenarrayPowerStatus()Ljava/lang/String;

    .line 2338
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 2339
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDefaultStatusSetting()V

    .line 2342
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2344
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService;->initGSMA(Landroid/content/Context;)V

    .line 2363
    :goto_9f
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mSIMSwapEnable:Z

    if-nez v4, :cond_2d

    .line 2364
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2d

    .line 2346
    :cond_ad
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 2347
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 2348
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, "oncardrwp2p"

    sget-object v5, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 2350
    :cond_d1
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcStatusManager;->isNfcStatusSetting()Z

    move-result v4

    if-nez v4, :cond_e3

    .line 2351
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigure;->resetOpenarrayPowerStatus()Ljava/lang/String;

    .line 2352
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 2356
    :cond_e3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9f

    .line 2360
    :cond_f3
    const-string v4, "LNfcService"

    const-string v5, "UICC Load is not complete "

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 2368
    :cond_fb
    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10b

    .line 2369
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 2371
    :cond_10b
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-eqz v4, :cond_141

    .line 2372
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v4, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 2373
    .local v1, "beforeStatus":Ljava/lang/String;
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigure;->resetOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, "afterStatus":Ljava/lang/String;
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_141

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_141

    .line 2376
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 2378
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2382
    .end local v0    # "afterStatus":Ljava/lang/String;
    .end local v1    # "beforeStatus":Ljava/lang/String;
    :cond_141
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService;->initGSMA(Landroid/content/Context;)V

    .line 2384
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2385
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/LNfcService;->mLgNfcSIMReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_2d

    .line 2388
    :cond_150
    const-string v4, "LNfcService"

    const-string v5, "UICC Load is not complete "

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d
.end method

.method protected receivedTestTransactionEventIntent()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2434
    const-string v0, "LNfcService"

    const-string v1, "receivedTestTransactionEventIntent"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    const/4 v1, 0x6

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    aput-byte v3, v1, v3

    aput-byte v4, v1, v4

    aput-byte v5, v1, v5

    aput-byte v6, v1, v6

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService;->intentAccessControl([B[B)Z

    .line 2436
    return-void
.end method

.method protected receivedUserSwitchedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2227
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2228
    .local v0, "userId":I
    monitor-enter p0

    .line 2229
    :try_start_8
    iput v0, p0, Lcom/android/nfc/LNfcService;->mUserId:I

    .line 2228
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 2231
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 2232
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_1f

    .line 2235
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService;->onUserSwitched(I)V

    .line 2239
    :cond_1f
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-nez v1, :cond_27

    .line 2243
    :goto_23
    return-void

    .line 2228
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 2242
    :cond_27
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/utils/LNfcPopupPreference;->setUserID(I)V

    goto :goto_23
.end method

.method releaseSoundPool()V
    .registers 2

    .prologue
    .line 469
    monitor-enter p0

    .line 470
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    if-eqz v0, :cond_d

    .line 471
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->release()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcRingSoundPool:Lcom/android/nfc/utils/LNfcSoundPool;

    .line 469
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 475
    invoke-super {p0}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    .line 476
    return-void

    .line 469
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method removeMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2048
    :goto_8
    return-void

    .line 2047
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    goto :goto_8
.end method

.method protected resetSettings()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2440
    const-string v2, "LNfcService"

    const-string v3, "resetSettings"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_15

    .line 2442
    const-string v1, "LNfcService"

    const-string v2, "mPrefsEditor is null!"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :goto_14
    return v0

    .line 2446
    :cond_15
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2447
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2449
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-eqz v2, :cond_28

    .line 2450
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupPreference;->resetPopupPreference()V

    .line 2453
    :cond_28
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "nfc_payment_foreground"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2455
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 2457
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 2459
    goto :goto_14
.end method

.method saveAirplaneSetting()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2051
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2052
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneToggleable:Z

    if-nez v1, :cond_18

    .line 2053
    const-string v0, "LNfcService"

    const-string v1, "denying request (airplane mode)"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const/4 v0, 0x0

    .line 2060
    :cond_17
    :goto_17
    return v0

    .line 2057
    :cond_18
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2058
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_17
.end method

.method sendMessageDelay(ILjava/lang/Object;JZ)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J
    .param p5, "isReset"    # Z

    .prologue
    .line 2031
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2032
    if-nez p5, :cond_b

    .line 2041
    :goto_a
    return-void

    .line 2035
    :cond_b
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 2037
    :cond_10
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2038
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2039
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2040
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a
.end method

.method sendNfcAddonStateChangeIntent()V
    .registers 5

    .prologue
    .line 1197
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendNfcAddonStateChangeIntent : (Sys : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1198
    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, "intentAddon":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1201
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1208
    return-void
.end method

.method sendUnifiedSettingIntent(Ljava/lang/String;II)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "previous_value"    # I
    .param p3, "new_value"    # I

    .prologue
    .line 1212
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.verizon.provider.ACTION_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v0, "vzwIntent":Landroid/content/Intent;
    const-string v1, "setting"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const-string v1, "previous_value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v1, "new_value"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1218
    const-string v3, "com.verizon.settings.permission.RECEIVE_UPDATED_SETTING"

    .line 1217
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1219
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendUnifiedSettingIntent : sendBroadcast() key=, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    .end local v0    # "vzwIntent":Landroid/content/Intent;
    :cond_5b
    return-void
.end method

.method public setDefaultDest(I)V
    .registers 5
    .param p1, "route"    # I

    .prologue
    .line 2026
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v1, "LNfcService"

    const-string v2, "setDefaultDest"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2027
    const/16 v0, 0x68

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2028
    return-void
.end method

.method public setPowerConfig()V
    .registers 1

    .prologue
    .line 1270
    return-void
.end method

.method updatePackageCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-super {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 573
    const-string v0, "LNfcService"

    const-string v1, "updatePackageCache"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;-><init>(Lcom/android/nfc/LNfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 579
    return-void
.end method
