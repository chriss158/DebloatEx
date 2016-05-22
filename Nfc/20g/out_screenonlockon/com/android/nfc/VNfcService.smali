.class public Lcom/android/nfc/VNfcService;
.super Lcom/android/nfc/LNfcService;
.source "VNfcService.java"

# interfaces
.implements Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/VNfcService$VEnableDisableTask;,
        Lcom/android/nfc/VNfcService$VNfcAdapterService;,
        Lcom/android/nfc/VNfcService$VNfcServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_CEFROMHOST_LINK_STATE_CHANGED:Ljava/lang/String; = "com.nxp.nfc_extras.action.CEFROMHOST_LINK_STATE_CHANGED"

.field public static final ACTION_EMVCO_MULTIPLE_CARD_DETECTED:Ljava/lang/String; = "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_SWP_READER_ACTIVATED:Ljava/lang/String; = "com.nxp.nfc_extras.ACTION_SWP_READER_ACTIVATED"

.field public static final ACTION_SWP_READER_DEACTIVATED:Ljava/lang/String; = "com.nxp.nfc_extras.ACTION_SWP_READER_DEACTIVATED"

.field public static final ACTION_SWP_READER_REQUESTED:Ljava/lang/String; = "com.nxp.nfc_extras.ACTION_SWP_READER_REQUESTED"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_CEFROMHOST_LINK_STATE:Ljava/lang/String; = "com.nxp.nfc_extras.extra.CEFROMHOST_LINK_STATE"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_SWP_READER_TECH:Ljava/lang/String; = "com.nxp.nfc_extras.extra.EXTRA_SWP_READER_TECH"

.field static final MSG_CLEAR_ROUTING:I = 0x3f1

.field static final MSG_CONNECTIVITY_EVENT:I = 0x3f5

.field static final MSG_EMVCO_MULTI_CARD_DETECTED_EVENT:I = 0x3f6

.field static final MSG_SET_SCREEN_STATE:I = 0x3f7

.field static final MSG_SE_APDU_RECEIVED:I = 0x3ec

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0x3ed

.field static final MSG_SE_FIELD_ACTIVATED:I = 0x3ea

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x3eb

.field static final MSG_SE_MIFARE_ACCESS:I = 0x3ee

.field static final MSG_SWP_READER_ACTIVATED:I = 0x3f3

.field static final MSG_SWP_READER_DEACTIVATED:I = 0x3f4

.field static final MSG_SWP_READER_REQUESTED:I = 0x3f2

.field static final MSG_TARGET_DESELECTED:I = 0x3e9

.field public static final P61LIB_INUSE:I = 0x4

.field public static final PN65T_ID:I = 0x2

.field private static final PREF_SECURE_ELEMENT_ID:Ljava/lang/String; = "secure_element_id"

.field private static final PREF_SECURE_ELEMENT_ON:Ljava/lang/String; = "secure_element_on"

.field public static final ROUTE_LOC_MASK:I = 0x3

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field private static final SE_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field static TAG:Ljava/lang/String; = null

.field public static final TECH_TYPE_MASK:I = 0x5

.field public static final UICC_ID_TYPE:I = 0x2

.field public static final VEN_CFG_NFC_OFF_POWER_OFF:I = 0x2

.field public static final VEN_CFG_NFC_ON_POWER_ON:I = 0x3

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field protected static sService:Lcom/android/nfc/VNfcService;


# instance fields
.field private SECURE_ELEMENT_ID_DEFAULT:I

.field private SECURE_ELEMENT_ON_DEFAULT:Z

.field isDeviceShuttingDown:Z

.field public mIsRouteForced:Z

.field mNfcPollingEnabled:Z

.field private mNfcSecureElementState:Z

.field mPowerShutDown:Z

.field mReaderModeEnabled:Z

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

.field protected mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    .line 91
    const-string v0, "NfcServiceNXP"

    sput-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 597
    new-instance v0, Lcom/android/nfc/VNfcService$1;

    invoke-direct {v0}, Lcom/android/nfc/VNfcService$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 596
    sput-object v0, Lcom/android/nfc/VNfcService;->SE_ID_MAP:Ljava/util/Map;

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 10
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService;-><init>(Landroid/app/Application;)V

    .line 110
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    .line 112
    iput v6, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mSePackages:Ljava/util/HashSet;

    .line 242
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->isDeviceShuttingDown:Z

    .line 243
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z

    .line 252
    iput-boolean v7, p0, Lcom/android/nfc/VNfcService;->mIsRouteForced:Z

    .line 271
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NfcServiceNXP is Start"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sput-object p0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    .line 275
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcAdapterService;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 277
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    const-string v0, "nfcaddon"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    .line 281
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    .line 282
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    check-cast v0, Lcom/android/nfc/DeviceHost;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 284
    new-instance v0, Lcom/android/nfc/LP2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 285
    iget-object v4, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpMiu()I

    move-result v4

    .line 286
    iget-object v5, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    .line 284
    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 288
    new-instance v0, Lcom/android/nfc/LNfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    iget-boolean v3, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/LNfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Z)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 295
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcTest;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    .line 301
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 303
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_99

    .line 304
    new-instance v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    .line 305
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 306
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_99

    .line 307
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LGsmaAPIService;->setServiceCache(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V

    .line 351
    :cond_99
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "TASK_FIRMWARE_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    return-void
.end method

.method static synthetic access$1(Lcom/android/nfc/VNfcService;Z)V
    .registers 2

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/nfc/VNfcService;I)V
    .registers 2

    .prologue
    .line 112
    iput p1, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/nfc/VNfcService;)Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/nfc/VNfcService;Z)V
    .registers 2

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/nfc/VNfcService;->mNfcSecureElementState:Z

    return-void
.end method

.method static synthetic access$5(Lcom/android/nfc/VNfcService;)Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mNfcSecureElementState:Z

    return v0
.end method

.method static synthetic access$6(Lcom/android/nfc/VNfcService;)I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return v0
.end method

.method static synthetic access$7()Ljava/util/Map;
    .registers 1

    .prologue
    .line 596
    sget-object v0, Lcom/android/nfc/VNfcService;->SE_ID_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic getInstance()Lcom/android/nfc/LNfcService;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/nfc/VNfcService;
    .registers 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    return-object v0
.end method


# virtual methods
.method protected changeHceRouteWhenNoApp()V
    .registers 5

    .prologue
    .line 1388
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1389
    :cond_c
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "changeHceRouteWhenNoApp - Not updating routing table because NFC is off."

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_13
    :goto_13
    return-void

    .line 1392
    :cond_14
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    const-string v3, "na"

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1393
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "changeHceRouteWhenNoApp - Not updating routing table because mScreenState is na."

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1398
    :cond_28
    :try_start_28
    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_13

    .line 1399
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1400
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v0

    .line 1401
    .local v0, "route":I
    :goto_42
    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->setDefaultDest(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_45} :catch_46

    goto :goto_13

    .line 1404
    .end local v0    # "route":I
    :catch_46
    move-exception v1

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC configureScreenState - Exception."

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1400
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_46

    move-result v0

    goto :goto_42
.end method

.method public clearAidTable()V
    .registers 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1048
    return-void
.end method

.method public enforceNfcSccAdminPerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 820
    return-void
.end method

.method public enforceNfcSeAdminPerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 788
    return-void
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 791
    if-nez p1, :cond_a

    .line 792
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 795
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 796
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 800
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_3e
    return-void
.end method

.method public getDefaultSecureElement()I
    .registers 4

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v0

    .line 1059
    .local v0, "seList":[I
    if-eqz v0, :cond_c

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    .line 1061
    :cond_c
    const/4 v1, -0x1

    .line 1063
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_d
.end method

.method protected isForceCommitRouting()Z
    .registers 3

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsRouteForced:Z

    .line 1411
    .local v0, "forced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsRouteForced:Z

    .line 1412
    return v0
.end method

.method protected manageShutdown()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1322
    iget-boolean v2, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z

    if-nez v2, :cond_11

    .line 1325
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v2, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 1326
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 1330
    :cond_11
    :try_start_11
    sget-object v2, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v3

    if-eqz v3, :cond_2c

    :goto_1b
    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsCEEnable_whenPowerOff(Z)Z

    move-result v0

    .line 1331
    if-eqz v0, :cond_36

    .line 1332
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "manageShutdown() : Skip VEN_CFG set"

    invoke-static {v0, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2e

    .line 1356
    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    .line 1330
    goto :goto_1b

    .line 1337
    :catch_2e
    move-exception v0

    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC manageSutdown - Exception."

    invoke-static {v0, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_36
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z

    if-eqz v0, :cond_63

    .line 1343
    iput-boolean v1, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z

    .line 1344
    sget-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v2, "na"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1345
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "Disabling NFC Disabling ESE/UICC"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetVenConfigValue(I)V

    goto :goto_2b

    .line 1348
    :cond_55
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "Power off : Disabling NFC Disabling ESE/UICC"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetVenConfigValue(I)V

    goto :goto_2b

    .line 1352
    :cond_63
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "Disabling NFC Disabling ESE/UICC"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetVenConfigValue(I)V

    goto :goto_2b
.end method

.method newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;
    .registers 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/nfc/VNfcService$VEnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VEnableDisableTask;-><init>(Lcom/android/nfc/VNfcService;)V

    return-object v0
.end method

.method public onAidRoutingTableFull()V
    .registers 3

    .prologue
    .line 866
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NxpNci: onAidRoutingTableFull: AID Routing Table is FULL!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public onCardEmulationAidSelected([B[BI)V
    .registers 9
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 850
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 851
    .local v0, "dataSrc":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    .local v1, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCardEmulationAidSelected : Source"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 856
    return-void
.end method

.method public onCardEmulationDeselected()V
    .registers 3

    .prologue
    .line 840
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 842
    return-void
.end method

.method public onConnectivityEvent(I)V
    .registers 5
    .param p1, "evtSrc"    # I

    .prologue
    .line 830
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectivityEvent : Source"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/16 v0, 0x3f5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 832
    return-void
.end method

.method public onEmvcoMultiCardDetectedEvent()V
    .registers 3

    .prologue
    .line 860
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "onEmvcoMultiCardDetectedEvent"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/16 v0, 0x3f6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 862
    return-void
.end method

.method public onRemoteFieldActivated()V
    .registers 3

    .prologue
    .line 872
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 874
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .registers 3

    .prologue
    .line 879
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public onSWPReaderActivatedEvent()V
    .registers 3

    .prologue
    .line 942
    const/16 v0, 0x3f3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 943
    return-void
.end method

.method public onSWPReaderDeActivatedEvent()V
    .registers 3

    .prologue
    .line 948
    const/16 v0, 0x3f4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 949
    return-void
.end method

.method public onSWPReaderRequestedEvent(ZZ)V
    .registers 5
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .prologue
    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v0, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_f

    .line 932
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_f
    if-eqz p2, :cond_19

    .line 934
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_19
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 937
    return-void
.end method

.method public onSeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 907
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 909
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .registers 3

    .prologue
    .line 914
    const/16 v0, 0x3ed

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 916
    return-void
.end method

.method public onSeListenActivated()V
    .registers 3

    .prologue
    .line 886
    const/16 v0, 0x6b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 888
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_f

    .line 889
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationActivated()V

    .line 891
    :cond_f
    return-void
.end method

.method public onSeListenDeactivated()V
    .registers 3

    .prologue
    .line 896
    const/16 v0, 0x6c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 898
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 901
    :cond_f
    return-void
.end method

.method public onSeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 921
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 923
    return-void
.end method

.method protected receivedShutDownIntent()V
    .registers 5

    .prologue
    .line 1417
    invoke-super {p0}, Lcom/android/nfc/LNfcService;->receivedShutDownIntent()V

    .line 1419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/VNfcService;->mPowerShutDown:Z

    .line 1420
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1421
    sget-boolean v1, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "get intent - ACTION_SHUTDOWN"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1424
    :try_start_15
    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_32

    .line 1425
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1426
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v0

    .line 1427
    .local v0, "route":I
    :goto_2f
    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->setDefaultDest(I)V

    .line 1435
    .end local v0    # "route":I
    :cond_32
    :goto_32
    return-void

    .line 1426
    :cond_33
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_3a

    move-result v0

    goto :goto_2f

    .line 1430
    :catch_3a
    move-exception v1

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "get default destination - Exception"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 1433
    :cond_43
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC is already turned off."

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public routeAids(Ljava/lang/String;II)V
    .registers 12
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getRouteAidsPowerState()I

    move-result p3

    .line 1038
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1039
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1040
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1041
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1042
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1043
    sget-boolean v1, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "routeAids : aid-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rounte-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " powerState-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method protected updateScreenStateConfigure(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    .line 1359
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1360
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mScreenState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInProvisionMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget v1, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    if-ne v0, v1, :cond_51

    .line 1363
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen state Not Chagned : mScreenState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPreScreenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :goto_50
    return-void

    .line 1367
    :cond_51
    sget-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    if-eqz v0, :cond_85

    .line 1368
    :cond_5b
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    .line 1369
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    .line 1373
    :goto_63
    sget-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    const-string v2, "na"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    if-nez v0, :cond_76

    .line 1374
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    .line 1376
    :cond_76
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget v1, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetScreenState(I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->changeHceRouteWhenNoApp()V

    .line 1379
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iput v0, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    goto :goto_50

    .line 1371
    :cond_85
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iput v0, p0, Lcom/android/nfc/VNfcService;->mPreScreenState:I

    goto :goto_63

    .line 1383
    :cond_8a
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NFC is already turned off."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method
