.class public Lcom/android/nfc/LGsmaAPIService;
.super Lcom/lge/nfcaddon/IGsmaNfcController$Stub;
.source "LGsmaAPIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GSMA_NFC_ON:Ljava/lang/String; = "com.lge.nfc.action.GSMA_NFC_ON"

.field static final ACTION_GSMA_OFFHOSTSERVICE_ADD:Ljava/lang/String; = "com.android.nfc.action.GSMA_OFFHOSTSERVICE_ADD"

.field static final ACTION_GSMA_OFFHOSTSERVICE_REMOVE:Ljava/lang/String; = "com.android.nfc.action.GSMA_OFFHOSTSERVICE_REMOVE"

.field static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field static final ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.action.TRANSACTION_EVENT"

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private static DBG:Z = false

.field static final EXTRA_GSMA_OFFHOST_BANNER:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_BANNER"

.field static final EXTRA_GSMA_OFFHOST_INFO:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_INFO"

.field static final EXTRA_GSMA_OFFHOST_KEY:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_KEY"

.field static final EXTRA_TRANS_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field static final EXTRA_TRANS_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field private static final GPAC_RESULT_VALID_TIME:I = 0x1388

.field protected static final GSMA_API_JAR_NAME:[Ljava/lang/String;

.field protected static final GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

.field public static final MIFARE_CLASSIC:I = 0x21

.field protected static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field protected static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field public static final OMAPI:I = 0x50

.field static final OPENMOBILE_PACKAGE_NAME:Ljava/lang/String; = "org.simalliance.openmobileapi.service"

.field private static final SMARTCARD_SERVICE_CLASS:Ljava/lang/String; = "com.android.nfc.LSmartCardService"

.field private static final TAG:Ljava/lang/String; = "LGsmaAPIService"


# instance fields
.field mContext:Landroid/content/Context;

.field mGsmaAPIVer:Ljava/lang/String;

.field protected mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

.field mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

.field mIsGACConnectionAllowedMethod:Ljava/lang/reflect/Method;

.field mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

.field mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

.field mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

.field mIsMultiCast:Z

.field mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

.field mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

.field mNFCPermissionPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcEventsCacheTime:J

.field private mNfcFieldEventsCacheTime:J

.field private mNfcFieldEventsResults:[Z

.field private mNfcTransactionEventsResults:[Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSeName:Ljava/lang/String;

.field mSeekVersion:Ljava/lang/String;

.field mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

.field mSmartCardServiceObject:Ljava/lang/Object;

.field mTransactionEventPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionIntentExtraAIDName:Ljava/lang/String;

.field mTransactionIntentExtraDATAName:Ljava/lang/String;

.field mTransactionIntentFilter:[Landroid/content/IntentFilter;

.field mTransactionIntentName:Ljava/lang/String;

.field mTransactionPendingIntent:Landroid/app/PendingIntent;

.field mTransactionPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    .line 69
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 134
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.gsma.services.nfc.jar"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.gsma.services.nfc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    invoke-direct {p0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;-><init>()V

    .line 104
    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 105
    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 106
    iput-wide v6, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    .line 107
    iput-wide v6, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 129
    iput-boolean v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    .line 756
    new-instance v4, Lcom/android/nfc/LGsmaAPIService$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/LGsmaAPIService$1;-><init>(Lcom/android/nfc/LGsmaAPIService;)V

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    .line 148
    :try_start_1c
    const-string v4, "com.android.nfc.LSmartCardService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 149
    .local v2, "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 150
    .local v3, "smartCardServiceMethod":Ljava/lang/reflect/Method;
    const-string v4, "getSEName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    .local v1, "getSeNameMethod":Ljava/lang/reflect/Method;
    const-string v4, "isGPACNFCEventAllowed"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    .line 153
    const-string v4, "isGPACCertificateAllowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    .line 154
    const-string v4, "isGPACCertificateAllowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    .line 155
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_97} :catch_c4

    .line 162
    invoke-direct {p0}, Lcom/android/nfc/LGsmaAPIService;->initAccessControl()V

    .line 165
    :try_start_9a
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "org.simalliance.openmobileapi.service"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeekVersion:Ljava/lang/String;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ab} :catch_dc

    .line 171
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c3

    .line 172
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeekVersion:Ljava/lang/String;

    const-string v5, "3.1.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    const-string v4, "SIM - UICC"

    :goto_c1
    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    .line 174
    .end local v1    # "getSeNameMethod":Ljava/lang/reflect/Method;
    .end local v2    # "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "smartCardServiceMethod":Ljava/lang/reflect/Method;
    :cond_c3
    :goto_c3
    return-void

    .line 157
    :catch_c4
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Smart Card Service can\'t loading! - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getSeNameMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "smartCardServiceMethod":Ljava/lang/reflect/Method;
    :catch_dc
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "seekVersion : catch exception - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f4
    const-string v4, "SIM1"

    goto :goto_c1
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LCardEmulationManager;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardemulation"    # Lcom/android/nfc/cardemulation/LCardEmulationManager;
    .param p3, "service"    # Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    .prologue
    .line 138
    invoke-direct {p0, p1, p3}, Lcom/android/nfc/LGsmaAPIService;-><init>(Landroid/content/Context;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V

    .line 139
    if-eqz p2, :cond_c

    iget-object v0, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    :goto_7
    iput-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    .line 140
    iput-object p2, p0, Lcom/android/nfc/LGsmaAPIService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    .line 141
    return-void

    .line 139
    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic access$0(Lcom/android/nfc/LGsmaAPIService;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    return v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameter"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "gsmaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 703
    const/4 v0, 0x0

    .line 715
    :cond_3
    :goto_3
    return-object v0

    .line 706
    :cond_4
    const/4 v0, 0x0

    .line 707
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_3

    .line 709
    :try_start_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_3

    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method private static getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "gsmaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 669
    if-nez p0, :cond_5

    move-object v2, v3

    .line 681
    :goto_4
    return-object v2

    .line 672
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 673
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_30

    .line 674
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_4

    .line 676
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_17
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStringField : Exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 678
    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_30
    move-object v2, v3

    .line 681
    goto :goto_4
.end method

.method private initAccessControl()V
    .registers 8

    .prologue
    .line 645
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_7

    .line 665
    :goto_6
    return-void

    .line 647
    :cond_7
    :try_start_7
    new-instance v1, Ldalvik/system/PathClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "system/framework/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 648
    .local v1, "gsmaAPIClassLoader":Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".NfcStaticVariable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 649
    .local v0, "gsmaAPIClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "ACTION_TRANSACTION_EVENT"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    .line 650
    const-string v3, "EXTRA_AID"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    .line 651
    const-string v3, "EXTRA_DATA"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    .line 652
    const-string v3, "PERMISSION_TRANSACTION_EVENT"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    .line 653
    const-string v3, "VER"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    .line 654
    const-string v3, "getTransactionEventURI"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/nfc/LGsmaAPIService;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

    .line 655
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GSMA API variable Loading Complete! : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GSMA API ACTION_TRANSACTION_EVENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GSMA API EXTRA_AID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GSMA API EXTRA_DATA : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GSMA API PERMISSION_TRANSACTION_EVENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f6} :catch_f8

    goto/16 :goto_6

    .line 645
    .end local v0    # "gsmaAPIClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "gsmaAPIClassLoader":Ljava/lang/ClassLoader;
    :catch_f8
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private isNfcEventAllowed([Ljava/lang/String;[B)[Z
    .registers 12
    .param p1, "packageName"    # [Ljava/lang/String;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 278
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_38

    .line 279
    :cond_9
    const-string v3, "LGsmaAPIService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSmartCardServiceObject = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v3, "LGsmaAPIService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mIsGPACEventAllowedMethod = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-array v2, v8, [Z

    .line 296
    :cond_37
    :goto_37
    return-object v2

    .line 285
    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_7f

    .line 290
    .local v2, "ret":[Z
    if-eqz v2, :cond_99

    array-length v3, v2

    array-length v4, p1

    if-ne v3, v4, :cond_99

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_57
    array-length v3, v2

    if-ge v1, v3, :cond_37

    .line 292
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isNfcEventAllowed["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-boolean v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 286
    .end local v1    # "i":I
    .end local v2    # "ret":[Z
    :catch_7f
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isNfcEventAllowed : catch exception e"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 288
    new-array v2, v8, [Z

    goto :goto_37

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":[Z
    :cond_99
    new-array v2, v8, [Z

    goto :goto_37
.end method

.method private isTransactionEventFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;

    .prologue
    const/4 v1, 0x0

    .line 719
    if-eqz p2, :cond_7

    .line 720
    array-length v3, p2

    move v2, v1

    :goto_5
    if-lt v2, v3, :cond_8

    .line 727
    :cond_7
    :goto_7
    return v1

    .line 720
    :cond_8
    aget-object v0, p2, v2

    .line 721
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isTransactionEventFilterMatch : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "LGsmaAPIService"

    invoke-virtual {v0, v4, p1, v1, v5}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_30

    .line 723
    const/4 v1, 0x1

    goto :goto_7

    .line 720
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected checkPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 561
    const/16 v4, 0x1000

    :try_start_4
    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_21

    move-result-object v1

    .line 567
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_11

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_12

    .line 578
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_11
    :goto_11
    return-wide v2

    .line 572
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_12
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 573
    .local v0, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 578
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_11

    .line 564
    .end local v0    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_21
    move-exception v4

    goto :goto_11
.end method

.method public commitGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 400
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    if-eqz v0, :cond_3c

    .line 402
    :try_start_6
    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1d} :catch_3d

    .line 407
    :goto_1d
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->addGsmaOffHostServices(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 408
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v1, "LGsmaAPIService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADD GSMA OffHostService: key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_3c
    return-void

    .line 404
    :catch_3d
    move-exception v0

    const-string v0, "LGsmaAPIService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getApplicationInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0) - NameNotFoundException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1d
.end method

.method public disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v0, "LGsmaAPIService"

    const-string v1, "disableNfcCardCallback"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 230
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public enableMultiEvt_transactionReception()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    .line 243
    return-void
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)V
    .registers 3
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    .line 248
    return-void
.end method

.method public enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 219
    const-string v0, "LGsmaAPIService"

    const-string v1, "enableNfcCard"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 222
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    invoke-interface {v0, v2, v2}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 5
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 182
    const-string v0, "LGsmaAPIService"

    const-string v1, "initNfcSystemCallback"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 185
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    .line 186
    return v2
.end method

.method public enableNfcControllerPopupCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .registers 10
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 191
    const-string v4, "LGsmaAPIService"

    const-string v5, "enableNfcControllerPopupCallback"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.action.GSMA_NFC_ON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 197
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 198
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const v6, 0x7f08004c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 199
    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 200
    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 201
    const v5, 0x7f080018

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 204
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v3, "popupIntent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.lge.nfc.action.GSMA_NFC_ON"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, "intentfilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return v7
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    return-object v0
.end method

.method public getGsmaOffHostService()Ljava/util/List;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    if-nez v0, :cond_6

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getGsmaOffHostServices()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5
.end method

.method public getProperty(I)Z
    .registers 5
    .param p1, "feature"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 741
    .local v0, "mRet":Z
    sparse-switch p1, :sswitch_data_14

    .line 753
    :goto_4
    return v0

    .line 743
    :sswitch_5
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 744
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.nxp.mifare"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 745
    goto :goto_4

    .line 747
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :sswitch_12
    const/4 v0, 0x1

    .line 748
    goto :goto_4

    .line 741
    :sswitch_data_14
    .sparse-switch
        0x21 -> :sswitch_5
        0x50 -> :sswitch_12
    .end sparse-switch
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 732
    const-string v0, ""

    .line 735
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    goto :goto_6
.end method

.method protected intentAccessControl([B[B)Z
    .registers 13
    .param p1, "aid"    # [B
    .param p2, "payload"    # [B

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 326
    :cond_d
    :goto_d
    return v2

    .line 310
    :cond_e
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "uriString":Ljava/lang/String;
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, ""

    invoke-static {p1, v7, v8, v9}, Lcom/android/nfc/LNfcCommon;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_85

    move-result-object v1

    .line 321
    :goto_3e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 322
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ContentUri : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "intentAccessControl : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-boolean v3, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    if-eqz v3, :cond_80

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/nfc/LGsmaAPIService;->sendMultiCastEvent([BLandroid/content/Intent;Z)Z

    move-result v2

    goto :goto_d

    :cond_80
    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/LGsmaAPIService;->sendUniCastTransactionEvent([BLandroid/content/Intent;)Z

    move-result v2

    goto :goto_d

    :catch_85
    move-exception v3

    goto :goto_3e
.end method

.method public isAvailableToAddService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 6
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-nez v2, :cond_a

    .line 433
    :cond_9
    :goto_9
    return v1

    .line 431
    :cond_a
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 432
    .local v0, "apduSrvList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I

    move-result v2

    if-ltz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9
.end method

.method public isGSMACertificateAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 258
    :goto_a
    return v0

    .line 256
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_25

    move-result v0

    goto :goto_a

    .line 258
    :catch_25
    move-exception v0

    move v0, v1

    goto :goto_a
.end method

.method public isGSMACertificateAllowedArray([Ljava/lang/String;)[Z
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v1

    .line 271
    :goto_a
    return-object v0

    .line 269
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_a

    .line 271
    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_a
.end method

.method public onCardEmulationModeCallback(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    if-nez v0, :cond_5

    .line 640
    :goto_4
    return-void

    .line 636
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;->onCardEmulationMode(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    goto :goto_4
.end method

.method public onNfcControllerCallback(Z)V
    .registers 3
    .param p1, "status"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    if-eqz v0, :cond_9

    .line 623
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;->onNfcController(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 628
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public releaseGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 413
    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    if-eqz v0, :cond_25

    .line 414
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->removeGsmaOffHostServices(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 415
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v1, "LGsmaAPIService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE GSMA OffHostService: key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_25
    return-void
.end method

.method protected sendMultiCastEvent([BLandroid/content/Intent;Z)Z
    .registers 16
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isRFFieldEvent"    # Z

    .prologue
    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 334
    .local v2, "eventsResults":[Z
    const-wide/16 v0, 0x0

    .line 336
    .local v0, "eventsCacheTime":J
    if-eqz p3, :cond_15

    .line 337
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    .line 338
    if-nez v5, :cond_d

    .line 339
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->setNFCPermissionPackageList()V

    .line 341
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 342
    iget-wide v0, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 353
    :cond_11
    :goto_11
    if-nez v5, :cond_2d

    .line 354
    const/4 v4, 0x0

    .line 391
    :cond_14
    :goto_14
    return v4

    .line 344
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 345
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    .line 346
    if-nez v5, :cond_28

    .line 347
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->setTransactionEventPackageList()V

    .line 349
    :cond_28
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 350
    iget-wide v0, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    goto :goto_11

    .line 357
    :cond_2d
    sget-object v7, Lcom/android/nfc/LGsmaAPIService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mUseGpacResultValidTime:Z

    if-eqz v7, :cond_3e

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x1388

    cmp-long v7, v8, v10

    if-ltz v7, :cond_48

    .line 359
    :cond_3e
    const/4 v2, 0x0

    .line 360
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    const-string v9, "eventsResults is set to null"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 364
    .local v6, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 367
    .local v4, "isSendBroadcast":Z
    if-nez v2, :cond_5f

    :try_start_57
    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    if-eqz v7, :cond_5f

    .line 368
    invoke-direct {p0, v6, p1}, Lcom/android/nfc/LGsmaAPIService;->isNfcEventAllowed([Ljava/lang/String;[B)[Z

    move-result-object v2

    .line 371
    :cond_5f
    if-eqz p3, :cond_af

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 373
    iput-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 380
    :goto_69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6a
    array-length v7, v2

    if-ge v3, v7, :cond_14

    .line 381
    aget-boolean v7, v2, v3

    if-eqz v7, :cond_ac

    .line 382
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "processname["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - connection Certificated, SendBroadcast for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 383
    aget-object v7, v6, v3

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    const/4 v4, 0x1

    .line 380
    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 376
    .end local v3    # "i":I
    :cond_af
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    .line 377
    iput-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_b7} :catch_b8

    goto :goto_69

    :catch_b8
    move-exception v7

    goto/16 :goto_14
.end method

.method protected sendUniCastTransactionEvent([BLandroid/content/Intent;)Z
    .registers 15
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    if-eqz v0, :cond_34

    .line 439
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "mTransactionIntentFilter isn\'t null"

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz p2, :cond_34

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    invoke-direct {p0, p2, v0}, Lcom/android/nfc/LGsmaAPIService;->isTransactionEventFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 442
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 443
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "matched Transaction Event Dispatched!"

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_31} :catch_33

    .line 444
    const/4 v0, 0x1

    .line 470
    :goto_32
    return v0

    :catch_33
    move-exception v0

    .line 451
    :cond_34
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 452
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v0, 0x10000

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 453
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_48

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_53

    .line 454
    :cond_48
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "NO application to handle intentAccessControl ....."

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    goto :goto_32

    .line 462
    :cond_53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 464
    .local v4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "intentAccessControl_VerX : list.size() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 468
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/LGsmaAPIService;->sortTransactionAppList(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 470
    invoke-virtual/range {v6 .. v11}, Lcom/android/nfc/LGsmaAPIService;->startTransactionActivity([BLandroid/content/Intent;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_32
.end method

.method public setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "intentfilter"    # [Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    .line 236
    iput-object p2, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    .line 239
    return-void
.end method

.method protected setNFCPermissionPackageList()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 535
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 536
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_18

    .line 556
    :cond_17
    return-void

    .line 541
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    .line 543
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 544
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 546
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 547
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "android.permission.NFC"

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/nfc/LGsmaAPIService;->checkPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-ltz v5, :cond_23

    .line 548
    sget-boolean v5, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Add NFC Permission PackageList : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 551
    iput-wide v10, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    goto :goto_23
.end method

.method setServiceCache(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V
    .registers 3
    .param p1, "cardemulation"    # Lcom/android/nfc/cardemulation/LCardEmulationManager;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    .line 396
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    :goto_6
    iput-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    .line 397
    return-void

    .line 396
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setTransactionEventPackageList()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 511
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 512
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 513
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_18

    .line 531
    :cond_17
    return-void

    .line 517
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    .line 519
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 520
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 522
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 523
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/nfc/LGsmaAPIService;->checkPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-ltz v5, :cond_23

    .line 524
    sget-boolean v5, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Add Transaction Event PackageList : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 527
    iput-wide v10, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    goto :goto_23
.end method

.method protected sortTransactionAppList(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .local p5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_b

    .line 506
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 507
    return-void

    .line 478
    :cond_b
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_14

    .line 477
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    :cond_14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 483
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v6}, Lcom/android/nfc/LGsmaAPIService;->checkPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 485
    .local v2, "installDate":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_11

    .line 489
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 491
    .local v4, "priority":I
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "package Name : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", priority : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", installDate : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "MMM dd, yyyy h:mmaa"

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 494
    sget-boolean v6, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v7, "LGsmaAPIService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Add Priority : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_9f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 500
    .local v5, "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v5, :cond_11

    .line 501
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11
.end method

.method protected startTransactionActivity([BLandroid/content/Intent;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .registers 22
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 585
    .local p3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .local p5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_6
    if-gez v2, :cond_a

    .line 617
    const/4 v8, 0x0

    :goto_9
    return v8

    .line 586
    :cond_a
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Priority : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 588
    .local v7, "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v7, :cond_42

    .line 589
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "timeKeyList is null - continue"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 592
    :cond_42
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 594
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3f

    .line 595
    sget-boolean v9, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v10, "LGsmaAPIService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "time : "

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "MMM dd, yyyy h:mmaa"

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 597
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_8c

    .line 598
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "resolveInfo is null - continue"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 601
    :cond_8c
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 603
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_93
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/nfc/LGsmaAPIService;->isNfcEventAllowed([Ljava/lang/String;[B)[Z

    move-result-object v3

    .line 605
    .local v3, "isAllowed":[Z
    if-eqz v3, :cond_89

    array-length v8, v3

    if-lez v8, :cond_89

    const/4 v8, 0x0

    aget-boolean v8, v3, v8

    if-eqz v8, :cond_89

    .line 606
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "processname : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " connection Certificated ...."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const/high16 v8, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "Start Activity for Card Emulation event"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_e4} :catch_e7

    .line 611
    const/4 v8, 0x1

    goto/16 :goto_9

    .end local v3    # "isAllowed":[Z
    :catch_e7
    move-exception v8

    goto :goto_89
.end method
