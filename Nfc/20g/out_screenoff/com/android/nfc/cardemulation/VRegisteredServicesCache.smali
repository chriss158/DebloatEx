.class public Lcom/android/nfc/cardemulation/VRegisteredServicesCache;
.super Lcom/android/nfc/cardemulation/LRegisteredServicesCache;
.source "VRegisteredServicesCache.java"


# static fields
.field private static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "VRegisteredServicesCache"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    .line 30
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getApduServiceInfoNxp(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    .registers 9
    .param p1, "apduServiceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0xc7

    .line 184
    if-nez p1, :cond_10

    .line 185
    sget-boolean v3, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    const-string v4, "VRegisteredServicesCache"

    const-string v5, "ApduServiceInfoNxp: ApduServiceInfo is null"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 207
    :goto_f
    return-object v0

    .line 189
    :cond_10
    const/4 v1, 0x0

    .line 190
    .local v1, "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    const/4 v0, 0x0

    .line 191
    .local v0, "apduServiceInfoNxp":Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 192
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .end local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    const/4 v2, 0x0

    invoke-direct {v1, v2, v5}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    .line 206
    .restart local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    :goto_1e
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    .end local v0    # "apduServiceInfoNxp":Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    invoke-direct {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfoNxp;-><init>(Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;)V

    .line 207
    .restart local v0    # "apduServiceInfoNxp":Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    goto :goto_f

    .line 195
    :cond_24
    sget-object v3, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v3, v4, :cond_33

    .line 196
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .end local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    .line 197
    .restart local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    goto :goto_1e

    .line 198
    :cond_33
    sget-object v3, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v3, v4, :cond_42

    .line 199
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .end local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    const/4 v2, 0x2

    invoke-direct {v1, v2, v5}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    .line 200
    .restart local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    goto :goto_1e

    .line 202
    :cond_42
    sget-boolean v3, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    const-string v4, "VRegisteredServicesCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getApduServiceInfoNXp: invalid SE Type - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 203
    goto :goto_f
.end method

.method public onNfcEnabled()V
    .registers 2

    .prologue
    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->invalidateCache(I)V

    .line 161
    return-void
.end method
