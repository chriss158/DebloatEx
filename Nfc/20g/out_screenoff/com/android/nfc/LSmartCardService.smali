.class public Lcom/android/nfc/LSmartCardService;
.super Ljava/lang/Object;
.source "LSmartCardService.java"


# static fields
.field private static final DBG:Z

.field private static final SENAME:Ljava/lang/String; = "SIM"

.field private static final SMART_CARD_SERVICE_CLASS:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"

.field private static final TAG:Ljava/lang/String; = "LSmartCardService"

.field private static sINSTANCE:Lcom/android/nfc/LSmartCardService;


# instance fields
.field public GPACConnection:Landroid/content/ServiceConnection;

.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mContext:Landroid/content/Context;

.field private final mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

.field public mFlag_siwa:Z

.field public volatile mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

.field mIsCertificateAllowed:Ljava/lang/reflect/Method;

.field private mIsFirst:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    .line 45
    new-instance v2, Lcom/android/nfc/LSmartCardService$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/LSmartCardService$1;-><init>(Lcom/android/nfc/LSmartCardService;)V

    iput-object v2, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    .line 61
    new-instance v2, Lcom/android/nfc/LSmartCardService$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/LSmartCardService$2;-><init>(Lcom/android/nfc/LSmartCardService;)V

    iput-object v2, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 62
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intentAC":Landroid/content/Intent;
    const-string v2, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "org.simalliance.openmobileapi.service"

    const-string v4, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 69
    .local v1, "ret":Z
    sget-boolean v2, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v3, "LSmartCardService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[LSmartCardService]GPAC : bindService on startup!!! - result : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_58
    const-class v2, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const-string v3, "isCertificateAllowed"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Lorg/simalliance/openmobileapi/service/SmartcardError;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    .line 73
    sget-boolean v2, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v3, "LSmartCardService"

    const-string v4, "ISmartcardService.isCertificateAllowed is supported!"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_82} :catch_83

    .line 77
    :goto_82
    return-void

    .line 75
    :catch_83
    move-exception v2

    sget-boolean v2, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v3, "LSmartCardService"

    const-string v4, "ISmartcardService.isCertificateAllowed is not supported!"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/nfc/LSmartCardService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v0, Lcom/android/nfc/LSmartCardService;->sINSTANCE:Lcom/android/nfc/LSmartCardService;

    if-nez v0, :cond_b

    .line 149
    new-instance v0, Lcom/android/nfc/LSmartCardService;

    invoke-direct {v0, p0}, Lcom/android/nfc/LSmartCardService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/LSmartCardService;->sINSTANCE:Lcom/android/nfc/LSmartCardService;

    .line 152
    :cond_b
    sget-object v0, Lcom/android/nfc/LSmartCardService;->sINSTANCE:Lcom/android/nfc/LSmartCardService;

    return-object v0
.end method

.method private receivedSmartCardACInitializedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 126
    iget-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    if-nez v3, :cond_7b

    .line 127
    iput-boolean v7, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    .line 128
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[LSmartCardService](onReceive)firstRunning ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "[LSmartCardService.Reciever]GPAC_LAUNCH"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intentAC":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "org.simalliance.openmobileapi.service"

    .line 134
    const-string v5, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 136
    .local v2, "ret":Z
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[NfcService.Reciever]GPAC : bindService result : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    if-nez v3, :cond_7b

    .line 139
    iput-boolean v7, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.nfc.start"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "intentNfc":Landroid/content/Intent;
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "send action:com.lge.nfc.start *** testing ***"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    .end local v0    # "intentAC":Landroid/content/Intent;
    .end local v1    # "intentNfc":Landroid/content/Intent;
    .end local v2    # "ret":Z
    :cond_7b
    return-void
.end method


# virtual methods
.method public getSEName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    const-string v0, "SIM"

    return-object v0
.end method

.method public isGPACCertificateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/LSmartCardService;->isGPACCertificateAllowed(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v0

    .line 94
    .local v0, "ret":[Z
    if-eqz v0, :cond_11

    array-length v2, v0

    if-lez v2, :cond_11

    aget-boolean v1, v0, v1

    :cond_11
    return v1
.end method

.method public isGPACCertificateAllowed(Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 12
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 98
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v4, :cond_12

    .line 99
    sget-boolean v4, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v5, "LSmartCardService"

    const-string v6, "isGPACCertificateAllowed - mGpacAccessControlSvc is null"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 118
    :goto_11
    return-object v2

    .line 101
    :cond_12
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    if-nez v4, :cond_24

    .line 102
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "isGPACCertificateAllowed - mIsCertificateAllowed is null"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 103
    new-array v2, v6, [Z

    aput-boolean v6, v2, v7

    goto :goto_11

    .line 109
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_5e

    .line 115
    .local v2, "ret":[Z
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v1

    .line 116
    .local v1, "exp":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[LSmartCardService]isGPACCertificateAllowed(Array API) : return SmartcardError:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 110
    .end local v1    # "exp":Ljava/lang/Exception;
    .end local v2    # "ret":[Z
    :catch_5e
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v5, "LSmartCardService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isGPACCertificateAllowed - exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 112
    goto :goto_11
.end method

.method public isGPACNFCEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z
    .registers 12
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_6

    .line 81
    const/4 v7, 0x0

    .line 89
    :goto_5
    return-object v7

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    iget-object v5, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v7

    .line 86
    .local v7, "ret":[Z
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v6

    .line 87
    .local v6, "exp":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v1, "LSmartCardService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LSmartCardService]isGPACNFCEventAllowed : return SmartcardError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
