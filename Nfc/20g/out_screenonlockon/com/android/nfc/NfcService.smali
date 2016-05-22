.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$ReaderModeParams;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$WatchDogThread;
    }
.end annotation


# static fields
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field protected static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_ON_DEFAULT:Z = true

.field static NFC_POLLING_MODE:I = 0x0

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field protected static sService:Lcom/android/nfc/NfcService;


# instance fields
.field protected mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field protected mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field protected mDeviceHost:Lcom/android/nfc/DeviceHost;

.field mEndSound:I

.field mErrorSound:I

.field protected mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field protected mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field protected mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsNdefPushEnabled:Z

.field protected mKeyguard:Landroid/app/KeyguardManager;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field protected mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field protected mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field protected mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field protected final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field protected mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenState:I

.field protected mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    .line 138
    const/4 v0, 0x3

    sput v0, Lcom/android/nfc/NfcService;->NFC_POLLING_MODE:I

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 197
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 2052
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 2076
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2127
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 2145
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 2212
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 15
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 197
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 2052
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 2076
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2127
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 2145
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 313
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 315
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 316
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 317
    const-string v0, "NfcService"

    const-string v1, "Starting NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 321
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 322
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 323
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 325
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 327
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 328
    const/4 v10, 0x0

    .line 330
    .local v10, "isNfcProvisioningEnabled":Z
    :try_start_7a
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 331
    const/high16 v1, 0x7f060000

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_85
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_85} :catch_1e5

    move-result v10

    .line 335
    :goto_86
    if-eqz v10, :cond_1dd

    .line 336
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 337
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    .line 336
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1da

    const/4 v0, 0x1

    :goto_94
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 342
    :goto_96
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v4}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 343
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 344
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    .line 343
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 346
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServicePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 347
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 349
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 351
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mState:I

    .line 352
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 355
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e2

    const/4 v0, 0x0

    :goto_fe
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 357
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 359
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 360
    const/4 v1, 0x1

    const-string v2, "NfcService:mRoutingWakeLock"

    .line 359
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 362
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 363
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 365
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 367
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 370
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 375
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 377
    new-instance v11, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 378
    .local v11, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .restart local v11    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v0, "package"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 388
    .local v7, "policyFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 392
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 393
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 394
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1c0

    .line 395
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 397
    :cond_1c0
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 398
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 399
    return-void

    .line 336
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "policyFilter":Landroid/content/IntentFilter;
    .end local v11    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_1da
    const/4 v0, 0x0

    goto/16 :goto_94

    .line 339
    :cond_1dd
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_96

    .line 355
    :cond_1e2
    const/4 v0, 0x1

    goto/16 :goto_fe

    :catch_1e5
    move-exception v0

    goto/16 :goto_86
.end method

.method static synthetic access$0(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 1475
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 1486
    :cond_b
    return-object v0

    .line 1476
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1477
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_29

    .line 1478
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1479
    add-int/lit8 v2, v2, 0x1

    .line 1481
    :cond_29
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 1482
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v2, :cond_b

    .line 1483
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 1484
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 1483
    aput-byte v4, v0, v3

    .line 1482
    add-int/lit8 v1, v1, 0x2

    goto :goto_2e
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/NfcService;III)Landroid/media/SoundPool;
    .registers 5

    .prologue
    new-instance v0, Landroid/media/SoundPool;

    .line 405
    invoke-direct {v0, p1, p2, p3}, Landroid/media/SoundPool;-><init>(III)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/NfcService;IIILcom/android/nfc/aspectj/ANfcSoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;
    .registers 12
    .param p0, "ajc$this"    # Lcom/android/nfc/NfcService;
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ANfcSoundPool;
    .param p5, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 30
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    const-string v4, "around() : call(SoundPool.new(..))"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/nfc/utils/LNfcSoundPool;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/nfc/utils/LNfcSoundPool;-><init>(I)V

    .line 33
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create NfcSoundPool : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    .line 36
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-static {p4}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v1
.end method

.method private static final load_aroundBody2(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;II)I
    .registers 6

    .prologue
    .line 407
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static final load_aroundBody3$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 27

    .prologue
    .line 41
    move-object/from16 v5, p0

    .local v5, "ajc$this":Lcom/android/nfc/NfcService;
    move-object/from16 v6, p1

    .local v6, "target":Landroid/media/SoundPool;
    move-object/from16 v7, p2

    .local v7, "context":Landroid/content/Context;
    move/from16 v8, p3

    .local v8, "resId":I
    move/from16 v9, p4

    .local v9, "priority":I
    move-object/from16 v10, p5

    .local v10, "ajc$aspectInstance":Lcom/android/nfc/aspectj/ANfcSoundPool;
    move-object/from16 v11, p6

    .local v11, "soundPool":Landroid/media/SoundPool;
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v15, p10

    .local v15, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {v10}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 42
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.load()) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_3c

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_3b
    return v1

    :cond_3c
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_3b
.end method

.method private static final load_aroundBody4(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;II)I
    .registers 6

    .prologue
    .line 408
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static final load_aroundBody5$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 27

    .prologue
    .line 41
    move-object/from16 v5, p0

    .local v5, "ajc$this":Lcom/android/nfc/NfcService;
    move-object/from16 v6, p1

    .local v6, "target":Landroid/media/SoundPool;
    move-object/from16 v7, p2

    .local v7, "context":Landroid/content/Context;
    move/from16 v8, p3

    .local v8, "resId":I
    move/from16 v9, p4

    .local v9, "priority":I
    move-object/from16 v10, p5

    .local v10, "ajc$aspectInstance":Lcom/android/nfc/aspectj/ANfcSoundPool;
    move-object/from16 v11, p6

    .local v11, "soundPool":Landroid/media/SoundPool;
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v15, p10

    .local v15, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {v10}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 42
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.load()) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_3c

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_3b
    return v1

    :cond_3c
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_3b
.end method

.method private static final load_aroundBody6(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;II)I
    .registers 6

    .prologue
    .line 409
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static final load_aroundBody7$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 27

    .prologue
    .line 41
    move-object/from16 v5, p0

    .local v5, "ajc$this":Lcom/android/nfc/NfcService;
    move-object/from16 v6, p1

    .local v6, "target":Landroid/media/SoundPool;
    move-object/from16 v7, p2

    .local v7, "context":Landroid/content/Context;
    move/from16 v8, p3

    .local v8, "resId":I
    move/from16 v9, p4

    .local v9, "priority":I
    move-object/from16 v10, p5

    .local v10, "ajc$aspectInstance":Lcom/android/nfc/aspectj/ANfcSoundPool;
    move-object/from16 v11, p6

    .local v11, "soundPool":Landroid/media/SoundPool;
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v15, p10

    .local v15, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {v10}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 42
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.load()) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_3c

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_3b
    return v1

    :cond_3c
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_3b
.end method

.method private static final release_aroundBody8(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;)V
    .registers 2

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method private static final release_aroundBody9$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Lcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 10
    .param p0, "ajc$this"    # Lcom/android/nfc/NfcService;
    .param p1, "target"    # Landroid/media/SoundPool;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ANfcSoundPool;
    .param p3, "soundPool"    # Landroid/media/SoundPool;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 50
    invoke-static {p2}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 51
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.release(..)) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_2e

    .line 53
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->release()V

    .line 54
    invoke-static {p2}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2e
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 2169
    packed-switch p0, :pswitch_data_12

    .line 2179
    const-string v0, "<error>"

    :goto_5
    return-object v0

    .line 2171
    :pswitch_6
    const-string v0, "off"

    goto :goto_5

    .line 2173
    :pswitch_9
    const-string v0, "turning on"

    goto :goto_5

    .line 2175
    :pswitch_c
    const-string v0, "on"

    goto :goto_5

    .line 2177
    :pswitch_f
    const-string v0, "turning off"

    goto :goto_5

    .line 2169
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method applyRouting(Z)V
    .registers 9
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1493
    monitor-enter p0

    .line 1494
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1495
    monitor-exit p0

    .line 1550
    :goto_a
    return-void

    .line 1497
    :cond_b
    new-instance v1, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v4, "applyRouting"

    const/16 v5, 0x2710

    invoke-direct {v1, p0, v4, v5}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1498
    .local v1, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v4, :cond_2e

    .line 1499
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1500
    const-string v5, "device_provisioned"

    const/4 v6, 0x0

    .line 1499
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_54

    :goto_23
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 1501
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v2, :cond_2e

    .line 1504
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 1509
    :cond_2e
    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_56

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1510
    const-string v2, "NfcService"

    const-string v3, "Not updating discovery parameters, tag connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1512
    const-wide/16 v4, 0x1388

    .line 1511
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1513
    monitor-exit p0

    goto :goto_a

    .line 1493
    .end local v1    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_51
    move-exception v2

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v2

    .restart local v1    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_54
    move v2, v3

    .line 1499
    goto :goto_23

    .line 1517
    :cond_56
    :try_start_56
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1519
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService;->updateScreenStateConfigure(Z)V

    .line 1523
    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 1525
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCurrentDiscoveryParameters.techmask= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v4}, Lcom/android/nfc/NfcDiscoveryParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newParams.techmask= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "screenState= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    if-nez p1, :cond_b4

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 1531
    :cond_b4
    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->excuteDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;)V

    .line 1542
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/NfcService;->postExcuteDiscovery(ZI)V
    :try_end_bd
    .catchall {:try_start_56 .. :try_end_bd} :catchall_cb

    .line 1547
    :goto_bd
    :try_start_bd
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1493
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_51

    goto/16 :goto_a

    .line 1544
    :cond_c3
    :try_start_c3
    const-string v2, "NfcService"

    const-string v3, "Discovery configuration equal, not updating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_cb

    goto :goto_bd

    .line 1546
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_cb
    move-exception v2

    .line 1547
    :try_start_cc
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1548
    throw v2
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_51
.end method

.method public commitRouting()V
    .registers 3

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1735
    return-void
.end method

.method protected computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 9
    .param p1, "screenState"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1557
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 1561
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isRequireNfcCRouting()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1562
    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setCardTechMask(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V

    .line 1601
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isHCERoutingtoHost()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1604
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1608
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setOtherDiscoveryParams(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V

    .line 1611
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    return-object v2

    .line 1566
    :cond_22
	
    const/4 v2, 0x2

    if-lt p1, v2, :cond_6d

    .line 1568
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v2, :cond_64

    .line 1569
    const/4 v1, 0x0

    .line 1570
    .local v1, "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    .line 1571
    or-int/lit8 v1, v1, 0x1

    .line 1572
    :cond_35
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3f

    .line 1573
    or-int/lit8 v1, v1, 0x2

    .line 1574
    :cond_3f
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_49

    .line 1575
    or-int/lit8 v1, v1, 0x4

    .line 1576
    :cond_49
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_53

    .line 1577
    or-int/lit8 v1, v1, 0x8

    .line 1578
    :cond_53
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5d

    .line 1579
    or-int/lit8 v1, v1, 0x20

    .line 1581
    :cond_5d
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1582
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_11

    .line 1584
    .end local v1    # "techMask":I
    :cond_64
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1585
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_11

    .line 1587
    :cond_6d
    if-ne p1, v6, :cond_7a

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_7a

    .line 1588
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1590
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_11

    .line 1591
    :cond_7a
    if-ne p1, v6, :cond_11

    .line 1592
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1594
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1595
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1596
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto/16 :goto_11
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .registers 4
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 12
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 6
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method deinitializeDeviceHost()Z
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    :goto_3a
    return-void

    .line 2192
    :cond_3b
    monitor-enter p0

    .line 2193
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsZeroClickRequested="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mScreenState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsAirplaneSensitive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsAirplaneToggleable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2199
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_b9

    .line 2203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dumpEx(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2206
    :cond_b9
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    monitor-exit p0

    goto/16 :goto_3a

    :catchall_ca
    move-exception v0

    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_3c .. :try_end_cc} :catchall_ca

    throw v0
.end method

.method protected dumpEx(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2265
    return-void
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;
    .param p3, "isGlobalEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 692
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 693
    .local v2, "um":Landroid/os/UserManager;
    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 695
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    const-string v4, "no_outgoing_beam"

    invoke-virtual {v2, v4, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 696
    if-eqz p3, :cond_5c

    move v0, v3

    .line 697
    .local v0, "isActiveForUser":Z
    :goto_1e
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_40

    .line 698
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Enforcing a policy change on user: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 699
    const-string v6, ", isActiveForUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 698
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_40
    :try_start_40
    new-instance v4, Landroid/content/ComponentName;

    .line 703
    const-class v5, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v5

    .line 704
    const-class v6, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-eqz v0, :cond_5e

    .line 708
    :goto_53
    const/4 v5, 0x1

    .line 709
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 702
    invoke-interface {v1, v4, v3, v5, v6}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_5b} :catch_60

    .line 713
    :goto_5b
    return-void

    .line 694
    .end local v0    # "isActiveForUser":Z
    :cond_5c
    const/4 v0, 0x0

    goto :goto_1e

    .line 707
    .restart local v0    # "isActiveForUser":Z
    :cond_5e
    const/4 v3, 0x2

    goto :goto_53

    .line 711
    :catch_60
    move-exception v3

    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to change Beam status for user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method protected excuteDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;)V
    .registers 4
    .param p1, "newParams"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .prologue
    .line 2231
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2232
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v0

    .line 2233
    .local v0, "shouldRestart":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2237
    .end local v0    # "shouldRestart":Z
    :goto_11
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 2238
    return-void

    .line 2235
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    goto :goto_11
.end method

.method findObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 1672
    monitor-enter p0

    .line 1673
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1674
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_14

    .line 1675
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_14
    monitor-exit p0

    return-object v0

    .line 1672
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v1
.end method

.method declared-synchronized getUserId()I
    .registers 2

    .prologue
    .line 676
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .registers 12

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5b

    .line 405
    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/nfc/NfcService;->init$_aroundBody1$advice(Lcom/android/nfc/NfcService;IIILcom/android/nfc/aspectj/ANfcSoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 407
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f050002

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/NfcService;->load_aroundBody3$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 408
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f050000

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/NfcService;->load_aroundBody5$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 409
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/NfcService;->load_aroundBody7$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 402
    :cond_5b
    monitor-exit p0

    .line 412
    return-void

    .line 402
    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2161
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2162
    const-string v3, "airplane_mode_on"

    .line 2161
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method protected isForceCommitRouting()Z
    .registers 2

    .prologue
    .line 2254
    const/4 v0, 0x0

    return v0
.end method

.method protected isHCERoutingtoHost()Z
    .registers 3

    .prologue
    .line 2247
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    .line 2248
    const/4 v0, 0x1

    .line 2250
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isNfcEnabled()Z
    .registers 3

    .prologue
    .line 1433
    monitor-enter p0

    .line 1434
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 1433
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .registers 3

    .prologue
    .line 1427
    monitor-enter p0

    .line 1428
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_c

    .line 1427
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected isRequireNfcCRouting()Z
    .registers 2

    .prologue
    .line 2244
    const/4 v0, 0x1

    return v0
.end method

.method protected isTagPresent()Z
    .registers 4

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1634
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 1629
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1630
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_a

    .line 1631
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    goto :goto_11
.end method

.method maybeDisconnectTarget()V
    .registers 11

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1669
    :cond_6
    return-void

    .line 1644
    :cond_7
    monitor-enter p0

    .line 1645
    :try_start_8
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1648
    .local v2, "objectValues":[Ljava/lang/Object;
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 1649
    .local v3, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1644
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_50

    .line 1651
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v6, :cond_6

    aget-object v1, v3, v5

    .line 1652
    .local v1, "o":Ljava/lang/Object;
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_43

    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "disconnecting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_43
    instance-of v7, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v7, :cond_53

    move-object v4, v1

    .line 1655
    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1656
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 1651
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1644
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "objectValues":[Ljava/lang/Object;
    .end local v3    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_50
    move-exception v5

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v5

    .line 1657
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "objectValues":[Ljava/lang/Object;
    .restart local v3    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_53
    instance-of v7, v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v7, :cond_4d

    move-object v0, v1

    .line 1659
    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 1660
    .local v0, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v7

    if-nez v7, :cond_4d

    .line 1662
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_4d
.end method

.method public onHostCardEmulationActivated()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 255
    :cond_9
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData([B)V

    .line 262
    :cond_9
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 269
    :cond_9
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 292
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 277
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 284
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 285
    return-void
.end method

.method protected onNfcDisabled()V
    .registers 2

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 2261
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 3
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 245
    return-void
.end method

.method public onRemoteFieldActivated()V
    .registers 3

    .prologue
    .line 297
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 298
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .registers 3

    .prologue
    .line 302
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 303
    return-void
.end method

.method public playErrorSound(Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 3
    .param p1, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    .line 2218
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 2219
    return-void
.end method

.method public playNotSuportedSound()V
    .registers 2

    .prologue
    .line 2224
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 2225
    return-void
.end method

.method public playSound(I)V
    .registers 9
    .param p1, "sound"    # I

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_e

    .line 658
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    monitor-exit p0

    .line 673
    :goto_d
    return-void

    .line 661
    :cond_e
    packed-switch p1, :pswitch_data_46

    .line 656
    :goto_11
    monitor-exit p0

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    .line 663
    :pswitch_16
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_11

    .line 666
    :pswitch_26
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_11

    .line 669
    :pswitch_36
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_13

    goto :goto_11

    .line 661
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_16
        :pswitch_26
        :pswitch_36
    .end packed-switch
.end method

.method public playStartSound()V
    .registers 2

    .prologue
    .line 2215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 2216
    return-void
.end method

.method public playSuccessSound()V
    .registers 2

    .prologue
    .line 2221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 2222
    return-void
.end method

.method protected postExcuteDiscovery(ZI)V
    .registers 3

    .prologue
    .line 2241
    return-void
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 426
    const-string v3, "airplane_mode_radios"

    .line 425
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 428
    const-string v3, "airplane_mode_toggleable_radios"

    .line 427
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_24

    const/4 v2, 0x1

    :goto_13
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 432
    if-nez v1, :cond_2b

    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 435
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_23

    .line 436
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    :cond_23
    return-void

    .line 431
    :cond_24
    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_13

    .line 433
    :cond_2b
    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_18
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 4
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 1682
    monitor-enter p0

    .line 1683
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    monitor-exit p0

    .line 1685
    return-void

    .line 1682
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method releaseSoundPool()V
    .registers 4

    .prologue
    .line 415
    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_12

    .line 418
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Lcom/android/nfc/NfcService;->release_aroundBody9$advice(Lcom/android/nfc/NfcService;Landroid/media/SoundPool;Lcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 415
    :cond_12
    monitor-exit p0

    .line 422
    return-void

    .line 415
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public routeAids(Ljava/lang/String;I)V
    .registers 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 1722
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1723
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1724
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1725
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1726
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1727
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 649
    monitor-enter p0

    .line 650
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 651
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    monitor-exit p0

    .line 653
    return-void

    .line 649
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public sendData([B)Z
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1743
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1744
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1746
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1718
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1719
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 680
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 684
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 685
    .local v0, "luh":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    .line 688
    return-void

    .line 685
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 686
    .local v1, "uh":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v1, p1}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    goto :goto_12
.end method

.method protected setCardTechMask(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V
    .registers 2

    .prologue
    .line 1622
    return-void
.end method

.method protected setOtherDiscoveryParams(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V
    .registers 2

    .prologue
    .line 1616
    return-void
.end method

.method unregisterObject(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 1688
    monitor-enter p0

    .line 1689
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    monitor-exit p0

    .line 1691
    return-void

    .line 1688
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 1730
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1731
    return-void
.end method

.method updatePackageCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 442
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "packages":Ljava/util/List;
    monitor-enter p0

    .line 444
    :try_start_c
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 443
    monitor-exit p0

    .line 446
    return-void

    .line 443
    :catchall_10
    move-exception v2

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v2
.end method

.method protected updateScreenStateConfigure(Z)V
    .registers 2

    .prologue
    .line 2227
    return-void
.end method
