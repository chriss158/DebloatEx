.class public Lcom/android/nfc/ANfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "ANfcWifiProtectedSetup.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KEY_MIN_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ANfcWifiProtectedSetup.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/ANfcWifiProtectedSetup;


# instance fields
.field mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

.field mContext:Landroid/content/Context;

.field mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z

    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 30
    :goto_7
    return-void

    .line 28
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/nfc/ANfcWifiProtectedSetup$ANfcWifiProtectedSetup$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/ANfcWifiProtectedSetup$ANfcWifiProtectedSetup$1;-><init>(Lcom/android/nfc/ANfcWifiProtectedSetup;)V

    iput-object v0, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    .line 26
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z

    return v0
.end method

.method static synthetic ajc$around$com_android_nfc_ANfcWifiProtectedSetup$2$99f8e05eproceed(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_ANfcWifiProtectedSetup$3$973589beproceed(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;
    .registers 4
    .param p0, "this"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$KEY_MIN_LENGTH()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->KEY_MIN_LENGTH:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mCallback(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mContext(Lcom/android/nfc/ANfcWifiProtectedSetup;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$KEY_MIN_LENGTH(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->KEY_MIN_LENGTH:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mCallback(Lcom/android/nfc/ANfcWifiProtectedSetup;Lcom/android/nfc/handover/LHandoverPopupList$Callback;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mContext(Lcom/android/nfc/ANfcWifiProtectedSetup;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;Lcom/android/nfc/handover/LHandoverPopupList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/ANfcWifiProtectedSetup;

    invoke-direct {v0}, Lcom/android/nfc/ANfcWifiProtectedSetup;-><init>()V

    sput-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcWifiProtectedSetup;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/ANfcWifiProtectedSetup;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcWifiProtectedSetup;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_ANfcWifiProtectedSetup"

    sget-object v2, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcWifiProtectedSetup;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcWifiProtectedSetup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_ANfcWifiProtectedSetup$2$99f8e05e(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "intent,userHandle,ajc$aroundClosure"
        value = "(within(NfcWifiProtectedSetup) && (call(* Context.startActivityAsUser(Intent, UserHandle)) && args(intent, userHandle)))"
    .end annotation

    .prologue
    .line 44
    const-string v2, "PopupDialogType"

    .line 45
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 44
    invoke-static {v2, v3}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 45
    if-nez v2, :cond_e

    .line 46
    invoke-static {p1, p2, p3}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$around$com_android_nfc_ANfcWifiProtectedSetup$2$99f8e05eproceed(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 57
    :cond_d
    :goto_d
    return-void

    .line 49
    :cond_e
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v2

    const-string v3, "ANfcWifiProtectedSetup.aj"

    const-string v4, "around() : call(* Context.startActivityAsUser(Intent, UserHandle)"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 52
    .local v0, "currentWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-static {p0}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mContext(Lcom/android/nfc/ANfcWifiProtectedSetup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mCallback(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/android/nfc/handover/LHandoverPopupList;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V

    invoke-static {p0, v2}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;Lcom/android/nfc/handover/LHandoverPopupList;)V

    .line 53
    invoke-static {p0}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList;

    move-result-object v3

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v3, v2}, Lcom/android/nfc/handover/LHandoverPopupList;->ajc$privMethod$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_handover_LHandoverPopupList$requestConnectWifiDeviceConfirmation(Ljava/lang/String;)Z

    move-result v1

    .line 54
    .local v1, "result":Z
    if-nez v1, :cond_d

    .line 55
    invoke-static {p1, p2, p3}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$around$com_android_nfc_ANfcWifiProtectedSetup$2$99f8e05eproceed(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_d

    .line 53
    .end local v1    # "result":Z
    :cond_45
    const-string v2, ""

    goto :goto_3b
.end method

.method public ajc$around$com_android_nfc_ANfcWifiProtectedSetup$3$973589be(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;
    .registers 11
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "message,ajc$aroundClosure"
        value = "(execution(* NfcWifiProtectedSetup.parse(..)) && args(message))"
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-static {p1, p2}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$around$com_android_nfc_ANfcWifiProtectedSetup$3$973589beproceed(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 60
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_15

    .line 61
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    const-string v5, "around() : call(* NfcWifiProtectedSetup.parse(..) : return null"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 77
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :goto_14
    return-object v0

    .line 64
    .restart local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_15
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "around() : call(* NfcWifiProtectedSetup.parse(..) : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/nfc/NfcWifiProtectedSetup;->ajc$get$MAX_NETWORK_KEY_SIZE_BYTES()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_8a

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 72
    :cond_4c
    :goto_4c
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_96

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v3, :cond_96

    .line 73
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 74
    goto :goto_14

    .line 68
    :cond_8a
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_4c

    .line 69
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4c

    .line 76
    :cond_96
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v2

    const-string v3, "ANfcWifiProtectedSetup.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method public ajc$before$com_android_nfc_ANfcWifiProtectedSetup$1$52f58cba(Landroid/nfc/tech/Ndef;Landroid/content/Context;)V
    .registers 6
    .param p1, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "ndef,context"
        value = "(within(NfcWifiProtectedSetup) && (execution(* NfcWifiProtectedSetup.tryNfcWifiSetup(Ndef, Context)) && args(ndef, context)))"
    .end annotation

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z

    const-string v1, "ANfcWifiProtectedSetup.aj"

    const-string v2, "before() : execution(* NfcWifiProtectedSetup.tryNfcWifiSetup(Ndef, Context) : "

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/android/nfc/ANfcWifiProtectedSetup;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method
